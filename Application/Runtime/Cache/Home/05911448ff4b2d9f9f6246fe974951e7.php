<?php if (!defined('THINK_PATH')) exit();?>    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>电脑管理</title>
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/easyui.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/icon.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/color.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/demo.css">
    <script type="text/javascript" src="/Public/js/jquery.min.js"></script>
    <script type="text/javascript" src="/Public/js/jquery.easyui.min.js"></script>
    </head>
    <body>
    <table id="dg" title="电脑信息表" class="easyui-datagrid" style="width:600px;height:366px"
    url="home-Computer-getComputerList"
    toolbar="#toolbar" pagination="true"
    rownumbers="true" fitColumns="true" singleSelect="true">
    <thead>
    <tr>
			<th field="id" width="5">id</th>
			<th field="departmentName" width="15">所在部门</th>
			<th field="type" width="10">类型</th>
			<th field="depict" width="20">描述</th>
			<th field="ip" width="10">IP</th>
			<th field="mac" width="30">MAC</th>
			<th field="user" width="20">使用人</th>
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
			<div class="ftitle">电脑信息</div>
			<form id="fm" method="post" novalidate>
			<div class="fitem">
				<label>ID</label>
				<input name="id"  class="easyui-textbox"  disabled="disabled"/>
			</div>
			<div class="fitem">
				<label>所在部门</label>
				<!--<input name="departmentName" class="easyui-textbox" required="true">-->
				    <input name="departmentName" class="easyui-combobox" style="width:160px" data-options="
						loader: myloader,
						mode: 'remote',
						valueField: 'text',
						textField: 'text',
						panelHeight:'auto'
					">
				</div>
				<div class="fitem">
					<label>类别:</label>
					<input name="type" class="easyui-textbox">
				</div>
				<div class="fitem">
					<label>描述:</label>
					<input name="depict" class="easyui-textbox">
				</div>
				<div class="fitem">
					<label>IP:</label>
					<input name="ip" class="easyui-textbox">
				</div>
				<div class="fitem">
					<label>MAC</label>
					<input name="mac" class="easyui-textbox" >
				</div>
				<div class="fitem">
					<label>使用人</label>
					<input name="user" class="easyui-textbox" >
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
		$('#dlg').dialog('open').dialog('setTitle','新增电脑');
		$('#fm').form('clear');
		url = 'home-computer-updateComputer';
    }
    function editUser(){
		var row = $('#dg').datagrid('getSelected');
		if (row){
			$('#dlg').dialog('open').dialog('setTitle','修改电脑信息');
			$('#fm').form('load',row);
			url = 'home-computer-updateComputer?id='+row.id;
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
				$.post('home-computer-deleteComputer',{id:row.id},function(result){
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
    .fitem{margin-bottom:5px;}
    .fitem label{display:inline-block;width:80px;}
    .fitem input{width:160px;}
    </style>
	
<script>
	var myloader = function(param,success,error){
			var q = param.q || '';
			//if (q.length <= 1){return false}
			if (q.length == 0){return false}
			$.ajax({
					url: 'home-index-autoComplete',
					dataType: 'jsonp',
					data: {
							featureClass: "P",
							style: "full",
							maxRows: 20,
							name_startsWith: q
					},
					success: function(data){
							var items = $.map(data, function(item){
							return {
									id: item.id,
									text: item.text,
									desc:item.desc
								};
							});
							success(items);
					},
					error: function(){
							error.apply(this, arguments);
					}
			});
	}
	function formatItem(row){
			var s = '<span style="font-weight:bold">' + row.text + '</span><br/>' +
			'<span style="color:#888">' + row.desc + '</span>';
			return s;
	}
</script>
    </body>
    </html>