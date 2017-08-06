<?php if (!defined('THINK_PATH')) exit();?>    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>部门管理</title>
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/easyui.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/icon.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/color.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/demo.css">
    <script type="text/javascript" src="/Public/js/jquery.min.js"></script>
    <script type="text/javascript" src="/Public/js/jquery.easyui.min.js"></script>
    </head>
    <body>
    
    <table id="dg" title="部门信息表" class="easyui-datagrid" style="width:1000px;height:550px"
    url="home-department-getDepartmentList"
    toolbar="#toolbar" pagination="true"
    rownumbers="true" fitColumns="true" singleSelect="true">
    <thead>
    <tr>
			<th field="id" width="5">id</th>
			<th field="name" width="15">名称</th>
			<th field="type" width="10">类型</th>
			<th field="phone" width="40">电话</th>
			<th field="ips" width="20">IP段</th>
			<th field="leader" width="20">负责人</th>
			<th field="index" width="40">搜索设置</th>
    </tr>
    </thead>
    </table>
	
    <div id="toolbar">
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">新增</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">修改</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">删除</a>
			
			<span class="textbox easyui-fluid" style="float:right; width: 276px; height: 30px;">
				<input onkeyup="doSearch()" id="searchValue" class="textbox-text validatebox-text" type="text" autocomplete="off" placeholder="搜索" style="margin-left: 0px; margin-right: 0px; padding-top: 7px; padding-bottom: 7px; width: 266px;">
				<input class="textbox-value" type="hidden" value="">
			</span>
			
    </div>
	
    <div id="dlg" class="easyui-dialog" style="width:400px;;height:320px;padding:10px 20px" closed="true" buttons="#dlg-buttons">
			<div class="ftitle">部门信息</div>
			<form id="fm" method="post" novalidate>
			<div class="fitem">
				<label>ID</label>
				<input name="id"  class="easyui-textbox"  disabled="disabled"/>
			</div>
			<div class="fitem">
				<label>名称</label>
				<input name="name" class="easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>类型:</label>
				<input name="type" class="easyui-textbox">
			</div>
			<div class="fitem">
				<label>电话</label>
				<input name="phone" class="easyui-textbox" >
			</div>
			<div class="fitem">
				<label>IP段</label>
				<input name="ips" class="easyui-textbox" >
			</div>
			<div class="fitem">
				<label>负责人</label>
				<input name="leader" class="easyui-textbox" >
			</div>
			<div class="fitem">
				<label>搜索设置</label>
				<input name="index" class="easyui-textbox" >
			</div>
		
			</form>
    </div>
	
    <div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveUser()" style="width:90px">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">取消</a>
    </div>
	
    <script type="text/javascript">
    var url;
    function newUser(){
		$('#dlg').dialog('open').dialog('setTitle','新增部门');
		$('#fm').form('clear');
		url = 'home-department-updateDepartment';
    }
    function editUser(){
		var row = $('#dg').datagrid('getSelected');
		if (row){
			$('#dlg').dialog('open').dialog('setTitle','修改部门信息');
			$('#fm').form('load',row);
			url = 'home-department-updateDepartment?id='+row.id;
		}
    }
    function saveUser(){
		$('#fm').form('submit',{
			url: url,
			onSubmit: function(){
				return $(this).form('validate');
			},
		success: function(result){
					var result = eval('('+result+')');
					if (result.errorMsg){
						$.messager.show({title: 'Error',msg: result.errorMsg});
					} else {
						$('#dlg').dialog('close'); // close the dialog
						$('#dg').datagrid('reload'); // reload the user data
					}
				}
		});
    }
	
    function destroyUser(){
		var row = $('#dg').datagrid('getSelected');
		if (row){
			$.messager.confirm('Confirm','Are you sure you want to destroy this user?',function(r){
			if (r){
				$.post('home-department-deleteDepartment',{id:row.id},function(result){
					if (result.success){
						$('#dg').datagrid('reload'); // reload the user data
					} else {
						$.messager.show({ // show error message
						title: 'Error',
						msg: result.errorMsg
						});
					}
				},'json');
			}
			});
		}
    }
	
	function doSearch(){
		$('#dg').datagrid('load',{
			searchValue: $('#searchValue').val()
		});
	}

    </script>
    <style type="text/css">
    #fm{
    margin:0;
    padding:10px 30px;
    }
    .ftitle{
    font-size:14px;
    font-weight:bold;
    padding:5px 0;
    margin-bottom:10px;
    border-bottom:1px solid #ccc;
    }
    .fitem{
    margin-bottom:5px;
    }
    .fitem label{
    display:inline-block;
    width:80px;
    }
    .fitem input{
    width:160px;
    }
    </style>
    </body>
    </html>