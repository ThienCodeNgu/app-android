<?php 
include "connect.php";
$query = "select * from danhmuc";
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
