<?php 
include "connect.php";
$query = "SELECT * FROM sanpham 
WHERE thoigian >= DATE_SUB(NOW(), INTERVAL 1 MONTH) 
AND thoigian <= NOW();";
$data = mysqli_query($conn, $query);
$result = array();
while ($row = mysqli_fetch_assoc($data)){
    $result [] = ($row);
}
if (!empty($result)){
    $arr = [
        'sucess' => true,
        'message' => "thanh cong",
        'result' => $result
    ];
}else {
    $arr = [
        'sucess' => false,
        'message' => "khong thanh cong",
        'result' => $result
    ];
}

 print_r(json_encode($arr));

?>