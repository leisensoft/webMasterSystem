<?php
namespace Home\Controller;
use Think\Controller;
class HitchController extends Controller {
	function _initialize(){
	  $this->m = M("hitch");
	}
	public function index(){ 
		$this->display();
	}
	public function getHitchList(){//■■■■■■■■■■■■■■■■■■■■■■全部结果
		if( empty($_POST['searchValue']) and empty($_POST['departmentValue']) ){ 
				$data['rows'] = $this->m->page(I('post.page'),I('post.rows'))->order('id desc')->select();
				$data['total'] = $this->m->count();	
		}else{   //■■■■■■■■■■■■■■■■■■■■■■ 科室departmentValue 搜索值searchValue
				$fieldsArray = $this->m->getDbFields();
				//添加科室搜索
				if(isset($_POST['departmentValue'])){
					$map['departmentName']  = array('like', '%'.$_POST[departmentValue].'%');
				}
				if(isset($_POST['searchValue'])){
					foreach($this->m->getDbFields() as $fields){
						$map[$fields]  = array('like', '%'.$_POST[searchValue].'%');
					}
				}
				$map['_logic'] = 'or';
				$data['total']= $this->m->where($map)->count();
				$data['rows'] = $this->m->where($map)->page(I('post.page'),I('post.rows'))->select();
		}
		echo json_encode($data);	
	}
	public function getFastHitchList(){//■■■■■■■■■■■■■■■■■■■■■■首页左下角故障表结果
		$data['rows'] = $this->m->where('state="未解决"')->page(I('post.page'),I('post.rows'))->order('id desc')->select();
		$data['total'] = $this->m->where('state="未解决"')->count();
		echo json_encode($data);	
	}
	
	public function updateFaq(){
		$this->m->create($_POST);
		empty($_GET['id'])?$this->m->add():$this->m->where('id='.I('get.id'))->save();
		echo json_encode($this->m);
	}
	public function deleteHitch(){
		if(isset($_POST['id'])){  //home-Hitch 用post
			$this->m->where('id='.I('post.id'))->delete(); 
			$count = $this->m->where('state="未解决"')->count();
			echo json_encode(array('success'=>true,'count'=>$count));
		}
		if(isset($_GET['id'])){
			$this->m->where('id='.I('get.id'))->delete(); 
			echo "<script>window.close();</script>"; 
		}
	}
	public function hitchEdit(){  //■■■■■■■■■■■■■■■■■■■■■■编辑hitch
		if(isset($_POST['departmentName'])){   //如果有科室名字就保存并返回ID
			$this->m->create($_POST);
			empty($_POST['id'])?$_POST['id']=$this->m->add():$this->m->where('id='.I('post.id'))->save(); //省代码 $_GET['id'] 新增或传过来都是它
			echo $_POST['id'];
			die;
		}
		if(isset($_GET['id'])){
			$hitch = $this->m->where('id='.I('get.id'))->select();
			if(isset($hitch))
				$this->assign('hitch',$hitch['0']);
		}
		$this->display();
	}
	public function hitchShow(){		//■■■■■■■■■■■■■■■■■■■■■■故障显示页hitch
		$hitch = $this->m->where('id='.I('get.id'))->select();
		if(isset($hitch))
			$this->assign('hitch',$hitch['0']);
		$this->display();
	}
	public function doneHitch(){  		//■■■■■■■■■■■■■■■■■■■■■■完成hitch
		$this->m->create($_POST);
		$this->m->where('id='.I('post.id'))->save();
		echo json_encode(array('success'=>true));
	}
	public function getFastHitchNumber(){	//■■■■■■■■■■■■■■■■■■■■■■获取未完成hitch数
		echo $this->m->where('state="未解决"')->count();	
	}
	public function saveFastHitch(){
		$this->m->create($_POST);
		$this->m->add();
		echo json_encode(array('success'=>true));
	}
	
	public function time(){
		echo date('Y-m-d H:i:s');
	}
}