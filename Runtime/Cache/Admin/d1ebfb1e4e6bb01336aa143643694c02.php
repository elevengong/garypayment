<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title><?php echo C("WEB_TITLE");?></title>
<link rel="shortcut icon" href="favicon.ico">
<link href="/Public/Front/css/bootstrap.min.css" rel="stylesheet">
<link href="/Public/Front/css/font-awesome.min.css" rel="stylesheet">
<link href="/Public/Front/css/animate.css" rel="stylesheet">
<link href="/Public/Front/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="/Public/Front/js/plugins/layui/css/layui.css">
<style>
.layui-form-label {width:110px;padding:4px}
</style>
<body>
    <div class="wrapper wrapper-content animated">
        <div class="row">
            <div class="col-sm-12">
			<form class="layui-form" action="" id="payaccess">
				<input type="hidden" name="id" value="<?php echo ($list["id"]); ?>">
				<div class="layui-form-item">
					<label class="layui-form-label">中文名称：</label>
					<div class="layui-input-inline">
						<input type="text" name="title" lay-verify="required" autocomplete="off" value="<?php echo ($list["title"]); ?>" placeholder="中文名称" class="layui-input">
					</div>
				</div>

				<div class="layui-form-item">
					<label class="layui-form-label">控制器名称：</label>
					<div class="layui-input-inline">
						<input type="text" name="code" lay-verify="required" placeholder="控制器名称" value="<?php echo ($list["code"]); ?>" style="text-transform:capitalize;" autocomplete="off" class="layui-input">
					</div>
					<div class="layui-form-mid layui-word-aux">注意：即支付接口类名称（不含Controller）</div>
				</div>
			  

				<div class="layui-form-item">
					<label class="layui-form-label">商户号(MCHID)：</label>
					<div class="layui-input-block">
						<input type="text"  name="mch_id" value="<?php echo ($list["mch_id"]); ?>" autocomplete="off" class="layui-input">
					</div>
				</div>

				<div class="layui-form-item">
					<label class="layui-form-label">加密密钥：</label>
					<div class="layui-input-block">
						<input type="text" placeholder="MD5KEY(打开证书的秘钥)" name="signkey" value="<?php echo ($list["signkey"]); ?>" autocomplete="off" class="layui-input">
					</div>
				</div>
              
				<div class="layui-form-item">
					<label class="layui-form-label">APPID：</label>
					<div class="layui-input-block">
						<input type="text" name="appid" autocomplete="off" value="<?php echo ($list["appid"]); ?>" placeholder="应用APPID或商家账号" class="layui-input">
					</div>
				</div>
             
				<div class="layui-form-item">
					<label class="layui-form-label">APPSECRET：</label>
					<div class="layui-input-block">
						<input type="text" name="appsecret" autocomplete="off" value="<?php echo ($list["appsecret"]); ?>" placeholder="应用密码" class="layui-input">
					</div>
				</div>
	
				<div class="layui-form-item">
					<label class="layui-form-label">加密(解密)公钥：</label>
					<div class="layui-input-block">
						<textarea name="public_key"   placeholder="请输入RSA，ASE的秘钥内容（或存放地址）" class="layui-textarea"><?php echo ($list["public_key"]); ?></textarea>
					</div>
				</div>
				
				<div class="layui-form-item">
					<label class="layui-form-label">加密(解密)私钥：</label>
					<div class="layui-input-block">
						<textarea name="private_key"  placeholder="请输入RSA，ASE的秘钥内容（或存放地址）" class="layui-textarea"><?php echo ($list["private_key"]); ?></textarea>
					</div>
				</div>


				<div class="layui-form-item">
					<label class="layui-form-label">请求代付地址：</label>
					<div class="layui-input-block">
						<input type="text" name="exec_gateway" placeholder="" value="<?php echo ($list["exec_gateway"]); ?>" autocomplete="off" class="layui-input">
					</div>
				</div>

				<div class="layui-form-item">
					<label class="layui-form-label">代付查询地址：</label>
					<div class="layui-input-block">
						<input type="text" name="query_gateway" value="<?php echo ($list["query_gateway"]); ?>" autocomplete="off" class="layui-input">
					</div>
				</div>
			 
				<div class="layui-form-item">
					<label class="layui-form-label">服务器通知：</label>
					<div class="layui-input-block">
						<input type="text" name="serverreturn" value="<?php echo ($list["serverreturn"]); ?>"  placeholder="" autocomplete="off" class="layui-input">
					</div>
				</div>
			
		
				<div class="layui-form-item">
					<label class="layui-form-label">防封域名：</label>
					<div class="layui-input-block">
						<input type="text" name="unlockdomain" value="<?php echo ($list["unlockdomain"]); ?>" placeholder="防封域名" value="" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">成本费率：</label>
					<div class="layui-input-block">
						<input type="text" name="cost_rate" value="<?php echo ($list["cost_rate"]); ?>" placeholder="0.000" value="" autocomplete="off" class="layui-input">
					</div>
				</div>

				<div class="layui-form-item">
					<label class="layui-form-label">费率类型：</label>
					<div class="layui-input-block">
						<input type="radio" name="rate_type" value="0" title="单笔" <?php if($list[rate_type] == 0): ?>checked<?php endif; ?> checked="" >
						<input type="radio" name="rate_type" value="1" title="比例" <?php if($list[rate_type] == 1): ?>checked<?php endif; ?> >
					</div>
				</div>

				<div class="layui-form-item">
					<label class="layui-form-label">是否默认：</label>
					<div class="layui-input-block">
						<input type="radio" name="is_default" value="1" title="开启" <?php if($list[is_default] == 1): ?>checked<?php endif; ?> checked="" >
						<input type="radio" name="is_default" value="0" title="关闭" <?php if($list[is_default] == 0): ?>checked<?php endif; ?> >
					</div>
				</div>

			  <div class="layui-form-item">
				<label class="layui-form-label">状态：</label>
				<div class="layui-input-block">
				  <input type="radio" name="status"  value="1" title="开启"  <?php if($list[status] == 1): ?>checked<?php endif; ?> checked="">
				  <input type="radio" name="status"  value="0" title="关闭" <?php if($list[status] == 0): ?>checked<?php endif; ?> >
				</div>
			  </div>
			  
			  <div class="layui-form-item">
				<div class="layui-input-block">
				  <button class="layui-btn" lay-submit="submit" lay-filter="add">提交保存</button>
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
<script>
layui.use(['layer', 'form'], function(){
  var form = layui.form
  ,layer = layui.layer;
  
  //监听提交
  form.on('submit(add)', function(data){
    $.ajax({
		url:"<?php echo U('PayForAnother/saveEditSupplier');?>",
		type:"post",
		data:$('#payaccess').serialize(),
		success:function(res){
			if(res.status){
				layer.alert("编辑成功", {icon: 6},function () {
					parent.location.reload();
					var index = parent.layer.getFrameIndex(window.name);
					parent.layer.close(index);
				});
			}else{
                layer.msg("操作失败!", {icon: 5},function () {
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.layer.close(index);
                });
                return false;
            }
		}
	});
    return false;
  });
});
</script>
<!--统计代码，可删除-->
</body>
</html>