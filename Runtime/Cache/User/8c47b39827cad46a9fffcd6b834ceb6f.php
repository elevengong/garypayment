<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title><?php echo ($sitename); ?> - 管理中心</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="/Public/Front/css/bootstrap.min.css" rel="stylesheet">
    <link href="/Public/Front/css/font-awesome.min.css" rel="stylesheet">
    <link href="/Public/Front/css/animate.css" rel="stylesheet">
    <link href="/Public/Front/css/style.css" rel="stylesheet">
   <link href="/Public/Front/css/zuy.css" rel="stylesheet">
    <link rel="stylesheet" href="/Public/Front/js/plugins/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/Public/Front/iconfont/iconfont.css"/>
    <style>
        .layui-form-label {width:110px;padding:4px}
        .layui-form-item .layui-form-checkbox[lay-skin="primary"]{margin-top:0;}
        .layui-form-switch {width:54px;margin-top:0px;}
    </style>
<body class="gray-bg">
<div class="wrapper wrapper-content animated">
<div class="row">
  <div class="col-md-12">
    <div class="ibox float-e-margins">
      <!--条件查询-->
      <div class="ibox-title">
        <h5>下级商户订单管理</h5>
        <div class="ibox-tools">
          <i class="layui-icon" onclick="location.replace(location.href);" title="刷新"
             style="cursor:pointer;">ဂ</i>
        </div>
      </div>
      <!--条件查询-->
      <div class="ibox-content">
        <form class="layui-form" action="" method="get" autocomplete="off" id="orderform">
          <input type="hidden" name="m" value="User">
          <input type="hidden" name="c" value="Order">
          <input type="hidden" name="a" value="index">
          <input type="hidden" name="p" value="1">
          <div class="layui-form-item">
            <div class="layui-inline">
              <div class="layui-input-inline">
                <input type="text" name="memberid" autocomplete="off" placeholder="请输入商户号"
                       class="layui-input" value="<?php echo ($_GET['memberid']); ?>">
              </div>
              <div class="layui-input-inline">
                <input type="text" name="orderid" autocomplete="off" placeholder="请输入订单号"
                       class="layui-input" value="<?php echo ($_GET['orderid']); ?>">
              </div>
              <div class="layui-input-inline">
                <input type="text" name="body" autocomplete="off" placeholder="请输入订单描述"
                       class="layui-input" value="<?php echo ($_GET['body']); ?>">
              </div>
             
              <div class="layui-input-inline">
                <input type="text" class="layui-input" name="createtime" id="createtime"
                       placeholder="创建起始时间" value="<?php echo ($_GET['createtime']); ?>">
              </div>
              <div class="layui-input-inline">
                <input type="text" class="layui-input" name="successtime" id="successtime"
                       placeholder="完成起始时间" value="<?php echo ($_GET['successtime']); ?>">
              </div>
            </div>

            <div class="layui-inline">
              <button type="submit" class="layui-btn"><span
                      class="glyphicon glyphicon-search"></span> 搜索
              </button>
              <a href="javascript:;" id="export" class="layui-btn layui-btn-danger"><span class="glyphicon glyphicon-export"></span> 导出数据</a>
            </div>
          </div>
        </form>
        <?php if(!$_GET['createtime'] AND !$_GET['successtime']): ?><blockquote class="layui-elem-quote" style="font-size:14px;padding:8px;">今日交易总额：<span class="label label-info"><?php echo ($stat["todaysum"]); ?>元</span>  今日交易笔数：<span class="label label-danger"><?php echo ($stat["todaysuccesscount"]); ?></span>
            交易总金额：<span class="label label-info"><?php echo ($stat["totalsum"]); ?>元</span> 总订单数：<span class="label label-danger"><?php echo ($stat["totalsuccesscount"]); ?></span>
          </blockquote><?php endif; ?>
        <?php if($_GET['createtime'] OR $_GET['successtime']): ?><blockquote class="layui-elem-quote" style="font-size:14px;padding:8px;">查询总计交易金额：<span class="label label-info"><?php echo ($sum["pay_amount"]); ?>元</span>  查询总计订单数：<span class="label label-info"><?php echo ($sum["success_count"]); ?></span>
          </blockquote><?php endif; ?>
        <!--交易列表-->
        <table class="layui-table" lay-data="{width:'100%',limit:<?php echo ($rows); ?>,id:'userData'}">
          <thead>
          <tr>
            <th lay-data="{field:'key',width:90}">序号</th>
            <th lay-data="{field:'ddlx', width:60}">类型</th>
            <th lay-data="{field:'out_trade_id', width:240,style:'color:#060;'}">订单号</th>
            <th lay-data="{field:'memberid', width:110}">商户编号</th>
            <th lay-data="{field:'amount', width:100,style:'color:#060;'}">交易金额</th>
            <th lay-data="{field:'rate', width:90}">手续费</th>
            <th lay-data="{field:'actualamount', width:100,style:'color:#C00;'}">实际金额</th>
            <th lay-data="{field:'applydate', width:160}">提交时间</th>
            <th lay-data="{field:'successdate', width:160}">成功时间</th>
            <!--<th lay-data="{field:'zh_tongdao', width:120}">支付通道</th> -->
            <th lay-data="{field:'bankname', width:120}">支付银行</th>
            <!--<th lay-data="{field:'body', width:150}">订单描述</th> -->
            <th lay-data="{field:'status', width:110}">状态</th>
            <th lay-data="{field:'op',width:130}">操作</th>
          </tr>
          </thead>
          <tbody>
          <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
              <td><?php echo ($vo["id"]); ?></td>
              <td>
                <?php switch($vo[ddlx]): case "1": ?>充值<?php break;?>
                  <?php default: ?>收款<?php endswitch;?>
              </td>
              <td style="text-align:center; color:#090;"><?php echo ($vo[out_trade_id]?$vo[out_trade_id]:$vo[pay_orderid]); ?>
                <?php if($vo["del"] == 1): ?><span style="color: #f00;">×</span><?php endif; ?>
              </td>
              <td style="text-align:center;"><?php echo ($vo["pay_memberid"]); ?></td>
              <td style="text-align:center; color:#060"><?php echo ($vo["pay_amount"]); ?></td>
              <td style="text-align:center; color:#666"><?php echo ($vo["pay_poundage"]); ?></td>
              <td style="text-align:center; color:#C00"><?php echo ($vo["pay_actualamount"]); ?></td>
              <td style="text-align:center;"><?php echo (date('Y-m-d H:i:s',$vo["pay_applydate"])); ?></td>
              <td style="text-align:center;"><?php if($vo[pay_successdate]): echo (date('Y-m-d H:i:s',$vo["pay_successdate"])); else: ?> ---<?php endif; ?></td>
              <!--<td style="text-align:center;"><?php echo ($vo["pay_zh_tongdao"]); ?></td>-->
              <td style="text-align:center;"><?php echo ($vo["pay_bankname"]); ?></td>
              <!--<td style="text-align:center;"><?php echo ($vo["pay_productname"]); ?></td> -->
              <td style="text-align:center; color:#369"><?php echo (status($vo['pay_status'])); ?></td>
              <td style="text-align:center;">
                <button style="text-align:center;" class="layui-btn layui-btn-small" onclick="order_view('订单号:<?php echo ($vo["out_trade_id"]); ?>','<?php echo U('User/Order/show',['oid'=>$vo[id]]);?>',780,650)">查看</button>
              </td>
            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
          </tbody>
        </table>
        <!--交易列表-->
        <div class="page">
            
            <form class="layui-form" action="" method="get" id="pageForm" autocomplete="off">     
              <?php echo ($page); ?>                            
                <select name="rows" style="height: 32px;" id="pageList" lay-ignore >
                    <option value="">显示条数</option>
                    <option <?php if($_GET[rows] != '' && $_GET[rows] == 15): ?>selected<?php endif; ?> value="15">15条</option>
                    <option <?php if($_GET[rows] == 30): ?>selected<?php endif; ?> value="30">30条</option>
                    <option <?php if($_GET[rows] == 50): ?>selected<?php endif; ?> value="50">50条</option>
                    <option <?php if($_GET[rows] == 80): ?>selected<?php endif; ?> value="80">80条</option>
                    <option <?php if($_GET[rows] == 100): ?>selected<?php endif; ?> value="100">100条</option>
                    <option <?php if($_GET[rows] == 1000): ?>selected<?php endif; ?> value="1000">1000条</option>
                </select>
               

            </form>
          
        </div> 
      </div>
    </div>
  </div>
