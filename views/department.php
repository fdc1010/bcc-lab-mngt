<?php 
	include './layouts/header.php';

	include './layouts/side_bar.php';
?>

<div class="col-sm-10 col-sm-offset-2 col-md-10 col-md-offset-2 col-lg-10 col-lg-offset-2 main">	
	<div class="row">
		<ol class="breadcrumb">
			<li><a href="dashboard"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
			<li class="active">Department</li>
		</ol>
		<div class="breadcrumb">
			<button class="btn btn-primary col-sm-offset-10 add_department">
				<svg class="glyph stroked plus sign">
					<use xlink:href="#stroked-plus-sign"/>
				</svg>
				Add Department
			</button>
		</div>
	</div><!--/.row-->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<table class="table table-hover table_department">
						<thead>
							<tr>
								<th>Department</th>
								<th>Action</th>
							</tr>
						</thead>
					</table>
				</div>
			</div><!-- panel -->
		</div><!-- panel -->

	</div><!-- row -->
</div>

<div class="right-sidebar department-side">
	<div class="sidebar-form">
		<div class="container-fluid">
			<form class="frm_adddepartment">
				<h4 class="alert bg-navbar-panel"><i class="fa fa-plus"></i> Add Department</h4>
				<div class="form-group">
					<label>Department</label>
					<input type="number" name="department_name" min="0" class="form-control" autofocus autocomplete="off" required>
				</div>
				<div class="form-group">
					<div class="row">
						<div class="col-md-6">
							<button class="btn btn-danger btn-block cancel_department" type="button">
								<i class="fa fa-remove"></i>
								CANCEL
							</button>
						</div>
						<div class="col-md-6">
							<button class="btn btn-primary btn-block" type="submit">
								SAVE
								<i class="fa fa-check"></i>
							</button>
						</div>
					</div>
				</div>
			</form>
			<div class="div_editdepartment"></div>
		</div>
	</div>
</div>

<div class="right-sidebar editdepartment-side">
	<div class="sidebar-form">
		<div class="container-fluid">
			<form class="frm_editdepartment">
				<h4 class="alert bg-navbar-panel"><i class="fa fa-edit"></i> Edit Department</h4>
				<div class="form-group">
					<label>Department</label>
					<input type="text" name="edit_department_name" class="form-control" autofocus required autocomplete="off" >
					<input type="hidden" name="edit_cat_id">
				</div>
				<div class="form-group">
					<div class="col-md-6">
						<button class="btn btn-danger btn-block cancel_editdepartment" type="button">
							<i class="fa fa-remove"></i>
							CANCEL
						</button>
					</div>
					<div class="col-md-6">
						<button class="btn btn-primary btn-block" type="submit">
							UPDATE
							<i class="fa fa-check"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>



<?php include './layouts/footer.php'; ?>