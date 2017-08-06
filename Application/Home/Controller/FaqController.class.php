<?php
namespace Home\Controller;
use Think\Controller;
class FaqController extends Controller {
	function _initialize(){
	  $this->m = M("faq");
	}
	public function index(){ 
		$this->display();
	}
	public function getFaqList(){//■■■■■■■■■■■■■■■■■■■■■■全部结果
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
				$data['rows'] = $this->m->where($map)->page(I('post.page'),I('post.rows'))->order('id desc')->select();
		}
		echo json_encode($data);	
	}
	public function updateFaq(){
		$this->m->create($_POST);
		empty($_GET['id'])?$this->m->add():$this->m->where('id='.I('get.id'))->save();
		echo json_encode($this->m);
	}
	public function deleteFaq(){
		if(isset($_POST['id'])){  //home-faq 用post
			$this->m->where('id='.I('post.id'))->delete(); 
			echo json_encode(array('success'=>true));
		}
		if(isset($_GET['id'])){
			$this->m->where('id='.I('get.id'))->delete(); 
			echo "<script>window.close();</script>"; 
		}
	}
	public function faqEdit(){  //■■■■■■■■■■■■■■■■■■■■■■编辑faq
		if(isset($_POST['departmentName'])){   //如果有科室名字就保存并返回ID
			$this->m->create($_POST);
			empty($_POST['id'])?$_POST['id']=$this->m->add():$this->m->where('id='.I('post.id'))->save(); //省代码 $_GET['id'] 新增或传过来都是它
			echo $_POST['id'];
			die;
		}
		if(isset($_GET['id'])){
			$faq = $this->m->where('id='.I('get.id'))->select();
			if(isset($faq))
				$this->assign('faq',$faq['0']);
		}
		$this->display();
	}
	public function faqShow(){
		$faq = $this->m->where('id='.I('get.id'))->select();
		if(isset($faq))
			$this->assign('faq',$faq['0']);
		$this->display();
	}
	
	
	public function time(){
		echo date('Y-m-d H:i:s');
	}
}