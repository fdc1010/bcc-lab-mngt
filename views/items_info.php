<?php 
	include './layouts/header.php';

	include './layouts/side_bar.php';

	include './components/items_info_panel.php';
	
	include './layouts/footer.php';
?>

<script type="text/javascript">
	
	var id = '<?php echo $_GET["item"]; ?>';

	equipment_info(id);

	function getequipmentid(){
		return id;
	}
	

</script>