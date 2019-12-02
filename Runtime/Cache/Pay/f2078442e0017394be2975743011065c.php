<?php if (!defined('THINK_PATH')) exit();?>

<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <title>向商家付款&shy;</title>
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
        <meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
        <meta name="Keywords" content="" />
        <meta name="Description" content="" />
        <!-- Mobile Devices Support @begin -->
        <meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
        <meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
        <meta content="no-cache" http-equiv="pragma">
        <meta content="0" http-equiv="expires">
        <meta content="telephone=no, address=no" name="format-detection">
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- apple devices fullscreen -->
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
        <link rel="alternate icon" type="image/png" href="/Public/img/head.png">
        <link rel="shortcut icon" href="/Public/img/head.png" type="image/x-icon" />
        <link rel="icon" href="/Public/img/head.png" sizes="32x32" />
        <link rel="icon" href="/Public/img/head.png" sizes="64x64" />
        <link rel="icon" href="/Public/img/head.png" sizes="128x128" />
        <!-- Mobile Devices Support @end -->
        <link rel="stylesheet" href="Public/Pay/css/style.min.css?v=20171124" type="text/css" />
        <link rel="stylesheet" href="Public/Pay/css/base.min.css?v=20171124" />
        <style>
            a[target=_blank][title='站长统计']{
                display: none;
            }
        </style>
    </head>
    <body onselectstart="return true;" ondragstart="return false;" style="-webkit-user-select:none;-moz-user-select:none;-o-user-select:none;user-select:none;">
    <script  type="text/javascript">
        var LC={placeholder:"/Public/Wap/img/placeholder.png"};
    </script>
    <link rel="stylesheet" href="Public/Pay/css/payOrder.min.css?v=20171124" />

    <style>
        .layui-layer-content {
            max-width: 1.48rem!important;
        }
        .pay-gray{
            background: #e5e5e5!important;
        }
    </style>

    <body>
        <section class="pay-container-box bg-white pay-simplified">
            <!-- 门店名称展示 -->
            <div class="shop-name-box">
                <i class="default-shop-icon"></i>
                <span class="shop-name-display single-overflow" id="shop-name-display"><?php echo ($cache['receiver']); ?></span>
            </div>
            <!-- 金额输入（账单金额等） -->
            <div class="input-money-box">
                <div class="js-amount-input pay-amount-box display-flex flex-between-lr flex-horizontal-center s-open-keyboard" data-id="mainMoney">
                    <label class="pay-money-desc" for="">金额</label>
                    <span class="js-input-hint no-pay-amount hide">￥0.00</span>
                    <span class="js-input-amount has-pay-amount">
                        <em>￥</em>
                        <em id="mainMoney"></em>
                        <em class="pay-money-cursor"></em>
                    </span>
                </div>
            </div>

            <!-- 支付方式 -->
            <div class="pay-way-box">
                <?php if(is_array($products)): $key = 0; $__LIST__ = $products;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$product): $mod = ($key % 2 );++$key;?><div class="<?php if($key == 1): ?>active<?php endif; ?> pay-way-item display-flex flex-between-lr flex-horizontal-center" id="wechatRadio" data-code="<?php echo ($product['code']); ?>" data-id="<?php echo ($product['id']); ?>">
                        <span>
                            <i class="<?php echo ($product["icon"]); ?>"></i>
                            <em class="pay-way-desc"><?php echo ($product["name"]); ?></em>
                        </span>
                    <i class="select-icon"></i>
                </div><?php endforeach; endif; else: echo "" ;endif; ?>
                <!-- <div class="pay-way-item display-flex flex-between-lr flex-horizontal-center" id="vipRadio">
                        <span>
                            <i class="member-card-icon"></i>
                            <em class="pay-way-desc">会员卡支付</em>
                            <em class="member-activity-desc single-overflow"></em>
                        </span>
                    <i class="select-icon"></i>
                </div> -->
            </div>

            <!-- 会员卡余额 -->
            
            <!--备注 部分 start-->
            <div class="s-remark">
                <div class="s-remark-port">
                    <span class="s-remark-title">备注:</span>
                    <input class="s-remark-info" id="remark" type="text" placeholder="请添加备注信息" maxlength="16">
                </div>
            </div>
            <!--备注 部分 end-->

            <!--按钮 部分 start-->
            <div class="s-pay-btn" id="s-pay-btn">确认支付</div>
            <!--按钮 部分 end-->
        </section>

        <!-- 自定义键盘 start 加上x-mask-show显示-->
        <div id="keyBoard" class="x-mask-box x-mask-show" data-id="mainMoney" style="z-index:9;background-color: rgba(0,0,0,0);height:auto;" v-cloak>
            <div class="x-slide-box pop-up-show">
                <div class="x-key-board">
                    <div class="row">
                        <div class="item js-key" data-number="1">1</div>
                        <div class="item js-key" data-number="4">4</div>
                        <div class="item js-key" data-number="7">7</div>
                        <div class="item js-key" data-number=".">.</div>
                    </div>
                    <div class="row" style="width: 50%">
                        <div class="display-flex">
                            <div class="item js-key" style="width: 50%" data-number="2">2</div>
                            <div class="item js-key" style="width: 50%" data-number="3">3</div>
                        </div>
                        <div class="display-flex">
                            <div class="item js-key" style="width: 50%" data-number="5">5</div>
                            <div class="item js-key" style="width: 50%" data-number="6">6</div>
                        </div>
                        <div class="display-flex">
                            <div class="item js-key" style="width: 50%" data-number="8">8</div>
                            <div class="item js-key" style="width: 50%" data-number="9">9</div>
                        </div>
                        <div class="display-flex">
                            <div class="item js-key" data-number="0">0</div>
                            <div class="item js-key s-pack-key" data-number="down"><i class="keyboard-icon"></i></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="item no-border-right js-key x-key-del" data-number="×">
                            <i class="back-icon"></i>
                        </div>
                        <div class="item no-border-bottom no-border-right x-key-ok" data-number="ok" id="confirm_pay">
                            <span style="line-height: 1.2; font-size: .2rem;">确<br>认<br>支<br>付</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 自定义键盘 end -->

        <!-- 商户会员卡余额不足 -->
        <div class="pop-hint-mask" id="no-remaining">
            <div class="pop-hint-box">
                <i class="close-icon" data-id="no-remaining"></i>
                <i class="recharge-hint-icon"></i>
                <p class="pop-hint-message">会员卡余额不足，请充值</p>
                <span class="pop-handle-button js-goUrl" data-url="/Wap/Member/cardRecharge/wecha_id/UID/token/16155248/store_id/249370/tn/lifecircle/subid/0/cashier_id/0/subid/0">立即充值</span>
            </div>
        </div>

        <!-- 未激活会员卡 -->
        <div class="pop-hint-mask" id="lead-active">
            <div class="pop-hint-box">
                <i class="close-icon" data-id="lead-active"></i>
                <i class="active-hint-icon"></i>
                <p class="pop-hint-message">您还未激活本店的会员卡</p>
                <span class="pop-handle-button js-goUrl" data-url="/Wap/Member/activateCard/wecha_id/UID/token/16155248/store_id/249370/subid/0/cashier_id/0/subid/0">15秒快速激活会员卡</span>
            </div>
        </div>

        <!-- 辅助a标签，跳转到详情页面，为何这样操作，请看goDetailPage方法的注释 -->
        <a id="payDetailLink" href="" style="visibility: hidden;"></a>
        <form action="<?php echo U('Charges/checkout');?>" style="display: none;" method="post" id="payForm">
            <input type="text" name="remarks" id="remarks">
            <input type="text" name="amount" id="amount">
            <input type="text" name="mchid" id="mchid" value="<?php echo ($cache['id']+10000); ?>">
            <input type="text" name="bankcode" id="bankcode">
        </form>
    </body>
  
    <script type="text/javascript" src="Public/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="Public/js/layer.js?v=20171124"></script>
    <script type="text/javascript" src="Public/Pay/js/payOrderSimpfilied.min.js?v=20171124"></script>
    <script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script>
    // var orderSaveUrl = "<?php echo U('Pay/Charges/checkout');?>";
    var auto_wiping_zero = 1
    $('#s-pay-btn, #confirm_pay').click(function() {

    })
    </script>
</html>