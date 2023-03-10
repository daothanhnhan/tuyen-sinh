<?php

include_once dirname(__FILE__).DIR_FUNCTIONS."library.php";
include_once dirname(__FILE__).DIR_FUNCTIONS_PAGING."Pagination.php";

class action_page extends library{

	/*------ lấy thông tin chi tiết của Page Language từ URL ------*/

	public function getPageLangDetail_byUrl($urlFriendly,$lang){
	    global $conn_vn;
	    $table = $this->nameTable_pageLanguage;
	    $where = "where $this->nameColUrl_pageLanguage = '".$urlFriendly."' and $this->nameColType_pageLanguage = '".$lang."'";
	    $limit = "limit 1";
	    $sql = "SELECT * from $table $where $limit";        
	    $result = mysqli_query($conn_vn,$sql);
	    if (mysqli_num_rows($result) > 0){
	        $row = mysqli_fetch_assoc($result);
	        return $row;
	    } 

	}

	public function getPageLangDetail_byUrl_1($urlFriendly,$lang){
	    global $conn_vn;

	    $sql = "SELECT * FROM page WHERE friendly_url = '$urlFriendly'";
	    $result = mysqli_query($conn_vn, $sql);
	    $row = mysqli_fetch_assoc($result);
	    $page_id = $row['page_id'];
	    $table = $this->nameTable_pageLanguage;
	    $where = "where page_id = $page_id and $this->nameColType_pageLanguage = '".$lang."'";
	    $limit = "limit 1";
	    $sql = "SELECT * from $table $where $limit";//echo $sql;
	    $result = mysqli_query($conn_vn,$sql);
	    if (mysqli_num_rows($result) > 0){
	        $row = mysqli_fetch_assoc($result);
	        return $row;
	    } 

	}

	public function getPageLangDetail_byId($page_id,$lang){
	    global $conn_vn;

	    $sql = "";
	    $table = $this->nameTable_pageLanguage;
	    $where = "where page_id = '".$page_id."' and $this->nameColType_pageLanguage = '".$lang."'";
	    $limit = "limit 1";
	    $sql = "SELECT * from $table $where $limit";//echo $sql;
	    $result = mysqli_query($conn_vn,$sql);
	    if (mysqli_num_rows($result) > 0){
	        $row = mysqli_fetch_assoc($result);
	        return $row;
	    } 

	}

	/*------ lấy thông tin chi tiết của Page tu Id ------*/

	public function getPageDetail_byId($idPage,$lang){
	    global $conn_vn;
	    $table = $this->nameTable_page;
	    $where = "where $this->nameColId_page = '".$idPage."'";
	    $limit = "limit 1";
	    $sql = "SELECT * from $table $where $limit";    	    
	    $result = mysqli_query($conn_vn,$sql);	  
	    if (mysqli_num_rows($result) > 0) {
	    	$row = mysqli_fetch_assoc($result);
	    	return $row;
	    }

	}

}
