<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
	function _initialize(){  //■■■■■■■■■■■■■■■■■■■■■■构造函数
	}
    public function index(){ //■■■■■■■■■■■■■■■■■■■■■■index
        //$this->show('<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} body{ background: #fff; font-family: "微软雅黑"; color: #333;font-size:24px} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.8em; font-size: 36px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p>欢迎使用 <b>ThinkPHP</b>！</p><br/>[ 您现在访问的是Home模块的Index控制器 ]</div><script type="text/javascript" src="http://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script>','utf-8');
		$this->display();	
   }
   public function info(){ //■■■■■■■■■■■■■■■■■■■■■■info
		phpinfo();
   }
   public function sql(){ //■■■■■■■■■■■■■■■■■■■■■■mysql
		$link = mysql_connect('localhost','root','admin'); 
	if (!$link) { 
		die('Could not connect to MySQL: ' . mysql_error()); 
		} 
			echo 'Connection OK'; mysql_close($link); 
   }
	public function autoComplete(){  //■■■■■■■■■■■■■■■■■■■■■■搜索框
		$this->m = M("department");
		$fieldsArray = array("name","index","phone","leader") ;    //自定义搜索的字段 //全字段$this->m->getDbFields();
		foreach($fieldsArray as $fields){
			$map[$fields]  = array('like', '%'.I('get.name_startsWith').'%');
		}
		$map['_logic'] = 'or';
		$data = $this->m->field('id,name,phone')->where($map)->select();
		foreach($data as $val){					                   //修改返回数组 $arr['0'] = array('id'=>'ID值','name'=>'显示','desc'=>'小字');
			$fixData['id'] = $val['id'];
			$fixData['text'] = $val['name'];
			$fixData['desc'] = $val['phone']; 
			$returnData[] = $fixData;
		}
		$callBack = I('get.callback');
		echo $callBack.'('.json_encode($returnData).')'; 
	}
	
	public function autoResult(){ //■■■■■■■■■■■■■■■■■■■■■■■■■■搜索结果
		$this->m = M("department");
		if(I('post.searchValue')){
			$department = $this->m->where('id='.I('post.searchValue'))->find(); //获取科室名字
		}else{
			$department = $this->m->where('name=\''.I('post.fastSearch').'\'')->find();  //左侧快速搜索
		}
		$computer = M("computer");
		$computers = $computer->where('departmentName="'.$department['name'].'"')->select();  //汉字搜索要加双引号 "搜索内容" 
		$result = "<h2>".$department['name'].'<br/> '.$department['phone']."</h2>";   
		//排序
		foreach($computers as $com){      		 //按类型分数组 array('护士站'=>'','门诊'=>'')
			$typeArray[$com['type']] = array();
		}
		foreach($computers as $com){			 //把电脑放入对应类型的数组	
			 foreach($typeArray as $type=>$arr){
					if($type == $com['type']){
						 $typeArray[$type][] = $com;
					}
			 }
		}
		foreach($typeArray as $type=>$coms){	//先循环类型 在循环输出类型内的电脑们
			$result .= '<span  style="font-size:16px;font-weight:bold;layout-flow:vertical-ideographic;">'.$type.'</span>';
			foreach($coms as $com){
				 $ipArray = explode('.',$com['ip']);$ip = $ipArray['2'].'.'.$ipArray['3'];
				 $result .= '&nbsp; <a href="javascript:openjsb(\''.$com[ip].'\')" class="myButton" >'.$com['depict'].'<span style="font-size:16px;">'.$ip.'</span></a>
							<a class="easyui-linkbutton" onclick="$(\'#getPing\').window(\'open\');getPing(\''.$com[ip].'\');">■</a>';  
			}
			$result .= '';
		}		
		echo $result;
	}
	
	public function getPing(){    //■■■■■■■■■■■■■■■■■■■■■■获取ping返回值
	 $ip = I('post.pingIP');
			if (PATH_SEPARATOR==':'){          //linux
				exec("ping $ip -c 4",$info);
				if (count($info) < 9){
					return '服务器无法连接';
				}//获取ping的时间
				$str = $info[count($info)-1];
				echo round(substr($str, strpos($str,'/',strpos($str,'='))+1 , 4));
			}
			else{ 								//windows
				exec("CHCP 65001&ping $ip -n 4",$info);
				//iconv('gbk','utf-8',var_export($info,true).';');  
				if (count($info) < 11){
					echo '<span style="color:red;">无法ping通</span>';
				}else{
					echo '<span style="color:green;">能ping通</span>';
				}//获取ping的时间
				echo $ip;
				$str = $info[count($info)-1];
				echo ' '.substr($str,  strripos($str,'=')+1);	
				var_dump($info);
			}
	}
	
	
}