<?php
namespace Home\Controller;
use Think\Controller;
class UserController extends Controller{
	public function index(){
		$this->login();
	}
	public function login(){
		$this->display();
	}
	public function checkLogin(){
		if(isset($_POST['userAccount'])){
			$userAccount = $_POST['userAccount'];
		}
		$m = M("user");
		$msg = $m->where("account = '$userAccount'")->find();
		//var_dump($msg);die;
		if($msg){
			echo $msg['name'];
			//$this->success("登陆成功");
			setcookie("userName",$msg['name']);
		}else{
			//$this->error("登陆失败");
		}	
	}
}