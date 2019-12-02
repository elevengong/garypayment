<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=yes">
<link href="/favicon.ico" rel="shortcut icon"/>
<title>代理商登录 - <?php echo ($sitename); ?> - 支付技术服务商，让支付简单、专业、快捷！</title>
<link rel="stylesheet" href="<?php echo ($style); ?>css/qietu.css">
<link rel="stylesheet" href="<?php echo ($style); ?>css/animate.min.css"/>
<link rel="stylesheet" href="<?php echo ($style); ?>css/iconfont.css">
<link rel="stylesheet" href="<?php echo ($style); ?>css/style.css">
<link rel="stylesheet" href="<?php echo ($style); ?>css/style_tr.css">
<link rel="stylesheet" href="<?php echo ($style); ?>css/responsive.css">
<script src="<?php echo ($siteurl); ?>Public/Front/login/js/modernizr-2.6.2.min.js"></script>
  <script>
        if (window.top !== window.self) {
            window.top.location = window.location;
        }
    </script>

    <style>
        .bj-3d7bf8{
            background: #3D7BF8;
        }
		#embed-captcha {

			margin: 0 auto;
		}
		.show {
			display: block;
		}
		.hide {
			display: none;
		}
		#notice {
			color: red;
		}
        .geetest_holder.geetest_wind{
             width: 100% !important;
        }
    </style>
</head>

<body>
<div class="header  bj-3d7bf8">
    <div class="wrapper">
        <div class="logo">
            <a href="index.html"><img src="<?php echo ($logo); ?>"/></a>
        </div>
        <div class="nav-wrap">
            <div class="nav">
                <ul>
                    <li class="home_index">
                       <strong><a href="/">首页 </a></strong>
                    </li>
                    <li>
                        <strong><a href="#">产品中心<i class="iconfont icon-jiantou8"></i></a></strong>
                        <dl>
                            <dd><a href="<?php echo ($products); ?>#pro1">聚合收款</a></dd>
                            <dd><a href="<?php echo ($products); ?>#pro2">子商户系统</a></dd>
                            <dd><a href="<?php echo ($products); ?>#pro3">代付系统</a></dd>
                            <dd><a href="<?php echo ($products); ?>#pro4">二维码支付</a></dd>
                        </dl>
                    </li>
                    <!-- <li>
                        <strong><a href="/home/index/help.html">帮助中心</a></strong>
                    </li> -->
                    <li >
                        <strong><a href="#">开发者中心<i class="iconfont icon-jiantou8"></i></a></strong>
                        <dl>
                           <dd><a href="/demo">DEMO体验</a></dd>
                            <dd><a href="<?php echo ($document); ?>">API开发文档</a></dd>
                            <dd><a href="<?php echo ($sdk); ?>">SDK下载</a></dd>
                        </dl>
                    </li>
               <li>
                        <strong><a href="#">业务登陆<i class="iconfont icon-jiantou8"></i></a></strong>
                        <dl>
                           <dd><a href="<?php echo ($user_login); ?>">商户登录</a></dd>
                            <dd><a href="<?php echo ($agent_login); ?>">代理登陆</a></dd>
                        </dl>

                   </li>
                </ul>
            </div>
            <div class="btns">
                <ul>       
                 
                        <li class=" reg"><a href="<?php echo ($register); ?>">商户注册</a></li>
                                    </ul>
            </div>
        </div>
        <div class="gh"><a href="#"></a></div>
    </div>
</div>
<div class=" login2">
	<div class="login-wp">
		<div class="login-hd">
			<h2>代理登录</h2>
		</div>
		<div class="login-bd">
			 <form action="<?php echo ($agent_checklogin); ?>" class="formLogin" method="post" id="defaultForm" >
			<ul>
				<li>
					<input type="text" class="txt" name="username" id="username" maxlength="30" placeholder="请输入帐号" aria-required="true" autocomplete="off" />
				</li>
				<li>
					<input type="password" class="txt" name="password" id="password" placeholder="请输入密码" aria-required="true" autocomplete="off"/>
				</li>
				<!--<li>
					<input type="text" class="txt txt-code" name="varification"  maxlength="5" id="secondCode" placeholder="图形验证码" />
                  <img src="<?php echo ($verifycode); ?>" style="max-width: 134px;" onclick="this.src='/agent_Login_verifycode.html?d='+Math.random();" />
				</li> -->
				
			</ul>
			
			<div class="login-btn">
				<input type="button" class="btn" id="login" value="登录" />
			</div>
              </form>
			<div class="login-ft">
				还没有账号？<a href="javascript:openKefuLink();">立即注册</a>
			</div>
		</div>
	</div>
</div>
<div class="footer">
    <div class="wrapper">
        <dl class="s">
            <dt>联系我们</dt>
            <dd><a href="/home/index/about.html#about2">联系方式</a></dd>
            <dd><img src="<?php echo ($logo); ?>" style="width: 120px" /></dd>
        </dl>
        <dl>
            <dt>产品项目</dt>
        <dd><a href="<?php echo ($products); ?>#pro1">聚合收款</a></dd>
            <dd><a href="<?php echo ($products); ?>#pro2">子商户系统</a></dd>
            <dd><a href="<?php echo ($products); ?>#pro3">代付系统</a></dd>
        </dl>
        <dl>
            <dt>关于公司</dt>
            <dd><a href="<?php echo ($about); ?>">关于我们</a></dd>
            <dd><a href="javascript:openKefuLink();">接口合作</a></dd>
            <dd><a href="javascript:openKefuLink();">流量合作</a></dd>
        </dl>
        <dl>
            <dt>开发者</dt>
            <dd><a href="/demo">DEMO体验</a></dd>
            <dd><a href="<?php echo ($document); ?>">API开发文档</a></dd>
            <dd><a href="<?php echo ($sdk); ?>">SDK下载</a></dd>
        </dl>
        <dl class="s">
            <dt>扫一扫</dt>
            <dd><img src="<?php echo ($style); ?>picture/mobile.png" style="width: 109px;"/></dd>
        </dl>
    </div>
</div>
<div class="copyright">
    <div class="wrapper">
        Copyright © 2018 <?php echo ($sitename); ?> All rights reserved. 版权所有
    </div>
</div>

<script type="text/javascript">
function openKefuLink()
{
window.open("http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($qq); ?>&site=qq&menu=yes",'_blank');
}

</script>
<script type="text/javascript" src="<?php echo ($style); ?>js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<?php echo ($style); ?>js/wow.min.js"></script>
<script type="text/javascript" src="<?php echo ($style); ?>js/script.js"></script>
<script src="<?php echo ($style); ?>js/layer.min.js"></script>
<script src="<?php echo ($style); ?>js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript">
    $('#login').click(function(){
        $('#defaultForm').submit();
    });
</script>
</body>
</html>