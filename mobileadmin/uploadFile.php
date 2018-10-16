<?php
    if(isset($_FILES['fileUpload']) && isset($_POST['name']) && isset($_POST['type_id']) && isset($_POST['manu_id']) && isset($_POST['price'])){

        if($_POST['name'] != '' && $_POST['type_id'] != '' && $_POST['manu_id'] != '' && $_POST['price'] != '' && is_uploaded_file($_FILES['fileUpload']['tmp_name'])){
            
            $check = getimagesize($_FILES['fileUpload']['tmp_name']);
            if($check != false){
                $tagetDir = "public/images/";
                $targetFile = $tagetDir . basename($_FILES['fileUpload']['name']);
                // var_dump($tagetDir);
                // var_dump($targetFile);
                move_uploaded_file($_FILES['fileUpload']['tmp_name'], $targetFile);
                include "config.php";  
                include "db.php";
                $db = new Db;
                $db->add($_POST['name'],$_POST['price'], basename($_FILES['fileUpload']['name']), $_POST['descripsion'], $_POST['manu_id'], $_POST['type_id']);
               header("location:index.php");        
            }
        else
            echo "Khong phai file hinh hop le!!!";
        }
    }
?>
