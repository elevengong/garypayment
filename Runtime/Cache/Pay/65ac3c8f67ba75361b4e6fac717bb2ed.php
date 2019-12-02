<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<meta name="format-detection" content="email=no" />
<!-- 启用360浏览器的极速模式(webkit) -->
<meta name="renderer" content="webkit">
<!-- 避免IE使用兼容模式 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 针对手持设备优化，主要是针对一些老的不识别viewport的浏览器，比如黑莓 -->
<meta name="HandheldFriendly" content="true">
<!-- 微软的老式浏览器 -->
<meta name="MobileOptimized" content="320">
<!-- uc强制竖屏 -->
<meta name="screen-orientation" content="portrait">
<!-- QQ强制竖屏 -->
<meta name="x5-orientation" content="portrait">
<!-- UC强制全屏 -->
<meta name="full-screen" content="yes">
<!-- QQ强制全屏 -->
<meta name="x5-fullscreen" content="true">
<!-- UC应用模式 -->
<meta name="browsermode" content="application">
<!-- QQ应用模式 -->
<meta name="x5-page-mode" content="app">
<!--这meta的作用就是删除默认的苹果工具栏和菜单栏-->
<meta name="apple-mobile-web-app-capable" content="yes">
<!--网站开启对web app程序的支持-->
<meta name="apple-touch-fullscreen" content="yes">
<!--在web app应用下状态条（屏幕顶部条）的颜色-->
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<!-- windows phone 点击无高光 -->
<meta name="msapplication-tap-highlight" content="no">
<!--移动web页面是否自动探测电话号码-->
<meta http-equiv="x-rim-auto-match" content="none">
<!--移动端版本兼容 start -->
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0" name="viewport" />
<!--移动端版本兼容 end -->
    <title>微信扫码支付</title>

    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">
    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="/Public/zfb/js/assets/i/favicon.png">

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="/Public/zfb/js/assets/i/app-icon72x72@2x.png">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="apple-touch-icon-precomposed" href="/Public/zfb/js/assets/i/app-icon72x72@2x.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="/Public/zfb/js/assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">

    <link rel="stylesheet" href="/Public/zfb/js/assets/css/amazeui.min.css">
    <link rel="stylesheet" href="/Public/zfb/js/assets/css/wx.css">
</head>
<body>
    <header class="wepay">
        <h1><a href="#" class="am-text-ir am-center">微信支付</a></h1>
    </header>
    <div class="am-g am-g-fixed am-margin-vertical wx-box">
        <div class="am-u-md-8 am-u-sm-12 am-u-sm-centered am-margin-vertical am-text-center">
            </div>

            <div class="am-u-md-8 am-u-sm-12 am-u-sm-centered am-margin-vertical am-text-center"><p class="am-text-xxxl">￥<?php echo ($money); ?></p></div>
      
              
            <div class="am-u-md-8 am-u-sm-12 am-u-sm-centered am-margin-vertical am-text-center wx-code" id="qrcode">
			<img onclick="$('#use').hide()" id="use" src="/Public/zfb/js/assets/img/wx.png"
                         style="position: absolute;top: 50%;left: 50%;width:32px;height:32px;margin-left: -16px;margin-top: -16px">
			<img width="210" height="210" src="<?php echo ($siteurl); echo ($imgurl); ?>">
			</div>

            <div class="am-u-md-8 am-u-sm-12 am-u-sm-centered am-margin-vertical am-text-center">
                <img src="/Public/zfb/js/assets/img/wxsm.png" alt="请使用微信扫描
二维码以完成支付"><br>
<!--<div class="tps_btn" style="padding-top: 10px;">
  <a href="<?php echo ($zfbpayUrl); ?>" target="_blank" style="color: #fff;text-decoration: none; text-align: center;padding: .55rem 0; display: inline-block; width: 41%; border-radius: .3rem; font-size: 14px;background-color: #428bca; border: 1px solid #428bca;letter-spacing:normal;font-weight: normal">立即启动支付宝APP支付</a>
              </div> -->
<div class="foot"> <p>手机用户可微信APP扫码支付</p>
            <p>微信扫码不支持相册或截图支付</p>
</div>
            </div>
            <div class="am-u-md-8 am-u-sm-12 am-u-sm-centered am-margin-vertical am-text-center">
                      <hr>
                <div class="foot">
                   <div class="am-text-center">支付订单号：<?php echo ($params["out_trade_id"]); ?></div>
                </div>
				 <hr>
                <div class="foot">
                   <div class="am-text-center">订单时间：<?php echo ($params['datetime']); ?></div>
                </div>
                <hr>             
                <div class="foot">
                    <div class="am-text-center">请在订单提交后3分钟内完成支付</div> 
                </div>
                <hr>
            </div>
        </div>
    <!--在这里编写你的代码-->
    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="/Public/zfb/js/assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <!--[if lte IE 8 ]>
    <script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
    <script src="static/js/assets/js/amazeui.ie8polyfill.min.js"></script>
    <![endif]-->
<script src="/Public/Front/js/jquery.min.js"></script>
<script src="/Public/Front/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        var r = window.setInterval(function () {
            $.ajax({
                type: 'POST',
                url: '<?php echo U("Pay/checkstatus");?>',
                data: "orderid=<?php echo ($orderid); ?>",
                dataType: 'json',
                success: function (str) {
                    if (str.status == "ok") {
                        $("#ewm").attr("src", "Uploads/successpay.png");
                        window.clearInterval(r);
                        window.location.href = str.callback;
                    }
                }
            });
        }, 2000);
    });
</script>
</body>
</html>