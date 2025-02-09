<?php
	require_once "../config/config.php";	
	
	class remove
	{
		public function remove_room($room_id)
		{
			global $conn;

			session_start();
			$h_tbl = 'room';
			$sessionid = $_SESSION['admin_id'];
			$sessiontype = $_SESSION['admin_type'];

			$check = $conn->prepare("SELECT * FROM room WHERE id = ? ");
			$check->execute(array($room_id));
			$check_fetch = $check->fetch();
			$check_row = $check->rowCount();

			$h_desc = 'remove room ' .$check_fetch['rm_name'];

			if($check_row > 0){

				$sql = $conn->prepare('UPDATE room SET rm_status = 0 WHERE id = ?;
										INSERT INTO history_logs(description,table_name,user_id,user_type) VALUES(?,?,?,?)');
				$sql->execute(array($room_id,$h_desc,$h_tbl,$sessionid,$sessiontype));
				echo 1;
			}else{
				echo 0;
			}

		}
		
		public function remove_category($category_id)
		{
			global $conn;

			session_start();
			$h_tbl = 'category';
			$sessionid = $_SESSION['admin_id'];
			$sessiontype = $_SESSION['admin_type'];

			$check = $conn->prepare("SELECT * FROM category WHERE id = ? ");
			$check->execute(array($category_id));
			$check_fetch = $check->fetch();
			$check_row = $check->rowCount();

			$h_desc = 'remove category ' . $check_fetch['category_name'];

			if($check_row > 0){

				$sql = $conn->prepare('UPDATE category SET category_status = 0 WHERE id = ?;
										INSERT INTO history_logs(description,table_name,user_id,user_type) VALUES(?,?,?,?)');
				$sql->execute(array($category_id,$h_desc,$h_tbl,$sessionid,$sessiontype));
				echo 1;
			}else{
				echo 0;
			}

		}
		
		public function remove_department($department_id)
		{
			global $conn;

			session_start();
			$h_tbl = 'department';
			$sessionid = $_SESSION['admin_id'];
			$sessiontype = $_SESSION['admin_type'];

			$check = $conn->prepare("SELECT * FROM department WHERE id = ? ");
			$check->execute(array($department_id));
			$check_fetch = $check->fetch();
			$check_row = $check->rowCount();

			$h_desc = 'remove department '.$check_fetch['department_name'];

			if($check_row > 0){

				$sql = $conn->prepare('UPDATE department SET department_status = 0 WHERE id = ?;
										INSERT INTO history_logs(description,table_name,user_id,user_type) VALUES(?,?,?,?)');
				$sql->execute(array($department_id,$h_desc,$h_tbl,$sessionid,$sessiontype));
				echo 1;
			}else{
				echo 0;
			}

		}
	}

	$remove = new remove();


	$key = trim($_POST['key']);

	switch ($key) {

		case 'remove_room';
		$room_id = $_POST['id'];
		$remove->remove_room($room_id);
		break;

		case 'remove_category';
		$category_id = $_POST['id'];
		$remove->remove_category($category_id);
		break;

		case 'remove_department';
		$department_id = $_POST['id'];
		$remove->remove_department($department_id);
		break;
	}