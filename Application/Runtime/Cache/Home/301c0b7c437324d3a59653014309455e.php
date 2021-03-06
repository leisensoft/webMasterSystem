<?php if (!defined('THINK_PATH')) exit();?>﻿    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>常见问题</title>
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/easyui.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/icon.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/color.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/demo.css">
    <script type="text/javascript" src="/Public/js/jquery.min.js"></script>
    <script type="text/javascript" src="/Public/js/jquery.easyui.min.js"></script> 
</head>
    <body>
	<table id="dg" title="常见问题" class="easyui-datagrid" style="width:800px;height:366px"
    url="home-Faq-getFaqList"
    toolbar="#toolbar" pagination="true"
    rownumbers="true" fitColumns="true" singleSelect="true">
    <thead>
    <tr>
			<th field="id" width="5">id</th>
			<th field="departmentName" width="10">所在部门</th>
			<th field="title" width=60">标题</th>
			<th field="admin" width="10">维护人</th>
			<th field="createTime" width="15">创建时间</th>
    </tr>
    </thead>
    </table>
    <div id="toolbar">
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newFaq()">新增</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editFaq()">修改</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteFaq()">删除</a>
			
			<span class="textbox easyui-fluid" style="float:right; width: 276px; height: 30px;">
				<input onkeyup="doSearch()" id="searchValue" class="textbox-text validatebox-text" type="text" autocomplete="off" placeholder="搜索" style="margin-left: 0px; margin-right: 0px; padding-top: 7px; padding-bottom: 7px; width: 166px;">
				<input class="textbox-value" type="hidden" value="">
			</span>
    </div>
	
    <script type="text/javascript">
    var url;
    function newFaq(){ //■■■■■■■■■■■■■■■■■■■■■■
		window.location.href='home-faq-faqEdit'; 
    }
    function editFaq(){ //■■■■■■■■■■■■■■■■■■■■■■
		var row = $('#dg').datagrid('getSelected');
		window.location.href='home-faq-faqEdit?id='+row.id;; 
	}
    function deleteFaq(){ //■■■■■■■■■■■■■■■■■■■■■■
		var row = $('#dg').datagrid('getSelected');
		if (row){
			$.messager.confirm('Confirm','Are you sure you want to destroy this user?',function(r){
			if (r){
				$.post('home-faq-deleteFaq',{id:row.id},function(result){
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
	 $('#dg').datagrid({onDblClickRow: function (rowIndex, rowData) { //■■■■■■■■■■■■■■■■■■■■■■双击表
			 window.open('home-faq-faqShow?id='+rowData.id);
			} //双击事件----          
	}); //datagrid----
	 
	
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
	
    </body>
    </html>