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
        <form class="layui-form" id="editForm">
            <div class="layui-form-item">
                <label class="layui-form-label">菜单图标</label>
                <div class="layui-input-inline">
                    <input type="text" name="menuicon" value="<?php echo ($menu_info["icon"]); ?>" placeholder="请输入菜单图标"
                           autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">具体参考layui官网</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">菜单名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="menuname" lay-verify="required" value="<?php echo ($menu_info["title"]); ?>"
                           placeholder="请输入菜单名称"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">控制器名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="controller" value="<?php echo ($opt[0]); ?>"
                    <?php if($menu_info['pid']): ?>lay-verify="required"<?php endif; ?>
                    placeholder="请输入控制器名称" autocomplete="off" class="layui-input">
                </div>

                <div class="layui-form-mid layui-word-aux">驼峰法命名</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">方法名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="action" value="<?php echo ($opt[1]); ?>"
                    <?php if($menu_info['pid']): ?>lay-verify="required"<?php endif; ?>
                    placeholder="请输入方法名称" autocomplete="off" class="layui-input">

                </div>
                <div class="layui-form-mid layui-word-aux">驼峰法命名</div>
            </div>
            <input type="hidden" name="id" value="<?php echo ($menu_info["id"]); ?>">
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="editmenu">立即提交</button>
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
    layui.use('form', function () {
        var form = layui.form,
            $ = layui.jquery;

        //监听提交
        form.on('submit(editmenu)', function(data){
            $.ajax({
                url:"<?php echo U('Menu/editMenu');?>",
                type:"post",
                data:$('#editForm').serialize(),
                success:function(res){
                    if(res.status){
                        layer.alert("操作成功", {icon: 6},function () {
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