<?php 
	include 'header.php';

	include '../views/layouts/side_bar.php';

	include '../views/components/items_info_panel.php';
	
	include 'footer.php';
?>

<script type="text/javascript">
	
	var id = '<?php echo $_GET["item"]; ?>';

	equipment_info(id);

	function getequipmentid(){
		return id;
	}
	

</script>