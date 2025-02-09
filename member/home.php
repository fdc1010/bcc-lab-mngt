<?php 
date_default_timezone_set('Asia/Manila');
	include 'm_header.php';
	include 'm_side_bar.php';
	include 'make_reservation.php';
?>



<?php include 'm_footer.php'; ?>

<script type="text/javascript">
$(document).ready(function(){
	$("#timeLimit").datetimepicker({
		minTime: '<?php echo date("H:i"); ?>',
		maxTime: '18:00',
		minDate: 0,
		format:'Y-m-d h:i A',
		step: 15
	});
});
</script>