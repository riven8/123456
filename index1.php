<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm, tạo, sửa, xóa</title>
</head>
<body>
    <?php
        include './connect_db.php';
        $result = mysqli_query($con, "SELECT * FROM user");
        mysqli_close($con);
        // while ($row = mysqli_fetch_array($result)){
        //     var_dump($row);
        //     exit;
        // }
    ?>
    <style>
        table, th, td{
            border: 1px solid black;
        }
        #user-infor{
            border: 1px solid #ccc;
            width: 700px;
            margin: 0 auto;
            padding: 25px;
        }
        #user-info table{
            margin: 10px auto 0 auto;
            text-align: center;
        }
        #user-info h1{
            text-align: center;
        }
    </style>
    <div id="user-info">
        <h1>Danh sách tài khoản</h1>
        <a href="./CreateUser3.php">Tạo tài khoản mới</a>
        <table id="user-listing" style="width: 700px;">
            <tr>
                <td>Username</td>
                <td>Trạng thái</td>
                <td>Cập nhật lần cuối</td>
                <td>Ngày lập</td>
                <td>Sửa</td>
                <td>Xóa</td>
            </tr>
            <?php
            while($row = mysqli_fetch_array($result)){
                ?>
                <tr>
                    <td><?php echo $row['username']?></td>
                    <td><?= $row['statusIndex'] == 1? "Kích hoạt":"Block" ?></td>
                    <td><?= date('d/m/Y H:i', $row['last_updated']) ?></td>
                    <td><?= date('d/m/Y H:i', $row['created_time']) ?></td>
                    <td><a href="./edit_user.php?id=<?= $row['id'] ?>">Sửa</a></td>
                    <td><a href="./delete_user.php?id=<?= $row['id'] ?>">Xóa</a></td>
                </tr>
            <?php } ?>
        </table>
    </div>
</body>
</html>