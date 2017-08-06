<?php if (!defined('THINK_PATH')) exit();?>    <!DOCTYPE html>
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
			initialFrameHeight:266,
        });
        ue.ready(function(){
			ue.setContent('<?php echo ($hitch["content"]); ?>');
        });
		

    })
    </script>
</head>
    <body>
	 <form id="hitchForm" method="post" >
	 ID<input name="id" class="easyui-textbox" readonly="readonly" style="width:66px" value="<?php echo ($hitch["id"]); ?>" />
	 科室:<input value="<?php echo ($hitch["departmentName"]); ?>"  required="true" name="departmentName" class="easyui-combobox" style="width:100px" data-options="
						loader: myloader,
						mode: 'remote',
						valueField: 'text',
						textField: 'text',
						panelHeight:'auto'
					">
	提交人<input name="author" class="easyui-textbox" value="<?php echo ($hitch["author"]); ?>">
	维护人<input name="admin" class="easyui-textbox" value="<?php echo ($hitch["admin"]); ?>">
	<br/>
	故障电脑信息<input name="admin" class="easyui-textbox" value="<?php echo ($hitch["computer"]); ?>">
	<br/>
	创建时间<input id="createTime" name="createTime" class="easyui-textbox" style="width:166px" value="<?php echo ($hitch["createTime"]); ?>"/>
	状态<input id="state" name="state" class="easyui-textbox" style="width:166px" value="<?php echo ($hitch["state"]); ?>"/>
	完成时间<input id="finishTime" name="finishTime" class="easyui-textbox" style="width:166px" value="<?php echo ($hitch["finishTime"]); ?>"/>
	<br/>
	简要描述<input id="depict" name="depict" class="easyui-textbox"  value="<?php echo ($hitch["depict"]); ?>" style="height:25px;width:666px" />
	<br/>
	
	<script  id="container" name="content" type="text/plain"></script>
    <div id="buttons">
	<a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveFaq()" style="width:90px">保存</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick=" if(confirm('确认取消吗?')){window.close();}else{return;}" style="width:90px">取消</a>
	</div>

<script>
	var mydate = new Date();				//■■■■■■■■■■■■■■■■■■■■■■hitch时间 
	var nowTime=mydate.toLocaleString();
	if(""==$('#createTime').val())
		$('#createTime').val(nowTime);
	
	var myloader = function(param,success,error){ //■■■■■■■■■■■■■■■■■■■■■■科室自动补全
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
	
	function saveFaq(){	 //■■■■■■■■■■■■■■■■■■■■■■保存hitch
		$('#hitchForm').form('submit',{
			url: 'home-hitch-hitchEdit',
			onSubmit: function(){
				return $(this).form('validate');
				$("#buttons").html('<img src="/Public/img/wait.gif">');
			},
		success: function(result){
					location.href = 'home-hitch-hitchShow?id='+result; 
				}
		});
    }
</script>
    </body>
    </html>