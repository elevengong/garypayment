<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title><?php echo ($sitename); ?>---管理</title>
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
            <div class="col-sm-12">
			<form class="layui-form" action="" id="form" autocomplete="off" >
				<input type="hidden" name="orderid" value="<?php echo ($order["id"]); ?>">
			  <div class="layui-form-item">
				<label class="layui-form-label">订单号：</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" value="<?php echo ($order["pay_orderid"]); ?>" readonly>
				</div>
			  </div>
				<div class="layui-form-item">
					<label class="layui-form-label">订单金额：</label>
					<div class="layui-input-inline">
						<input type="text" class="layui-input" value="<?php echo ($order["pay_amount"]); ?>" readonly>
					</div>
				</div>
				<?php if($verifyGoogle and $verifysms): ?><div class="layui-form-item" id="df_auto_check">
					<label class="layui-form-label">验证方式：</label>
					<div class="layui-input-block">
						<input type="radio" name="auth_type" lay-filter="auth_type" value="1" title="谷歌安全码" checked>
						<input type="radio" name="auth_type" lay-filter="auth_type" value="0" title="短信验证码">
					</div>
				</div>
					<?php else: ?>
					<input type="hidden" name="auth_type" value="<?php echo ($auth_type); ?>"><?php endif; ?>
				<?php if(($verifyGoogle) == "1"): ?><div class="layui-form-item" id="auth_google">
					<label class="layui-form-label">谷歌安全码：</label>
					<div class="layui-input-inline">
						<input type="text" name="google_code" autocomplete="off"
							   placeholder="请输入谷歌安全码" class="layui-input" value="">
					</div>
				</div><?php endif; ?>
				<?php if(($verifysms) == "0"): ?><div class="layui-form-item" id="auth_sms" <?php if($verifyGoogle and $verifysms): ?>style="display: none"<?php endif; ?>>
					<label class="layui-form-label">手机验证码：</label>
					<div class="layui-input-inline">
						<input type="text" name="code"  autocomplete="off"
							   placeholder="请输入短信验证码" class="layui-input" value="">
					</div>
					<div class="layui-input-inline">
						<a href="javascript:;" id="sendBtn" data-mobile="<?php echo ($mobile); ?>" class="layui-btn">发送验证码</a>
					</div>
				</div><?php endif; ?>
			<div class="layui-form-item">
				<div class="layui-input-block">
				  	<button class="layui-btn" lay-submit="submit" lay-filter="save">确定</button>
				</div>
			</div>
			</form>
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
var issubmit=false;
layui.use(['layer', 'form','laydate'], function(){
  var form = layui.form
  ,laydate = layui.laydate
  ,layer = layui.layer;

    //常规用法
    laydate.render({
        elem: '#createtime',
		type: 'datetime',
        theme: 'molv',
        range: '|'
    });
  //监听提交
  form.on('submit(save)', function(data){
      layer.confirm('确认要将订单【<?php echo ($order["pay_orderid"]); ?>】设置为已支付吗？该操作不可恢复，请谨慎操作！',{
          btn: ['确定','取消'] //按钮
      }, function(){
          $.ajax({
              url:"<?php echo U('Order/setOrderPaid');?>",
              type:"post",
              data:$('#form').serialize(),
              success:function(res){
                  if(res.status){
                      layer.alert(res.msg? res.msg :"设置成功！", {icon: 6},function () {
                          parent.location.reload();
                          var index = parent.layer.getFrameIndex(window.name);
                          parent.layer.close(index);
                      });
                  }else{
                      layer.alert(res.msg, {icon: 5},function (index) {
                          layer.close(index)
                      });
                  }
              }
          });
      }, function(){
      });
   	 return false;
  });
    form.on('radio(auth_type)',function(data){
        if(data.value == 1) {
            $('#auth_google').show();
            $('#auth_sms').hide();
        } else {
            $('#auth_google').hide();
            $('#auth_sms').show();
        }
    });
});
</script>
<script>
    $(function (){
        var sendUrl = "<?php echo ($sendUrl); ?>";
        // 手机验证码发送
        $('#sendBtn').click(function(){
            var mobile = $(this).data('mobile');
            if(mobile == '') {
                layer.alert('请先绑定手机号码',{icon: 5}, function() {
                    location.href = "<?php echo U('System/bindMobileShow');?>";
                });
                return;
			}
            sendSms(this, mobile, sendUrl);
        });
    })
</script>
</body>
</html>