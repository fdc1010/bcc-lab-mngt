<?php 
	include './layouts/header.php';

	include './layouts/side_bar.php';
?>

<div class="col-sm-9 col-lg-10 col-md-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-3 main">

	<div class="row">
		<ol class="breadcrumb">
			<li><a href="dashboard"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
			<li class="active">User Profile</li>
		</ol>
		<div class="breadcrumb">
		</div>
	</div><!--/.row-->

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
				
					<table class="table table-bordered">
						<tr>
							<td>Name</td>
							<td><?php echo $_SESSION['admin_name'];?></td>
						</tr>
						<tr>
							<td>Username</td>
							<td><?php echo $_SESSION['admin_username'];?></td>
						</tr>
						<tr>
							<td>User type</td>
							<td><?php echo ($_SESSION['admin_type'] == 1) ? 'Administrator' : 'Staff';?></td>
						</tr>
					</table>
				</div>
			</div><!-- panel -->
		</div><!-- panel -->

	</div><!-- row -->

	
</div>






<?php include './layouts/footer.php'; ?>