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

<i class="fa fa-dashboard"></i> Dashboard / View Orders

</li>

</ol><!-- breadcrumb Ends  --->

</div><!-- col-lg-12 Ends -->

</div><!-- 1 row Ends -->


<div class="row"><!-- 2 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<div class="panel panel-default"><!-- panel panel-default Starts -->

<div class="panel-heading"><!-- panel-heading Starts -->

<h3 class="panel-title"><!-- panel-title Starts -->

<i class="fa fa-money fa-fw"></i> View Orders

</h3><!-- panel-title Ends -->

</div><!-- panel-heading Ends -->
<div class="panel-body"><!-- panel-body Starts -->
<a class="btn btn-primary" href="index.php?view_orders">All Order</a>
<a class="btn btn-info" href="index.php?view_orders=&orderStatus=Pending">Pending</a>
<a class="btn btn-success" href="index.php?view_orders=&orderStatus=Complete">Complete</a>
<a class="btn btn-warning" href="index.php?view_orders=&orderStatus=Process">Process</a>
<a class="btn btn-info" href="index.php?view_orders=&orderStatus=Dispatch">Dispatch</a>
<a class="btn btn-info" href="index.php?view_orders=&orderStatus=Deliverd">Deliverd</a>
<a class="btn btn-danger" href="index.php?view_orders=&orderStatus=Cancel">Cancel</a>
<hr/>

<form method="get">
    <div class="row">
    <div class="col-md-4">
        <input type="hidden" name="view_orders"/>
        <lable>Start Date</lable>
        <input type="date" name="start-date" class="form-control" required />
    </div>
    <div class="col-md-4">
        <lable>End Date</lable>
        <input type="date"  name="end-date" class="form-control" required  />
    </div>
    <div class="col-md-4">
        <input type="submit" value="search" class="btn btn-info" style="margin-top: 20px;" name="searchbydate" />
    </div>
</div>
    
</form>
<hr/>
<div class="table-responsive"><!-- table-responsive Starts -->

<table class="table table-bordered table-hover table-striped"><!-- table table-bordered table-hover table-striped Starts -->

<thead><!-- thead Starts -->

<tr>

<th>Order No:</th>
<th>Customer Email:</th>
<th>Invoice No:</th>
<th>Order Date:</th>
<th>Total Amount:</th>
<th>Order Status:</th>
<th>Action</th>


</tr>

</thead><!-- thead Ends -->


<tbody><!-- tbody Starts -->

<?php

$i = 0;
$get_orders = "select * from customer_orders";
if($_GET['orderStatus']){
    $status=$_GET['orderStatus'];
    $get_orders = "select * from customer_orders where order_status ='$status'";
}
if($_GET['searchbydate']){
    $start=$_GET['start-date'];
    $end=$_GET['end-date'];
   $get_orders =" SELECT * FROM `customer_orders` WHERE order_date >= '$start' AND order_date <= '$end' ";
}
if($_GET['user_order']){
    $customer_id=$_GET['user_order'];
    $get_orders = "select * from customer_orders where customer_id ='$customer_id'";
}

$run_orders = mysqli_query($con,$get_orders);

while ($row_orders = mysqli_fetch_array($run_orders)) {

$order_id = $row_orders['order_id'];

$c_id = $row_orders['customer_id'];

$invoice_no = $row_orders['invoice_no'];

$product_id = $row_orders['product_id'];

$qty = $row_orders['qty'];

$size = $row_orders['size'];

$order_status = $row_orders['order_status'];

$get_products = "select * from products where product_id='$product_id'";

$run_products = mysqli_query($con,$get_products);

$row_products = mysqli_fetch_array($run_products);

$product_title = $row_products['product_title'];

$i++;

?>

<tr>

<td><?php echo $i; ?></td>

<td>
<?php 

$get_customer = "select * from customers where customer_id='$c_id'";

$run_customer = mysqli_query($con,$get_customer);

$row_customer = mysqli_fetch_array($run_customer);

$customer_email = $row_customer['customer_email'];

echo $customer_email;

 ?>
 </td>

<td bgcolor="yellow" ><?php echo $invoice_no; ?></td>



<td>
<?php

$get_customer_order = "select * from customer_orders where order_id='$order_id'";

$run_customer_order = mysqli_query($con,$get_customer_order);

$row_customer_order = mysqli_fetch_array($run_customer_order);

$order_date = $row_customer_order['order_date'];

$due_amount = $row_customer_order['due_amount'];

echo $order_date;

?>
</td>

<td>$<?php echo $due_amount; ?></td>

<td> <?php echo $order_status;?>

<form method="post" action="index.php?order_update=<?php echo $order_id; ?>">
    <select name="status" >
        <option value="Pending">Pending</option>
        <option value="Complete">Complete</option>
        <option value="Process">Process</option>
        <option value="Dispatch">Dispatch</option>
        <option value="Deliverd">Deliverd</option>
        <option value="Cancel">Cancel</option>
    </select>
    <input type="submit" class="btn btn-success btn-xs" value="update" />
</form>
    
    

</td>

<td>

<a class="btn btn-danger btn-xs" href="index.php?order_delete=<?php echo $order_id; ?>" >

<i class="fa fa-trash-o" ></i> 

</a>

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