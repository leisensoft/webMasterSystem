<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>系统管理v2.0</title>
	<link rel="stylesheet" type="text/css" href="/Public/css/easyUI/easyui.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/icon.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/color.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/demo.css">
    <script type="text/javascript" src="/Public/js/jquery.min.js"></script>
    <script type="text/javascript" src="/Public/js/jquery.easyui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/Public/css/myButton.css">
</head>	
<body>							
<div class="easyui-layout" style="width:1500px;height:566px;">	
		<div data-options="region:'north'" style="height:100px;">
				<div style="float:left;width:300px;">
						<script src="/Public/js/flipclock.js"></script>
						<link rel="stylesheet" href="/Public/css/flipclock.css">
						<div class="clock"></div>
						<script type="text/javascript">
							var clock;
							$(document).ready(function() {
								clock = $('.clock').FlipClock({
									clockFace: 'TwentyFourHourClock'
								});
							});
						
						</script>
						<script type="text/javascript" src="/Public/js/times.js"></script>
				</div>
				<div style="margin:15px 0px 0px 136px;float:left;">
					科室 <input id="searchBox" class="easyui-combobox" style="height:26px;width:220px;" data-options="
							loader: myloader,
							mode: 'remote',
							valueField: 'id',
							textField: 'text',
							formatter: formatItem,
							panelHeight:'auto'
							">	
				</div>
				<div id="topFastBanner">
					<a href="#" class="myButton" >内一科</a>
					<a href="#" class="myButton" >内二科</a>
					<a href="#" class="myButton" >内三科</a>
					<a href="#" class="myButton" >内四科</a>
					<a href="#" class="myButton" >内五科</a>
					<a href="#" class="myButton" >外一科</a>
					<a href="#" class="myButton" >骨一科</a>
					<a href="#" class="myButton" >骨二科</a>
					<a href="#" class="myButton" >外三科</a>
					<a href="#" class="myButton" >儿科</a>
					<a href="#" class="myButton" >妇一一区</a>
					<a href="#" class="myButton" >妇一二区</a>
					<a href="#" class="myButton" >妇二</a>
					<a href="#" class="myButton" >五官科</a>
				</div>
		</div>
		
        <div data-options="region:'south',split:true" style="height:50px;">
		</div>
        
		<div data-options="region:'east',split:true,collapsible:false" title="管理" style="width:130px;" id="extContent">
			<a href="home-department" target=_blank class="easyui-linkbutton" data-options="iconCls:'icon-remove'">部门管理</a>
			<hr/>
			<a href="home-computer" class="easyui-linkbutton" target=_blank data-options="iconCls:'icon-remove'">主机管理</a>
			<hr/>
			<a href="home-faq" class="easyui-linkbutton" target=_blank data-options="iconCls:'icon-remove'">常见问题</a>
			<hr/>
			<a href="home-hitch" class="easyui-linkbutton" target=_blank data-options="iconCls:'icon-remove'">故障管理</a>
		</div>
       
	   
	   
	    <div id="fastBanner" data-options="region:'west',split:true,collapsible:false" title="常用" style="width:130px;">
				<span class="myButton" style="width:106px;background:#A33F1E;" onclick="newHitchDlg()">添加故障</span>
				<a href="#" class="myButton">自助报告机</a>
				<a href="#" class="myButton">住院处</a>
				<a href="#" class="myButton">收费处</a>
				<a href="#" class="myButton">门诊医保</a>
				<a href="#" class="myButton">住院医保</a>
		</div>
       
	    <div data-options="region:'center',iconCls:'icon-ok'" >
					 <div id="tt" class="easyui-tabs" data-options="tabWidth:166" style="width:100%;height:auto">
						<div title="远程搜索结果" style="padding:10px" id="content">
						</div>

					</div>
		</div>
</div>

 <div id="getPing" class="easyui-window" title="PING 返回值" data-options="closed:true,iconCls:'icon-save'" style="width:560px;height:300px;padding:10px;">
      请等待...
 </div>
 
