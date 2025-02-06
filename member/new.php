<?php 
date_default_timezone_set('Asia/Manila');
include 'header.php';

include '../views/layouts/side_bar.php';

include '../views/components/new_panel.php';

include 'footer.php';
?>

		<script type="text/javascript">
			$(document).ready(function(){
				$("#timeLimit").datetimepicker({
					minTime: '<?php echo date("H:i"); ?>',
					maxTime: '18:00',
					minDate: 0,
					maxDate: 0,
					format:'Y-m-d h:i A',
					step: 15
				});
			});
		</script>