<?php
/*
数据库
ljl_department
表 id name ips(ip段)  type(医技/后勤) phone(办公室:8888 护士站:8888 门诊:8888) leader(主管及联系方式)
E-MAIL: leisensoft@163.com 
TIME  : 2014年9月22日 
*/
namespace Home\Controller;
use Think\Controller;
class DepartmentController extends Controller {
	function _initialize(){
	  $this->m = M("department");
	}
	public function index(){ 
		$this->display();
	}
	public function getDepartmentList(){
		if(empty($_POST['searchValue'])){ 
				$data['total'] = $this->m->count();	
				$data['rows']  = $this->m->page(I('post.page'),I('post.rows'))->order('id desc')->select();
		}else{
				$fieldsArray = $this->m->getDbFields();
				foreach($this->m->getDbFields() as $fields){
					$map[$fields]  = array('like', '%'.$_POST[searchValue].'%');
				}
				$map['_logic'] = 'or';
				$data['total'] = $this->m->where($map)->count();	
				$data['rows'] = $this->m->where($map)->page(I('post.page'),I('post.rows'))->select();
		}
		echo json_encode($data);	
	}
	public function updateDepartment(){
		$this->m ->create($_POST);
		empty($_GET['id'])?$this->m->add():$this->m->where('id='.I('get.id'))->save();
		echo json_encode($this->m);
	}
	public function deleteDepartment(){
		$this->m->where('id='.I('post.id'))->delete(); 
		echo json_encode(array('success'=>true));
	}
}