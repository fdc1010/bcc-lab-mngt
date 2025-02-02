<?php
$path = "";
if(!empty($_SERVER['REQUEST_URI'])) {
	$base_path = $_SERVER['REQUEST_URI'];
	$path_arr = explode('/', $base_path);
	$path = $path_arr[count($path_arr)-1];
}
?>

<div id="sidebar-collapse" class="col-sm-3 col-lg-2 col-md-2 sidebar">
		<form role="search">
			<div class="form-group">
				<!-- <input type="text" class="form-control" placeholder="Search"> -->
			</div>
		</form>
		<ul class="nav menu">
			<li <?php echo strtolower(trim($path)) == "dashboard" ? 'class="active"' : ""; ?> >
				<a href="dashboard">
					<svg class="glyph stroked dashboard-dial">
						<use xlink:href="#stroked-dashboard-dial"></use>
					</svg>
					Dashboard
				</a>
			</li>
			<?php $sub_active = in_array(strtolower(trim($path)),array("reservation","new","borrow","return")) ? 'active' : ""; ?>
			<li class="parent <?php echo $sub_active;?>">
				<a href="#sub-item-1" data-toggle="collapse">
					<span data-toggle="collapse" href="#sub-item-1"><svg class="glyph stroked chevron-down"><use xlink:href="#stroked-chevron-down"></use></svg></span> Transaction 
				</a>
				<ul class="children collapse" id="sub-item-1">
					
<li>
						<a <?php echo strtolower(trim($path)) == "reservation" ? 'class="active2"' : ""; ?> href="reservation">
							<svg class="glyph stroked eye">
								<use xlink:href="#stroked-eye"/>
							</svg>
							Reservations
						</a>
					</li>


					<li>
						<a <?php echo strtolower(trim($path)) == "new" ? 'class="active2"' : ""; ?> href="new">
							<svg class="glyph stroked plus sign">
								<use xlink:href="#stroked-plus-sign"/>
							</svg>
							New
						</a>
					</li>
					<li>
						<a <?php echo strtolower(trim($path)) == "borrow" ? 'class="active2"' : ""; ?> href="borrow">
							<svg class="glyph stroked download">
								<use xlink:href="#stroked-download"/>
							</svg>
							Borrowed Items
						</a>
					</li>
					<li>
						<a <?php echo strtolower(trim($path)) == "return" ? 'class="active2"' : ""; ?> href="return">
							<svg class="glyph stroked checkmark">
								<use xlink:href="#stroked-checkmark"/>
							</svg>
							Returned Items
						</a>
					</li>
				</ul>
			</li>
			<?php if($_SESSION['admin_type'] == 1){ ?>
			<li <?php echo strtolower(trim($path)) == "items" ? 'class="active"' : ""; ?> >
				<a href="items">
					<svg class="glyph stroked desktop">
						<use xlink:href="#stroked-desktop"/>
					</svg>
					Item
				</a>
			</li>
			<li <?php echo strtolower(trim($path)) == "members" ? 'class="active"' : ""; ?>>
				<a href="members">
					<svg class="glyph stroked male user ">
						<use xlink:href="#stroked-male-user"/>
					</svg>
					Borrower
				</a>
			</li>
			<li <?php echo strtolower(trim($path)) == "room" ? 'class="active"' : ""; ?>>
				<a href="room">
					<svg class="glyph stroked app-window">
						<use xlink:href="#stroked-app-window"></use>
					</svg>
					Room
				</a>
			</li>
			<li <?php echo strtolower(trim($path)) == "inventory" ? 'class="active"' : ""; ?>>
				<a href="inventory">
					<svg class="glyph stroked clipboard with paper">
						<use xlink:href="#stroked-clipboard-with-paper"/>
					</svg>
					Inventory
				</a>
			</li>
			<li <?php echo strtolower(trim($path)) == "report" ? 'class="active"' : ""; ?>>
				<a href="report">
					<svg class="glyph stroked line-graph">
						<use xlink:href="#stroked-line-graph"/>
					</svg>
					Graph
				</a>
			</li>
			<li <?php echo strtolower(trim($path)) == "user" ? 'class="active"' : ""; ?>>
				<a href="user">
					<svg class="glyph stroked female user">
						<use xlink:href="#stroked-female-user"/>
					</svg>
					User
				</a>
			</li>
			<li <?php echo strtolower(trim($path)) == "category" ? 'class="active"' : ""; ?>>
				<a href="category">
					<svg class="glyph stroked female user">
						<use xlink:href="#stroked-female-user"/>
					</svg>
					Category
				</a>
			</li>
			<li <?php echo strtolower(trim($path)) == "department" ? 'class="active"' : ""; ?>>
				<a href="department">
					<svg class="glyph stroked female user">
						<use xlink:href="#stroked-female-user"/>
					</svg>
					Department
				</a>
			</li>
			<?php 
				}
				($_SESSION['admin_type'] == 1) ? include('include_history.php') : false;
			 ?>
		</ul>
	</div><!--/.sidebar-->