<?php
namespace Home\Controller;
use Think\Controller;
class ComputerController extends Controller {
	function _initialize(){
	  $this->m = M("computer");
	}
	public function index(){ 
		$this->display();
	}
	public function getComputerList(){
		if(empty($_POST['searchValue'])){ 
				$data['rows'] = $this->m->page(I('post.page'),I('post.rows'))->order('id desc')->select();
				$data['total'] = $this->m->count();	
		}else{
				$fieldsArray = $this->m->getDbFields();
				foreach($this->m->getDbFields() as $fields){
					$map[$fields]  = array('like', '%'.$_POST[searchValue].'%');
				}
				$map['_logic'] = 'or';
				$data['total']= $this->m->where($map)->count();
				$data['rows'] = $this->m->where($map)->page(I('post.page'),I('post.rows'))->select();
		}
		echo json_encode($data);	
	}
	public function updateComputer(){
		$this->m ->create($_POST);
		empty($_GET['id'])?$this->m->add():$this->m->where('id='.I('get.id'))->save();
		echo json_encode($this->m);
	}
	public function deleteComputer(){
		$this->m->where('id='.I('post.id'))->delete(); 
		echo json_encode(array('success'=>true));
	}
}