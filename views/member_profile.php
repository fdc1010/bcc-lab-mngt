<?php 
	include './layouts/header.php';

	include './layouts/side_bar.php';

	include './components/member_profile_panel.php';
	
	include './layouts/footer.php';
?>

<script type="text/javascript">
	var id = '<?php echo $_GET['id']; ?>';
	console.log(id);
	member_profile(id);
</script>