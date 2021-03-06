<?php if (!defined('THINK_PATH')) exit();?>﻿    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>故障管理</title>
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/easyui.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/icon.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/color.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/demo.css">
    <script type="text/javascript" src="/Public/js/jquery.min.js"></script>
    <script type="text/javascript" src="/Public/js/jquery.easyui.min.js"></script>

    <script type="text/javascript" src="/Public/ueditor/ueditor.config.js"></script>    
    <script type="text/javascript" src="/Public/ueditor/ueditor.all.min.js"></script>
    <script>
    $(function(){
        var url='<?php echo U('Home/Ueditor/Index');?>';
        var ue = UE.getEditor('container',{
            serverUrl :url,
            UEDITOR_HOME_URL:'/Public/ueditor/',
        });

        ue.ready(function(){
            ue.execCommand('serverparam', {
                'userid': '1',
				'username': 'admin',
            });
        });

    })
    </script>
</head>
    <body>
	
    
	<table id="dg" title="故障管理" class="easyui-datagrid" style="width:1000px;height:366px"
    url="home-hitch-getHitchList"
    toolbar="#toolbar" pagination="true"
    rownumbers="true" fitColumns="true" singleSelect="true">
    <thead>
    <tr>
			<th field="id" width="5">id</th>
			<th field="departmentName" width="15">所在部门</th>
			<th field="computerID" width="10">电脑ID</th>
			<th field="depict" width="20">内容</th>
			<th field="author" width="10">提交人</th>
			<th field="admin" width="10">维护人</th>
			<th field="createTime" width="10">创建时间</th>
			<th field="finishTime" width="10">完成时间</th>
			<th field="state" width="10">完成状态</th>
    </tr>
    </thead>
    </table>
    <div id="toolbar">
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">新增</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">修改</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">删除</a>
			
			<span class="textbox easyui-fluid" style="float:right; width: 276px; height: 30px;">
				<input onkeyup="doSearch()" id="searchValue" class="textbox-text validatebox-text" type="text" autocomplete="off" placeholder="搜索" style="margin-left: 0px; margin-right: 0px; padding-top: 7px; padding-bottom: 7px; width: 166px;">
				<input class="textbox-value" type="hidden" value="">
			</span>
    </div>
	
    <div id="dlg" class="easyui-dialog" style="width:100%;;height:600px;padding:10px 20px" closed="true" buttons="#dlg-buttons">
			<div class="ftitle">故障管理</div>
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
						formatter: formatItem,
						panelHeight:'auto'
					">
				</div>
				<div class="fitem">
					<label>电脑ID:</label>
					<input name="computerID" class="easyui-textbox">
				</div>
					<div class="fitem">
					<label>内容:</label>
					<input name="content" class="easyui-textbox">
				</div>
					<div class="fitem">
					<label>提交人:</label>
					<input name="author" class="easyui-textbox">
				</div>
				<div class="fitem">
					<label>维护人:</label>
					<input name="admin" class="easyui-textbox">
				</div>
				<div class="fitem">
					<label>创建时间:</label>
					<input name="createTime" class="easyui-datebox">
				</div>
				<div class="fitem">
					<label>完成时间</label>
					<input name="finishTime" class="easyui-textbox" >
				</div>
				<div class="fitem">
					<label>状态</label>
					<input name="state" class="easyui-textbox" >
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
		$('#dlg').dialog('open').dialog('setTitle','新增故障');
		$('#fm').form('clear');
		url = 'home-Hitch-updateHitch';
    }
    function editUser(){
		var row = $('#dg').datagrid('getSelected');
		if (row){
			$('#dlg').dialog('open').dialog('setTitle','修改故障信息');
			$('#fm').form('load',row);
			url = 'home-Hitch-updateHitch?id='+row.id;
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
				$.post('home-Hitch-deleteHitch',{id:row.id},function(result){
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
					url: 'http://thinkphp.c/home-index-autoComplete',
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