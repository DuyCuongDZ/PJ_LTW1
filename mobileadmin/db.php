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

	//manufactur
	public function manufactur(){
		$sql = "SELECT * FROM `manufactures`";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}

	//Tim kiem
	public function timkiem($Search){
		$sql = "SELECT *
		FROM `protypes`,`products`,`manufactures`
		WHERE `products`.manu_ID = `manufactures`.`manu_ID`
		AND `products`.`type_ID` = `protypes`.`type_ID`
		AND (`name` LIKE '%$Search%' OR `description` LIKE '%$Search%')";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}

	//Phan trang
	public function getAllProducts($page, $per_page){
		// Tính số thứ tự trang bắt đầu  
		$first_link = ($page - 1) * $per_page; 
		$sql = "SELECT * FROM `products`, `manufactures`, `protypes` 
		WHERE `products`.`manu_ID`=`manufactures`.`manu_ID` AND `products`.`type_ID` = `protypes`.`type_ID`
		ORDER BY `ID` DESC
		LIMIT $first_link, $per_page
		"; 
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
	public function getAllManufacture(){
		$sql = "SELECT * FROM `manufactures`";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
	public function getAllProTypes(){
		$sql = "SELECT * FROM `protypes`";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
	//Insert
	public function add($name, $price, $image, $desc, $manu_ID, $type_ID){
		$sql = "INSERT INTO `products`(`name`, `price`, `image`, `description`, `manu_ID`, `type_ID`)
		VALUES ('$name', $price, '$image', '$desc', $manu_ID, $type_ID) ";
		self::$conn->query ($sql);
	}
	public function getTongSP(){
		$sql = "SELECT * FROM `products`";
		$result = self::$conn->query ($sql);        
		return $result->num_rows;
	}
	//xoa
	public function deleteProducts($ID){
		$sql = "DELETE FROM `products` 
		WHERE `ID` = $ID";
		var_dump($sql);
		return self::$conn->query($sql);
	}
	public function deleteManufatures($manu_ID){
		$sql = "DELETE FROM `manufactures` 
		WHERE `manu_ID` = $manu_ID";

		return self::$conn->query($sql);
	}

	//update 
	public function hienThiSP($ID){
		$sql = "SELECT * FROM `products`
		WHERE `ID` = $ID";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
	public function Update($name, $price, $image, $desc, $manu_ID, $type_ID, $id){
		$sql = "UPDATE `products`
		SET `name`='$name',`price`=$price,`image`='$image',`description`='$desc',`manu_ID`=$manu_ID,`type_ID`=$type_ID
		WHERE `ID` = $id";
		self::$conn->query($sql);
	}
	
}