<?php
/**
 * Created by PhpStorm.
 * Date: 2018-10-30
 * Time: 12:00
 */
namespace Pay\Controller;

class AliscanController extends PayController
{
    public function __construct()
    {
        parent::__construct();
    }

    //支付
    public function Pay($array)
    {
		$orderid = I("request.pay_orderid");
        $body = I('request.pay_productname');
        $notifyurl = $this->_site . 'Pay_Aliscan_notifyurl.html'; //异步通知
        $callbackurl = $this->_site . 'Pay_Aliscan_callbackurl.html'; //返回通知

        $parameter = array(
            'code' => 'ALISCAN', // 通道名称
            'title' => '支付宝官方扫码',
            'exchange' => 1, // 金额比例
            'gateway' => '',
            'orderid' => '',
            'out_trade_id' => $orderid,
            'body'=>$body,
            'channel'=>$array
        );

        // 订单号，可以为空，如果为空，由系统统一的生成
        $return = $this->orderadd($parameter);

       $data = array(
        'merchantId' => '554444',
         'tranType' => '1002',
         'merReqNo' =>  $return['orderid'],
        'pordInfo' => '团购商品',
         'amt' => sprintf('%.2f', $return['amount'])*100,
        'notifyUrl' => $this->_site . 'Pay_Aliscan_notifyurl.html',
        'returnUrl' => $this->_site . 'Pay_Aliscan_callbackurl.html',
         'sign' => md5($return['orderid'].'123456')
        );

         $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'http://123456');
       curl_setopt($ch, CURLOPT_POST, 1);
       curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
      $curl_result = curl_exec($ch);
        curl_close($ch);

        $json = json_decode($curl_result);

       // print_r(json_encode($data));
       // print_r(json_encode($curl_result));
      // exit; 
		
		 if($json->respCode != '0000') exit($json->respDesc);
		// header('Location: '.$json->payUrl); //去掉本行注释可直接转跳至二维码 可唤醒支付宝APP
      
      //以下为自定义支付页 调用上游json返回信息
                import("Vendor.phpqrcode.phpqrcode",'',".php");
                $url = $json->payUrl;
                $QR = "Uploads/codepay/". $return['orderid'] . ".png";//已经生成的原始二维码图
                \QRcode::png($url, $QR, "L", 20);
                $this->assign("imgurl", '/'.$QR);
                $this->assign('params',$return);
                $this->assign('orderid',$return['orderid']);
                $this->assign('money',sprintf('%.2f',$return['amount']));
                $this->display("WeiXin/alipay");

    }


    //同步通知
    public function callbackurl()
    {
        $Order = M("Order");
        $pay_status = $Order->where(['pay_orderid' => $_REQUEST["merReqNo"]])->getField("pay_status");
        if($pay_status <> 0){
            $this->EditMoney($_REQUEST['merReqNo'], 'Aliscan', 1); //第三个参数为1时，页面会跳转到订单信息里面的 pay_callbackurl
        }else{
            exit("交易成功！");
        }

    }

    //异步通知
    public function notifyurl()
    {
        $log = file_get_contents('php://input');
        file_put_contents('log.txt', $log.PHP_EOL, FILE_APPEND);

        $data = array(
            'merReqNo' => !isset($_REQUEST['merReqNo']) ? '' : trim($_REQUEST['merReqNo']),
            'respCode' => !isset($_REQUEST['respCode']) ? '' : trim($_REQUEST['respCode']),
            'respDesc' => !isset($_REQUEST['respDesc']) ? '' : trim($_REQUEST['respDesc']),
            'amt' => !isset($_REQUEST['amt']) ? '' : trim($_REQUEST['amt']),
            'tranTime' => !isset($_REQUEST['tranTime']) ? '' : trim($_REQUEST['tranTime']),
            'tranType' => !isset($_REQUEST['tranType']) ? '' : trim($_REQUEST['tranType']),
            'msgExt' => !isset($_REQUEST['msgExt']) ? '' : trim($_REQUEST['msgExt']),
            'serverRspNo' => !isset($_REQUEST['serverRspNo']) ? '' : trim($_REQUEST['serverRspNo']),
            'sign' => !isset($_REQUEST['sign']) ? '' : trim($_REQUEST['sign'])
        );

        $sign = md5($data['serverRspNo'].'123456');
        if(strtolower($data['sign']) != $sign) exit('sign err');
        if($data['respCode'] != '0000') exit('trade fail');

        $this->EditMoney($data['merReqNo'], 'Aliscan', 0);

        exit("success");
    }

    function getIP() { 
        if (isset($_SERVER)) { 
        if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) { 
        $realip = $_SERVER['HTTP_X_FORWARDED_FOR']; 
        } elseif (isset($_SERVER['HTTP_CLIENT_IP'])) { 
        $realip = $_SERVER['HTTP_CLIENT_IP']; 
        } else { 
        $realip = $_SERVER['REMOTE_ADDR']; 
        } 
        } else { 
        if (getenv("HTTP_X_FORWARDED_FOR")) { 
        $realip = getenv( "HTTP_X_FORWARDED_FOR"); 
        } elseif (getenv("HTTP_CLIENT_IP")) { 
        $realip = getenv("HTTP_CLIENT_IP"); 
        } else { 
        $realip = getenv("REMOTE_ADDR"); 
        } 
        } 
        return $realip; 
    }
}
