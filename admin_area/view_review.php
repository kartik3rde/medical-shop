<?php


if(!isset($_SESSION['admin_email'])){

echo "<script>window.open('login.php','_self')</script>";

}

else {


?>

<div class="row"><!-- 1 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<ol class="breadcrumb"><!-- breadcrumb Starts  --->

<li class="active">

<i class="fa fa-dashboard"></i> Dashboard / View Orders Review

</li>

</ol><!-- breadcrumb Ends  --->

</div><!-- col-lg-12 Ends -->

</div><!-- 1 row Ends -->


<div class="row"><!-- 2 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<div class="panel panel-default"><!-- panel panel-default Starts -->

<div class="panel-heading"><!-- panel-heading Starts -->

<h3 class="panel-title"><!-- panel-title Starts -->

<i class="fa fa-money fa-fw"></i> View Orders Review
 
</h3><!-- panel-title Ends -->

</div><!-- panel-heading Ends -->
<div class="panel-body"><!-- panel-body Starts -->

<div class="table-responsive"><!-- table-responsive Starts -->

<table class="table table-bordered table-hover table-striped"><!-- table table-bordered table-hover table-striped Starts -->

<thead><!-- thead Starts -->

<tr>
<th>Sr No:</th>
<th>Order No:</th>
<th>Customer Email:</th>
<th>Name</th>
<th>Message</th>
<th>Action</th>


</tr>

</thead><!-- thead Ends -->


<tbody><!-- tbody Starts -->

<?php

$i = 0;
$get_orders = "select * from orderReview";

$run_orders = mysqli_query($con,$get_orders);

while ($row_orders = mysqli_fetch_array($run_orders)) {

$order_id = $row_orders['orderId'];

$c_id = $row_orders['userId'];
$name=$row_orders['name'];
$message=$row_orders['message'];
$i++;

?>

<tr>

<td><?php echo $i; ?></td>
<td><?php echo $order_id; ?> </td>
<td bgcolor="yellow" ><?php echo $c_id; ?></td>
<td><?php echo $name; ?></td>

<td><?php echo $message; ?></td>
<td>
<a class="btn btn-info btn-xs" href="index.php?order_invoice=<?php echo $order_id; ?>" >

<i class="fa fa-eye" ></i> 

</a>
</td>


</tr>

<?php } ?>

</tbody><!-- tbody Ends -->

</table><!-- table table-bordered table-hover table-striped Ends -->

</div><!-- table-responsive Ends -->

</div><!-- panel-body Ends -->

</div><!-- panel panel-default Ends -->

</div><!-- col-lg-12 Ends -->

</div><!-- 2 row Ends -->


<?php } ?>