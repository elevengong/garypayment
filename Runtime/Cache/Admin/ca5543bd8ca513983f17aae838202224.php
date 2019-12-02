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
    <div class="ibox float-e-margins">
      <!--条件查询-->
      <div class="ibox-title">
        <h5>投诉保证金分析</h5>
        <div class="ibox-tools">
          <i class="layui-icon" onclick="location.replace(location.href);" title="刷新"
             style="cursor:pointer;">ဂ</i>
        </div>
      </div>
      <!--条件查询-->
      <div class="ibox-content">
        <form class="layui-form" action="" method="get" autocomplete="off" id="orderform">
    
          <div class="layui-form-item">
              <div class="layui-inline">
                <div class="layui-input-inline">
                  <input type="text" name="memberid" autocomplete="off" placeholder="请输入商户号"
                         class="layui-input" value="<?php echo ($_GET['memberid']); ?>">
                </div>
              <div class="layui-input-inline" style="width:300px">
                <input type="text" class="layui-input" name="createtime" id="createtime" placeholder="时间范围" style="width:300px" value="<?php echo ($_GET['createtime']); ?>">
              </div>

            </div>
              <div class="layui-inline">
                <button type="submit" class="layui-btn"><span
                        class="glyphicon glyphicon-search"></span> 搜索
                </button>
                <a href="javascript:;" id="export"
                   class="layui-btn layui-btn-danger"><span
                        class="glyphicon glyphicon-export"></span> 导出数据</a>
              </div>
          </div>
        </form>
      

        <div class="list item">
          <!--交易列表-->
          <table class="layui-table" lay-data="{width:'100%',id:'userData'}">
            <thead>
            <tr>
              <th lay-data="{field:'memberid',width:200}">商户号</th>
              <th lay-data="{field:'username',width:200}">用户名</th>
              <th lay-data="{field:'total',width:200}">总保证金</th>
              <th lay-data="{field:'freeze_money',width:200}">待解冻保证金</th>
              <th lay-data="{field:'unfreeze_money',width:200}">已解冻保证金</th>
            </tr>
            </thead>
            <tbody>
              
              <?php if(is_array($list)): foreach($list as $key=>$v): ?><tr>
                <td><?php echo ($v["pay_memberid"]); ?></td>
                <td><?php echo ($v["username"]); ?></td>
                <td><?php echo ($v["total"]); ?></td>
                <td><?php echo ($v["freeze_money"]); ?></td>
                <td><?php echo ($v["unfreeze_money"]); ?></td>
              </tr><?php endforeach; endif; ?>
            </tbody>
          </table>
          <div class="page"><?php echo ($page); ?>
            <div class="layui-input-inline">
              <form class="layui-form" action="" method="get" id="pageForm" autocomplete="off">

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
</div>
</div>
<script src="/Public/Front/js/jquery.min.js"></script>
<script src="/Public/Front/js/bootstrap.min.js"></script>
<script src="/Public/Front/js/plugins/peity/jquery.peity.min.js"></script>
<script src="/Public/Front/js/content.js"></script>
<script src="/Public/Front/js/plugins/layui/layui.js" charset="utf-8"></script>
<script src="/Public/Front/js/x-layui.js" charset="utf-8"></script>
<script>
    $('#pageList').change(function(){
        $('#pageForm').submit();
    });

    layui.use(['laydate', 'laypage', 'layer', 'table', 'form', 'element'], function() {
        var laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            ,layer = layui.layer //弹层
            ,form = layui.form //表单
            , table = layui.table //表格
            , element = layui.element;

        var time = ['createtime'];
        for(k in time){
          //日期时间范围
          laydate.render({
              elem: '#' + time[k]
              , type: 'datetime'
              ,theme: 'molv'
              , range: '|'
          });
        }
    });
    $('#export').on('click',function(){
        window.location.href
            ="<?php echo U('Admin/Statistics/exportComplaintsDeposit',array('memberid'=>$_GET[memberid],'createtime'=>$_GET[createtime]));?>";
    });
</script>
</body>
</html>