<style>
.hitchDetail{ position:fixed; bottom:0; background:#000; width:800px; height:auto; line-height:23px; z-index:9999; _bottom:auto; _width:100%; _position:absolute; 
_top:expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight-this.offsetHeight-
(parseInt(this.currentStyle.marginTop, 10)||0)-(parseInt(this.currentStyle.marginBottom, 10)||0)));
color:#fefee9;font-size:26px;
}
</style>
	<div id="hitchDetail" class="hitchDetail">
								<table  title="正在加载故障列表,请等待..." id="hitchDetailDg" class="easyui-datagrid" style="width:800px;height:0px"
									url="home-Hitch-getFastHitchList"
									toolbar="#hitchDetailToolbar"  collapsible="true"
									rownumbers="true" fitColumns="true" singleSelect="true">
									<thead>
										<tr>
												<th field="departmentName" width="5">所在部门</th>
												<th field="depict" width="35">简要描述</th>
												<th field="author" width="5">提交人</th>
												<th field="createTime" width="20">创建时间</th>
												<th field="state" width="5">状态</th>
										</tr>
									</thead>
								</table> 
								<div id="hitchDetailToolbar" >
										<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newHitch()">新增</a>
										<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editFastHitch()">修改</a>
										<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteFastHitch()">删除</a>
										<a href="#" class="easyui-linkbutton" iconCls="icon-reload" plain="true" onclick="refreshFastHitch()">刷新</a>
								</div>				
  </div>
  
  
	 <style type="text/css">    
	 #fm{    margin:0;    padding:10px 30px;    }	 
	 .ftitle{    font-size:14px;    font-weight:bold;    padding:5px 0;    margin-bottom:10px;    border-bottom:1px solid #ccc;    }   
	 .fitem{margin-bottom:5px;}    .fitem label{display:inline-block;width:80px;}    .fitem input{width:160px;}  
	 </style>

	<div id="hitchDlg" title="提交故障" class="easyui-dialog" style="width:400px;;height:250px;padding:10px 20px" closed="true" buttons="#hitchDlg-buttons">
			<form id="fm" method="post" novalidate>
				<input type="hidden" id="hitchCreateTime" name="createTime" value="">
				<input type="hidden" id="hitchFinishTime" name="finishTime" value="">
				<div class="fitem">
					<label>状态:</label>
					<select autocomplete="off"  onchange="hitchSelectChange(this)"  style="font-size:16px;width:88px;" name="state"><option value="未解决" selected="selected">未解决</option><option value="已解决">已解决</option></select>
				</div>
				<div class="fitem">
						<label>所在部门</label>
						<input id="fastHitchDepartment" name="departmentName" class="easyui-combobox" style="" data-options="
							loader: myloader,
							mode: 'remote',
							valueField: 'text',
							textField: 'text',
							panelHeight:'auto',
							require:true
							">	
				</div>			
				<div class="fitem">
					<label>提交人</label>
					<input name="author" class="easyui-textbox" >
				</div>
				<div class="fitem">
					<label>故障简述:</label>
					<input id="depict" name="depict" class="easyui-textbox" data-options="multiline:true" style="height:60px">
				</div>
				<div class="fitem" id="solveDiv" style="display:none">
					<label>解决办法:</label>
					<input id="solve" name="solve" class="easyui-textbox" data-options="multiline:true" style="height:60px">
				</div>
				<div class="fitem" id="adminDiv" style="display:none">
					<label>维护人</label>
					<input name="admin" class="easyui-textbox" >
				</div>
			</form>
    </div>
	 <div id="hitchDlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveFastHitch()" style="width:90px">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="closeFastHitch()" style="width:90px">取消</a>
    </div>
  
	 <div id="alertDlg" class="easyui-dialog" title="提示" data-options="iconCls:'icon-save'" closed="true" style="width:400px;height:200px;padding:10px">
        远程VNC文件不存在,请创建后保存在 D:/vnc/ip.vnc
    </div>
  

<script>
	var myloader = function(param,success,error){  //■■■■■■■■■■■■■■■■■■■■■■搜索窗口代码
			var q = param.q || '';
			if (q.length <= 1){return false}
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
	function formatItem(row){    //■■■■■■■■■■■■■■■■■■■■■■调整搜索结果下拉格式
			var s = '<span style="font-weight:bold">' + row.text + '</span><br/>' +
			'<span style="color:#888">' + row.desc + '</span>';
			return s;
	}
	$('#searchBox').combobox({      	  //■■■■■■■■■■■■■■■■■■■■■■远程搜索||常见问题||故障管理  结果窗口          
			onSelect:function(record){
					$.post("home-index-autoResult",{searchValue:$('#searchBox').combobox('getValue')},function(result){
							$('#content').html(result);
					});
					$('#faqDepartment').combobox('setValue',$('#searchBox').combobox('getText')); //顶部科室搜索窗口和常见问题的科室搜索窗口同步
					$('#faqDg').datagrid('load',{			//重新加载 常见问题
						departmentValue:$('#searchBox').combobox('getText')
					});
					$('#hitchDepartment').combobox('setValue',$('#searchBox').combobox('getText')); //顶部科室搜索窗口和故障管理的科室搜索窗口同步
					$('#hitchDg').datagrid('load',{			//重新加载 故障管理
						departmentValue:$('#searchBox').combobox('getText')
					});
			}
    });
	
	function openjsb(name){     //■■■■■■■■■■■■■■■■■■■■■■打开远程vnc函数
	var filespec="d:/vnc/"+name+".vnc";
	var fso,s=filespec; // 
	fso=new ActiveXObject("Scripting.FileSystemObject");
	if(fso.FileExists(filespec))
	s+=" 文件存在.";
	else{
	s+=" 文件不存在.";
	//alert(s);
	$('#alertDlg').dialog('open');
	}
	
            var shell = new ActiveXObject("WSCRIPT.Shell");   
            shell.Run("D:\\vnc\\"+name+".vnc",1);   
    } 
	function getPing(ip){		//■■■■■■■■■■■■■■■■■■■■■■获取PING返回结果
			$('#getPing').html('正在PING主机'+ip+' 请等待返回PING结果...');
			$.post("home-index-getPing",{pingIP:ip},function(result){
							$('#getPing').html(result);
					});
	}
	$("#fastBanner a").each(function(index){  //■■■■■■■■■■■■■■■■■■■■■■左侧快速搜索
		$(this).click(function(){
			$.post("home-index-autoResult",{fastSearch:$(this).html()},function(result){
							$('#content').html(result);
					});
		});
	});
	$("#topFastBanner a").each(function(index){  //■■■■■■■■■■■■■■■■■■■■■■左侧快速搜索
		$(this).click(function(){
			$.post("home-index-autoResult",{fastSearch:$(this).html()},function(result){
							$('#content').html(result);
					});
		});
	});
/*
	$(function(){   //■■■■■■■■■■■■■■■■■■■■■■tap 鼠标移动上去就变
			var tabs = $('#tt').tabs().tabs('tabs');
			for(var i=0; i<tabs.length; i++){
				tabs[i].panel('options').tab.unbind().bind('mouseenter',{index:i},function(e){
					$('#tt').tabs('select', e.data.index);
				});
			}
	}); */
	function faqSearch(){  //■■■■■■■■■■■■■■■■■■■■■■faq的搜索框
		$('#faqDg').datagrid('load',{
			searchValue: $('#searchValue').val(),
			departmentValue:$('#faqDepartment').val()
		});
	}
	function hitchSearch(){  //■■■■■■■■■■■■■■■■■■■■■■hitch的搜索框
		$('#hitchDg').datagrid('load',{
			searchValue: $('#hitchSearchValue').val(),
			departmentValue:$('#hitchDepartment').val()
		});
	}
	
	function newFaq(){ //■■■■■■■■■■■■■■■■■■■■■■新的常见问题
		 window.open('home-faq-faqEdit');
    }
    function editFaq(){ //■■■■■■■■■■■■■■■■■■■■■■编辑常见问题
		var row = $('#faqDg').datagrid('getSelected');
		 window.open('home-faq-faqEdit?id='+row.id);
	}
    function deleteFaq(){ //■■■■■■■■■■■■■■■■■■■■■■删除常见问题
		var row = $('#faqDg').datagrid('getSelected');
		if (row){
			$.messager.confirm('确认操作','确定要删除此条信息?',function(r){
			if (r){
				$.post('home-faq-deleteFaq',{id:row.id},function(result){
					if (result.success){
						$('#faqDg').datagrid('reload'); // reload the user data
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
	
	function newHitch(){ //■■■■■■■■■■■■■■■■■■■■■■新的故障
		 window.open('home-hitch-hitchEdit');
    }
	function editHitch(){ //■■■■■■■■■■■■■■■■■■■■■■编辑故障
		var row = $('#hitchDg').datagrid('getSelected');
		 window.open('home-hitch-hitchEdit?id='+row.id);
	}
    function deleteHitch(){ //■■■■■■■■■■■■■■■■■■■■■■删除故障
		var row = $('#hitchDg').datagrid('getSelected');
		if (row){
			$.messager.confirm('Confirm','确认删除这条故障信息?',function(r){
			if (r){
				$.post('home-hitch-deleteHitch',{id:row.id},function(result){
					if (result.success){
								$('#hitchDg').datagrid('reload'); // reload the user data
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
	
	 function editFastHitch(){ //■■■■■■■■■■■■■■■■■■■■■■编辑待修故障
		var row = $('#hitchDetailDg').datagrid('getSelected');
		 window.open('home-hitch-hitchEdit?id='+row.id);
	}
    function deleteFastHitch(){ //■■■■■■■■■■■■■■■■■■■■■■删除待修故障
		var row = $('#hitchDetailDg').datagrid('getSelected');
		if (row){
			$.messager.confirm('Confirm','Are you sure you want to destroy this user?',function(r){
			if (r){
				$.post('home-hitch-deleteHitch',{id:row.id},function(result){
					if (result.success){
								refreshFastHitch();
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
	$('#hitchDg').datagrid({onDblClickRow: function (rowIndex, rowData) { //■■■■■■■■■■■■■■■■■■■■■■双击故障
			 window.open('home-hitch-hitchShow?id='+rowData.id);
			} //双击事件----          
	}); //datagrid----
	$('#faqDg').datagrid({onDblClickRow: function (rowIndex, rowData) { //■■■■■■■■■■■■■■■■■■■■■■双击常见问题表
			 window.open('home-faq-faqShow?id='+rowData.id);
			} //双击事件----          
	}); //datagrid----
	$('#hitchDetailDg').datagrid({onDblClickRow: function (rowIndex, rowData) { //■■■■■■■■■■■■■■■■■■■■■■待修表hitchDetailDg
			 window.open('home-hitch-hitchShow?id='+rowData.id);
			} //双击事件----          
	}); //datagrid----
	
	function refreshFastHitch(){   //■■■■■■■■■■■■■■■■■■■■■■刷新待修表
		$('#hitchDetailDg').datagrid('reload');
		$.post("home-Hitch-getFastHitchNumber", function(data) {
				if(0!=data)
					result = '<font style="color:red;">('+data+')条待处理问题</font>';
				else{	
					$("#hitchDetail").css("height","30px");//缩小待修表
					result = '没有待处理问题';
				}
				$('#hitchDetail .panel-title').html(result);
		});
	}	

	$(document).ready(function(){ 	//■■■■■■■■■■■■■■■■■■■■■■//■■■■■■■■■■■■■■■■■■■■■■//■■■■■■■■■■■■■■■■■■■■■■//■■■■■■■■■■■■■■■■■■■■■■ready function
		 	refreshFastHitch(); 					   //■■■■■■■■■■■■■■■■■■■■■■自动刷新待修表title
			setInterval(refreshFastHitch,1000*60*10);  //■■■■■■■■■■■■■■■■■■■■■■自动刷新待修表
	});
	
	$("#hitchDetail").hover(function() {  //■■■■■■■■■■■■■■■■■■■■■■自动隐藏待修表
		//$("#hitchDetail").css("height","auto");
	}, function() {
		//$("#hitchDetail").css("height","30px");
	});
	

	function newHitchDlg(){   //■■■■■■■■■■■■■■■■■■■■■■左侧快速添加故障
		$('#hitchDlg').dialog('open');
		//$('#fm').form('clear');
		$("#hitchDetail").css("height","30px");//缩小待修表
		$('#fastHitchDepartment').combobox('setValue',$('#searchBox').combobox('getText')); //获取顶部搜索信息
		var mydate = new Date();//■■■■■■■■■■■■■■■■■■■■■■hitch时间 
		var nowTime=mydate.toLocaleString();
		$('#hitchCreateTime').val(nowTime);
	}
	function hitchSelectChange(ele){ //■■■■■■■■■■■■■■■■■■■■■■快速录入故障 选择 已完成/未完成 控制表单显示
		if("未解决"==ele.value){
			$('#solveDiv').css('display','none');$('#adminDiv').css('display','none');$('#hitchDlg').css('height','160');$('#hitchFinishTime').val('');
		}else{$('#solveDiv').css('display','block');$('#adminDiv').css('display','block');$('#hitchDlg').css('height','250');$('#hitchFinishTime').val('立即解决');
		}	
	}
	function saveFastHitch(){
		$('#fm').form('submit',{
			url: 'home-hitch-saveFastHitch',
			onSubmit: function(){
				return $(this).form('validate');
			},
		success: function(result){
					var result = eval('('+result+')');
					if (result.errorMsg){
						$.messager.show({title: 'Error',msg: result.errorMsg});
					} else {
						$('#hitchDlg').dialog('close'); // close the dialog
						$("#hitchDetail").css("height","auto");//恢复待修表
						refreshFastHitch();
					}
				}
		});
	}
	function closeFastHitch(){
		javascript:$('#hitchDlg').dialog('close');
		$("#hitchDetail").css("height","auto");
	}

</script>
</body>
</html>