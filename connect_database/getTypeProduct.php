<?php 
include "connect.php";
$page = $_POST["page"];
$total = 5; //tổng số sản phẩm được hiển thị trên một trang
$pos =  ($page-1)*$total;
$loai = $_POST['loai'];
$query = "select * from sanpham where 'id_danhmuc' = $loai LIMIT $page,$total";
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