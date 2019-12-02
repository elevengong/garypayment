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
  <div class="col-md-12">
    <form class="layui-form" method="post" autocomplete="off" action="" id="menuForm">
      <input type="hidden" name="pid" value="<?php echo (htmlspecialchars($_GET[pid])); ?>">
      <div class="layui-form-item">
        <label class="layui-form-label">菜单图标</label>
        <div class="layui-input-inline">
          <input type="text" name="m[menuicon]"  placeholder="请输入菜单图标"
          autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">具体参考layui官网</div>
      </div>

      <div class="layui-form-item">
        <label class="layui-form-label">菜单名称</label>
        <div class="layui-input-inline">
          <input type="text" name="m[menuname]" lay-verify="required" placeholder="请输入菜单名称" autocomplete="off"
                 class="layui-input">
        </div>
      </div>

      <div class="layui-form-item">
        <label class="layui-form-label">控制器名称</label>
        <div class="layui-input-inline">
          <input type="text" name="m[controller]" <?php if($id): ?>lay-verify="required"<?php endif; ?> placeholder="请输入控制器名称"
          autocomplete="off"  class="layui-input" style="text-transform:capitalize;">
        </div>
        <div class="layui-form-mid layui-word-aux">驼峰法命名</div>
      </div>

      <div class="layui-form-item">
        <label class="layui-form-label">方法名称</label>
        <div class="layui-input-inline">
          <input type="text" name="m[action]" <?php if($id): ?>lay-verify="required"<?php endif; ?> placeholder="请输入方法名称"
          autocomplete="off"  class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">驼峰法命名</div>
      </div>

      <div class="layui-form-item">
        <div class="layui-input-block">
          <button class="layui-btn" lay-submit lay-filter="addmenu">立即提交</button>
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
<script>
    layui.use(['layer', 'form','laydate'], function(){
        var form = layui.form
            ,laydate = layui.laydate
            ,$ = layui.jquery
            ,layer = layui.layer;
          //监听提交
          form.on('submit(addmenu)', function(data){
            $.ajax({
                url:"<?php echo U('Menu/addMenu');?>",
                type:'post',
                data:$('#menuForm').serialize(),
                success:function(res){
                    if(res.status){
                        layer.alert("编辑成功", {icon: 6},function () {
                            parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                    }else{
                        layer.msg(res.msg ? res.msg : "操作失败!", {icon: 5},function () {
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
</body>
</html>