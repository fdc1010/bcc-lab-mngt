<?php 
	include './layouts/header.php';

	include './layouts/side_bar.php';
	
	include './components/category_info_panel.php';
	
	include './layouts/footer.php';
?>

<script type="text/javascript">
	$(function() {
		var a = '<?php echo $_GET['name']; ?>';
		var b = '<?php echo $_GET['id']; ?>';
		room_info(a,b);
	});
</script>