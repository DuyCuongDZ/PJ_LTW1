<?php
class Db{
	//Tao bien $conn ket noi
	public static $conn;
	//Tao ket noi trong ham construct
	public function __construct(){
		self::$conn = new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);
		self::$conn->set_charset('utf8');
	}
	public function __destruct(){
		self::$conn->close();
	}
	public function getData($obj){
		$arr = array();
		while($row = $obj->fetch_assoc()){
			$arr[] = $row;
		}
		return $arr;
	}
	//Viết câu truy vấn lấy ra thong tin 
	
	public function getAllProducts($page, $per_page){
		// Tính số thứ tự trang bắt đầu  
		$first_link = ($page - 1) * $per_page; 
		$sql = "SELECT * FROM `products`, `manufactures`, `protypes` 
		WHERE `products`.`manu_ID`=`manufactures`.`manu_ID` AND `products`.`type_ID` = `protypes`.`type_ID` LIMIT $first_link, $per_page"; 
		$result = self::$conn->query ($sql);        
		return $this->getData($result);     
	}
	public function paginate($url, $total, $page, $per_page, $offset){
		if($total <= 0){
			return "";    
		} 
		$total_links = ceil($total/$per_page);    
			if($total_links <= 1){ 
				return ""; 
			} 
			$from = $page - $offset; 
			$to = $page + $offset;    
			if($from <= 0){      
				$from = 1; 
				$to = $offset * 2; 
			} 
				if($to > $total_links) {      
					$to = $total_links;      
				} 
						    
			$link = ""; 
			for ($j = $from; $j <= $to; $j++) { 
				$link = $link."<a href = '$url?page=$j'> $j </a>"; 
			} 
				return $link; 
	} 
		//login
	public function getUserByUSName($username){
		$sql = "SELECT * FROM `user`
		WHERE username = '$username'";
		//	var_dump($sql);
		$result = self::$conn->query ($sql);        
		return $this->getData($result);		 
	}
}