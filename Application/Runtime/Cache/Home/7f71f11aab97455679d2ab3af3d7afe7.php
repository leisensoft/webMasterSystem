<?php if (!defined('THINK_PATH')) exit();?>    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>常见问题_故障管理</title>
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
	
	 科室:<input name="departmentName" class="easyui-combobox" style="width:160px" data-options="
						loader: myloader,
						mode: 'remote',
						valueField: 'text',
						textField: 'text',
						panelHeight:'auto'
					">
	
	 <script id="container" name="content" type="text/plain"></script>
    
   
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
</script>
    </body>
    </html>