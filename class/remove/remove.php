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

		public function remove_item($e_id)
		{
			global $conn;

			session_start();
			$h_desc = 'edit item';
			$h_tbl = 'item';
			$sessionid = $_SESSION['admin_id'];
			$sessiontype = $_SESSION['admin_type'];

			$check = $conn->prepare('SELECT * FROM item WHERE id = ?');
			$check->execute(array($e_id));
			$check_fetch = $check->fetch();
			$check_row = $check->rowCount();

			$h_desc = 'remove item '.$check_fetch['i_deviceID'];

			if($check_row > 0){
				$sql = $conn->prepare('UPDATE item SET i_status = 0 WHERE id = ?;
					INSERT INTO history_logs(description,table_name,user_id,user_type) VALUES(?,?,?,?)');
				$sql->execute(array($e_id,$h_desc,$h_tbl,$sessionid,$sessiontype));
				echo 1;
			}else{
				echo 0;
			}



		}

		public function remove_member($member_id)
		{

			global $conn;

			session_start();
			$h_desc = 'edit client';
			$h_tbl = 'client';
			$sessionid = $_SESSION['admin_id'];
			$sessiontype = $_SESSION['admin_type'];

			$check = $conn->prepare('SELECT * FROM member WHERE id = ?');
			$check->execute(array($member_id));
			$check_fetch = $check->fetch();
			$check_row = $check->rowCount();

			$h_desc = 'remove member '.$check_fetch['m_school_id'];

			if($check_row > 0){
				$sql = $conn->prepare('UPDATE member SET m_status = 0 WHERE id = ?;
					INSERT INTO history_logs(description,table_name,user_id,user_type) VALUES(?,?,?,?)');
				$sql->execute(array($member_id,$h_desc,$h_tbl,$sessionid,$sessiontype));
				echo 1;
			}else{
				echo 0;
			}
		}

		public function edit_user($user_id)
		{
			global $conn;

			session_start();
			$h_desc = 'edit user';
			$h_tbl = 'user';
			$sessionid = $_SESSION['admin_id'];
			$sessiontype = $_SESSION['admin_type'];

			$check = $conn->prepare('SELECT * FROM user WHERE id = ?');
			$check->execute(array($user_id));
			$check_fetch = $check->fetch();
			$check_row = $check->rowCount();

			$h_desc = 'remove user '.$check_fetch['username'];

			if($check_row > 0){
				$sql = $conn->prepare('UPDATE user SET `status` = 2 WHERE id = ?;
					INSERT INTO history_logs(description,table_name,user_id,user_type) VALUES(?,?,?,?)');
				$sql->execute(array($user_id,$h_desc,$h_tbl,$sessionid,$sessiontype));
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
		$room_id = $_POST['room_id'];
		$remove->remove_room($room_id);
		break;

		case 'remove_category';
		$category_id = $_POST['category_id'];
		$remove->remove_category($category_id);
		break;

		case 'remove_department';
		$department_id = $_POST['department_id'];
		$remove->remove_department($department_id);
		break;

		case 'remove_item';
		$item_id = $_POST['item_id'];
		$remove->remove_item($item_id);
		break;

		case 'remove_member';
		$member_id = $_POST['member_id'];
		$remove->remove_member($member_id);
		break;

		case 'remove_user';
		$user_id = $_POST['user_id'];
		$remove->remove_user($user_id);
		break;
	}