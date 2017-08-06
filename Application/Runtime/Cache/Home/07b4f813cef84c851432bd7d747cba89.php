<?php if (!defined('THINK_PATH')) exit();?>    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>常见问题查看</title>
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/easyui.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/icon.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/color.css">
    <link rel="stylesheet" type="text/css" href="/Public/css/easyUI/demo.css">
    <script type="text/javascript" src="/Public/js/jquery.min.js"></script>
    <script type="text/javascript" src="/Public/js/jquery.easyui.min.js"></script>
</head>
	<body>
	<div class="easyui-layout" style="width:1200px;height:566px;">	
		<div data-options="region:'north'" style="height:36px;">
				<span style="font-size:26px;font-weight:bold;">标题<?php echo ($faq["title"]); ?></span>
				<?php echo ($faq["departmentName"]); ?> <?php echo ($faq["admin"]); ?>  <?php echo ($faq["createTime"]); ?> <a href="home-faq-faqEdit?id=<?php echo ($faq["id"]); ?>">编辑</a> 
				<a onclick="javascript:return ConfirmDel();"  href="home-faq-deleteFaq?id=<?php echo ($faq["id"]); ?>">删除</a>
		</div>
		<div data-options="region:'center',iconCls:'icon-ok'"><?php echo ($faq["content"]); ?></div>
    </div> 
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