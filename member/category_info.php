<?php 
	include 'header.php';

	include '../views/layouts/side_bar.php';
	
	include '../views/components/category_info_panel.php';
	
	include 'footer.php';
?>

<script type="text/javascript">
	$(function() {
		var a = '<?php echo $_GET['name']; ?>';
		var b = '<?php echo $_GET['id']; ?>';
		room_info(a,b);
	});
</script>