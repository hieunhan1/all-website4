<?php
class controlAdmin{
	public $_model;
	public function __construct(){
		$this->_model = new modelAdmin;
	}
	
	public function language(){
		if(!isset($_SESSION['adminLang']))
			$_SESSION['adminLang']=CONS_DEFAULT_LANG;
		else
			if(isset($_GET['lang'])) $_SESSION['adminLang']=$_GET['lang'];
		return $_SESSION['adminLang'];
	}
	
	public function xuLyDangNhap(){
		$user=$this->_model->_changeDauNhay($_POST['username']);
		$pass=$this->_model->_changeDauNhay($_POST['password']);
		$groupId=3;//Quan tri website
		$data=$this->_model->_xuLyDangNhap($user, $pass, $groupId);
		return $data;
	}
	public function listUserRule($typeRule){
		$data=$this->_model->_listMenuAdmin();
		$str = array();
		foreach($data as $row){
			if(preg_match("/,{$row['id']},/i", $typeRule)){
				$str[] = array(
					'id'=>$row['id'],
					'name'=>$row['name'],
					'url'=>$row['url'],
					'img'=>$row['img'],
					'other'=>$row['other'],
					'ajax'=>$row['ajax'],
				);
			}
		}
		return $str;
	}
	public function checkRule($idRule, $listRule){
		if(preg_match("/,{$idRule},/i", $listRule)) return true;
		else return false;
	}
	public function logout(){
		session_unset('adminId');
		session_unset('adminName');
		session_unset('adminUser');
		session_unset('adminRuleView');
		session_unset('adminRuleAction');
		header("location: ".CONS_BASE_URL.'/'.CONS_DEFAULT_ADMIN_CONTROLLER.'/');
		return true;
	}
	
	public function navigator($url){
		return $this->_model->_navigator($url);
	}
	
	public function listLanguages(){
		return $this->_model->_listLanguages();
	}
	
	public function searchData($strSearch, &$urlSearch){
		$fields = array_keys($_GET);
		$values = array_values($_GET);
		for($i=0; $i < count($fields)-1; $i++){
			$value = $this->_model->_changeDauNhay($values[$i]);
			if($fields[$i]=='name') $strSearch .= " AND `name` LIKE '%{$value}%' ";
			elseif($fields[$i]=='menu_id')
				if($value!='0') $strSearch .= " AND `menu_id` LIKE '%,{$value},%' ";
				else $strSearch .= '';
			else $strSearch .= " AND `{$fields[$i]}`='{$value}' ";
			$urlSearch .= "{$fields[$i]}={$values[$i]}&";
		}
		$urlSearch = trim($urlSearch, '&');
		return $strSearch;
	}
	
	public function selectFromAll($lang, &$arr, $table, $selectField='', $orderBy=''){
		if(isset($_GET['page']) && $_GET['page']>0) $currentPage=$_GET['page']; else $currentPage=1;
		settype($currentPage,"int");
		$startRow = ($currentPage-1)*CONS_ADMIN_PER_PAGE;
		$strSearch='';
		$urlSearch='';
		if(isset($_GET['name'])) $strSearch=$this->searchData($strSearch, $urlSearch);
		
		$select = "`{$table}`.`id`, `{$table}`.`name`, `{$table}`.`status`,".$selectField;
		$select = trim($select, ',');
		if($lang!='') $where = "`{$table}`.`lang`='{$lang}' ".$strSearch;
		else $where = "`{$table}`.`id`<>0 ".$strSearch;
		$orderBy = $orderBy.", `{$table}`.`id` DESC ";
		$orderBy = trim($orderBy, ',');
		
		$data = $this->_model->_selectFieldTable($select, $table, $where, $orderBy, CONS_ADMIN_PER_PAGE, $startRow, $totalRows);
		$arr = array(
			'currentPage'=>$currentPage,
			'startRow'	=>$startRow,
			'totalRows'	=>$totalRows,
			'urlSearch'=>$urlSearch
		);
		return $data;
	}
	
