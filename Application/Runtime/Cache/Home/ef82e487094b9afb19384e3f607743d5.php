<?php if (!defined('THINK_PATH')) exit();?>    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>故障查看</title>
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/easyui.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/icon.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/color.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/demo.css">
    <script type="text/javascript" src="/Public/js/jquery.min.js"></script>
    <script type="text/javascript" src="/Public/js/jquery.easyui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/Public/css/myButton.css">
	
	<style>
		.time{color: #999;font-family: arial;font-size: 14px;}
		.person{color: #369;font-family: arial;font-size: 14px;}
		.content{color: black;font-size: 18px;}
	</style>
</head>
	<body>
	<div class="easyui-layout" style="width:1200px;height:566px;">	
		<div data-options="region:'north'" style="height:76px;">
				<span style="font-size:16px;font-weight:bold;">
				<?php if($hitch["state"] == '未解决'): ?><span class="myButton" style="width:106px;background:#A33F1E;" onclick="newHitchDlg()">未解决</span>
					<a class="easyui-linkbutton" iconCls="icon-ok" plain="true" onclick="hitchDone();">解决</a>
				<?php else: ?>
					<span class="myButton" style="width:106px;background:#45A21C;" onclick="newHitchDlg()">已解决</span><?php endif; ?>
				
				
				科室:<?php echo ($hitch["departmentName"]); ?> 
				
				<span class="person">提交人: <?php echo ($hitch["author"]); ?></span> <span class="time">提交时间: <?php echo ($hitch["createTime"]); ?></span> 
				<span class="person">维护人: <?php echo ($hitch["admin"]); ?> </span> <span class="time"> 维护时间: <?php echo ($hitch["finishTime"]); ?></span>
				</span>
				<br/>
				
				<a  class="easyui-linkbutton" iconCls="icon-edit" plain="true" href="home-hitch-hitchEdit?id=<?php echo ($hitch["id"]); ?>">编辑</a> 
				<a class="easyui-linkbutton" iconCls="icon-cancel" plain="true" onclick="javascript:return ConfirmDel();"  href="home-hitch-deleteHitch?id=<?php echo ($hitch["id"]); ?>">删除</a>
		</div>
		<div data-options="region:'center',iconCls:'icon-ok'">
		<span class="content"><br/>
		简要描述:<?php echo ($hitch["depict"]); ?></span><hr/>
		<?php echo ($hitch["content"]); ?></span><hr/>
		解决方法:<?php echo ($hitch["solve"]); ?>
		</div>

		 <style type="text/css">    
		 #fm{    margin:0;    padding:10px 30px;    }	 
		 .ftitle{    font-size:14px;    font-weight:bold;    padding:5px 0;    margin-bottom:10px;    border-bottom:1px solid #ccc;    }   
		 .fitem{margin-bottom:5px;}    .fitem label{display:inline-block;width:80px;}    .fitem input{width:160px;}   
		 </style>
	<div id="hitchDlg" class="easyui-dialog" style="width:400px;;height:320px;padding:10px 20px" closed="true" buttons="#hitchDlg-buttons">
			<div class="ftitle">故障解决</div>
			<form id="fm" method="post" novalidate>
				<input type="hidden" name="id" value="<?php echo ($hitch["id"]); ?>">
				<input type="hidden" name="state" value="已解决">
				<div class="fitem">
					<label>完成时间:</label>
					<input id="finishTime" name="finishTime" class="easyui-textbox" readonly="readonly">
				</div>
				<div class="fitem">
					<label>解决办法:</label>
					<input id="solve" name="solve" class="easyui-textbox" data-options="multiline:true" style="height:60px">
				</div>
				<div class="fitem">
					<label>维护人</label>
					<input name="admin" class="easyui-textbox" >
				</div>
			</form>
    </div>
	 <div id="hitchDlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveHitch()" style="width:90px">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#hitchDlg').dialog('close')" style="width:90px">取消</a>
    </div>
    </div> 
	
	<script type="text/javascript">
	 $('#fm').form('load',{              
		state:'已解决',
	 });
	var mydate = new Date();//■■■■■■■■■■■■■■■■■■■■■■hitch时间 
	var nowTime=mydate.toLocaleString();
	$('#finishTime').val(nowTime);
	
    function hitchDone(){
		$('#hitchDlg').dialog('open').dialog('setTitle','故障解决');
    }
	
	function saveHitch(){
		$('#fm').form('submit',{
			url: 'home-hitch-doneHitch',
			onSubmit: function(){
				return $(this).form('validate');
			},
		success: function(result){
					var result = eval('('+result+')');
					if (result.errorMsg){
						$.messager.show({title: 'Error',msg: result.errorMsg});
					} else {
						$('#hitchDlg').dialog('close'); // close the dialog
						location.reload(); 
					}
				}
		});
	}
	</script>
	
	<script>
	function ConfirmDel() {		
		if (confirm("真的要删除吗？")){
			return true;
		}else{			
			return false;	
		}	
	}
	</script>
    </body>
    </html>