</div>
</div>
<script src="/Public/Front/js/jquery.min.js"></script>
<script src="/Public/Front/js/bootstrap.min.js"></script>
<script src="/Public/Front/js/plugins/peity/jquery.peity.min.js"></script>
<script src="/Public/Front/js/content.js"></script>
<script src="/Public/Front/js/plugins/layui/layui.js" charset="utf-8"></script>
<script src="/Public/Front/js/x-layui.js" charset="utf-8"></script>
<script src="/Public/Front/js/Util.js" charset="utf-8"></script>
<script>
    layui.use(['laydate', 'laypage', 'layer', 'table', 'form'], function() {
        var laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            ,layer = layui.layer //弹层
            ,form = layui.form //表单
            , table = layui.table; //表格
        //日期时间范围
        laydate.render({
            elem: '#createtime'
            , type: 'datetime'
            ,theme: 'molv'
            , range: '|'
        });
        //日期时间范围
        laydate.render({
            elem: '#successtime'
            , type: 'datetime'
            ,theme: 'molv'
            , range: '|'
        });
    });
    /*订单-查看*/
    function order_view(title,url,w,h){
        x_admin_show(title,url,w,h);
    }
    $('#pageList').change(function(){
        $('#pageForm').submit();
    });
    $('#export').on('click',function(){
        window.location.href
            ="<?php echo U('User/Agent/exportorder',array('memberid'=>$_GET['memberid'],'orderid'=>$_GET[orderid],'createtime'=>$_GET[createtime],'successtime'=>$_GET[successtime],'tongdao'=>$_GET[tongdao],'bank'=>$_GET[bank],'status'=>$_GET[status],'ddlx'=>$_GET[ddlx]));?>";
    });
</script>
</body>
</html>