	public function pagesList($urlSearch, $totalRows, $offSet, $perPage, $currentPage){
		$totalPages = ceil($totalRows/$perPage);
		if($totalPages==1) return false;
		$from = $currentPage-$offSet;
		$to = $currentPage+$offSet;
		if($from<=0) $from=1; 
		if($to>$totalPages) $to=$totalPages;
		
		$str='';
		if($currentPage>0 && $currentPage<=$totalPages){
			for($j=$from; $j<=$to; $j++){
				if($j!=$currentPage)
					$str.='<a href="'.$urlSearch.'&page='.$j.'">'.$j.'</a>';
				else
					$str.='<span>'.$j.'</span>';
			}
		}elseif($currentPage>$totalPages){
			$str.=ERROR_NOT_FOUND_PAGE;
		}
		return $str;
	}
	
	public function viewFieldIdMenu($lang, $idMenu, $where=NULL){
		$data = $this->selectFromMenu($lang, 'web_menu', $where);
		array_unshift($data, array('id'=>'0', 'name'=>'-- chọn danh mục --'));
		$str = '<select name="menu_id" class="select">';
		foreach($data as $row){
			if($idMenu!=$row['id']) $select=''; else $select='selected="selected"';
			$str .= '<option value="'.$row['id'].'" '.$select.'>'.$row['name'].'</option>';
		}
		$str .= '</select>';
		return $str;
	}
	public function viewFormSearch($str=''){
		$name='';
		if(isset($_GET['name'])) $name=$_GET['name'];
		$str = '<div id="search">
			<form action="" method="get" onsubmit="if(search.value==\'\') return false;">
				<input type="text" name="name" value="'.$name.'" class="txt" placeholder="Mô tả">
				'.$str.'
				<input type="submit" name="btnSearch" value="Tìm kiếm" class="btn">
			</form>
		</div>';
		return $str;
	}
	
	public function createEditData($table, &$arrAction, &$rowDetail){
		if(isset($_GET['id'])) $id=$_GET['id']; else $id=0;
		settype($id,'int');
		if($id==0){
			$lable = CONS_BTN_CREATE;
			$disabled = '';
			$type = 1; /*create*/
			$change = '';/*change_alias*/
		}else{
			$lable = CONS_BTN_UPDATE;
			$disabled = array('propertie'=>'disabled', 'value'=>'disabled');
			$type = 2; /*update*/
			$change = '1';
			$rowDetail = $this->_model->_viewEditDetail($table, $id);
		}
		$arrAction = array(
			'lable'=>$lable,
			'disabled'=>$disabled,
			'change'=>$change
		);
		
		if(!empty($_POST)){
			if(trim($_POST['name'])!=''){
				$fields = array_keys($_POST);
				$values = array_values($_POST);
				$result = $this->_model->_getSql($type, $table, $fields, $values, $id);
			
				if($result==true){
					echo CONS_DATA_ACTION_1;
					header("location: ".$_SESSION['linkBack']);
				}else echo CONS_DATA_ACTION_2;
			}else echo CONS_DATA_ACTION_3;
		}else{
			if(isset($_SERVER['HTTP_REFERER'])) $_SESSION['linkBack'] = $_SERVER['HTTP_REFERER'];
			else $_SESSION['linkBack'] = CONS_BASE_URL.'/'.CONS_DEFAULT_ADMIN_CONTROLLER.'/';
		}
		return $id;
	}
	
	/*other*/
	public function messageChange($message, $change=''){
		$str='<span class="notes">'.$message.'</span>';
		if($change!='') $str = '<a href="javascript:;" id="'.$change.'" class="change">Thay đổi</a>'.$str;
		return $str;
	}
	
	public function selectFromMenu($lang, $table, $where=NULL){
		if($where==NULL) $where = " AND `lang`='{$lang}' ";
		else $where = " AND `lang`='{$lang}' AND ({$where})";
		$data = $this->_model->_webMenu(0, '', NULL, $where);
		return $data;
	}
	
	public function viewDatetime($time){
        return date('Y-m-d H:i', $time);
	}
	/*end other*/
}

include_once('error/admin.php');
$c = new controlAdmin;

$error='';
if(isset($_POST['btnLogin'])){
	$data=$c->xuLyDangNhap();
	if($data!=true) $error=CONS_LOGIN_FAILED;
}


//session_destroy();
if(!isset($_SESSION['adminId'])){
	include_once('view/admin_login.php');
}else{
	include_once('view/admin.php');
}