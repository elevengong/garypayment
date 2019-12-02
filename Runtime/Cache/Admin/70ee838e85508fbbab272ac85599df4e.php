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
			<input type="hidden" name="id" value="<?php echo ($info["id"]); ?>">
			  <div class="layui-form-item">
				<label class="layui-form-label">中文名称：</label>
				<div class="layui-input-inline">
				  <input type="text" name="name" lay-verify="required" autocomplete="off" value="<?php echo ($info["name"]); ?>" placeholder="中文名称" class="layui-input">
				</div>
			  </div>

			  <div class="layui-form-item">
				<label class="layui-form-label">代码名称：</label>
				<div class="layui-input-inline">
				  <input type="text" name="theme" lay-verify="required" placeholder="代码名称" value="<?php echo ($info["theme"]); ?>" style="text-transform:capitalize;" autocomplete="off" class="layui-input">
				</div>
				  <div class="layui-form-mid layui-word-aux"></div>
			  </div>
			  
			  <div class="layui-form-item">
				<label class="layui-form-label">状态：</label>
				<div class="layui-input-block">
				  <input type="radio" name="is_default" <?php if($info[is_default] == 1): ?>checked<?php endif; ?> value="1" title="开启" checked="">
				  <input type="radio" name="is_default" <?php if($info[is_default] == 0): ?>checked<?php endif; ?> value="0" title="关闭">
				</div>
			  </div>
			  
			  <div class="layui-form-item">
				<label class="layui-form-label">备注：</label>
				<div class="layui-input-inline">
				  <input type="text" name="remarks" lay-verify="required" placeholder="备注" value="<?php echo ($info["remarks"]); ?>" style="text-transform:capitalize;" autocomplete="off" class="layui-input">
				</div>
				  <div class="layui-form-mid layui-word-aux"></div>
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
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use(['layer', 'form'], function(){
  var form = layui.form
  ,layer = layui.layer;
  
  //监听提交
  form.on('submit(add)', function(data){
    $.ajax({
		url:"<?php echo U('Template/addSave');?>",
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