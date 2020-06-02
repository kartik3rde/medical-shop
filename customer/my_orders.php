
<center><!-- center Starts -->

<h1>My Orders</h1>

<p class="lead"> Your orders on one place.</p>

<p class="text-muted" >

If you have any questions, please feel free to <a href="../contact.php" > contact us,</a> our customer service center is working for you 24/7.


</p>


</center><!-- center Ends -->

<hr>

<div class="table-responsive" ><!-- table-responsive Starts -->

<table class="table table-bordered table-hover" ><!-- table table-bordered table-hover Starts -->

<thead><!-- thead Starts -->

<tr>

<th>O N:</th>
<th>Due Amount:</th>
<th>Invoice No:</th>
<th>Order Date:</th>
<th>Status:</th>
<th>Action:</th>


</tr>

</thead><!-- thead Ends -->

<tbody><!--- tbody Starts --->

<?php
if($_GET['order_id']){
    
$order_id = $_GET['order_id'];
$update_order_status=  $_GET['status'];
$delete_order = "UPDATE `customer_orders` SET `order_status`= '$update_order_status'  WHERE  order_id='$order_id'";
 mysqli_query($con,$delete_order);
}
$customer_session = $_SESSION['customer_email'];

$get_customer = "select * from customers where customer_email='$customer_session'";

$run_customer = mysqli_query($con,$get_customer);

$row_customer = mysqli_fetch_array($run_customer);

$customer_id = $row_customer['customer_id'];

$get_orders = "select * from customer_orders where customer_id='$customer_id'";

$run_orders = mysqli_query($con,$get_orders);

$i = 0;

while($row_orders = mysqli_fetch_array($run_orders)){

$order_id = $row_orders['order_id'];

$due_amount = $row_orders['due_amount'];

$invoice_no = $row_orders['invoice_no'];

$qty = $row_orders['qty'];

$size = $row_orders['size'];

$order_date = substr($row_orders['order_date'],0,11);

$order_status = $row_orders['order_status'];

$i++;

?>

<tr><!-- tr Starts -->

<th><?php echo $i; ?></th>

<td>$<?php echo $due_amount; ?></td>

<td><?php echo $invoice_no; ?></td>

<td><?php echo $order_date; ?></td>

<td><?php echo $order_status; ?></td>

<td>
    <?php 
    if($order_status == 'Cancel'){
        ?>
        <a href="my_account.php?my_orders=&order_id=<?php echo $order_id; ?>&status=Pending"  class="btn btn-success btn-xs" > Re Order </a>
  <?php
    }else{
        ?>
        <a href="my_account.php?my_orders=&order_id=<?php echo $order_id; ?>&status=Cancel"  class="btn btn-danger btn-xs" > Order Cancel </a>
        <?php
    }
    ?>

<a href="confirm.php?order_id=<?php echo $order_id; ?>" target="blank" class="btn btn-primary btn-xs" > Confirm If Paid </a>
<a  data-toggle="modal" data-target="#exampleModal"  class="btn btn-info btn-xs" onclick="setOrderID(<?php echo $order_id; ?>)"> Feedback </a>
<a href="my_account.php?order_invoice=&order_id=<?php echo $order_id; ?>" target="blank" class="btn btn-primary btn-xs" > View </a>
</td>


</tr><!-- tr Ends -->

<?php } ?>

</tbody><!--- tbody Ends --->


</table><!-- table table-bordered table-hover Ends -->

</div><!-- table-responsive Ends -->

<?php if($_POST['name']){
    $name=$_POST['name'];
    $message=$_POST['message'];
    $orderId=$_POST['orderId'];
    $userId = $_POST['userId'];
    $insertQry="INSERT INTO `orderReview`(`orderId`, `userId`, `name`, `message`) VALUES ('$orderId','$userId','$name','$message')";
    $getFeedback = mysqli_query($con,$insertQry);
    echo "<script>alert('Order review successfully saved')</script>";

echo "<script>window.open(window.location.href,'_self')</script>";
} 
?>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"  aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form  method="post" ><!-- form Starts -->

            <div class="form-group" ><!-- form-group Starts -->
            
            <label>Name</label>
            
            <input type="text" class="form-control" name="name" required>
            
            </div><!-- form-group Ends -->
            <input type="hidden" id="order_id" name="orderId"/>
            <input type="hidden" name="userId" value="<?php echo $_SESSION['customer_email']; ?>" />
            <div class="form-group"><!-- form-group Starts -->
            
            <label> Message </label>
            
            <textarea class="form-control" name="message"> </textarea>
            
            </div><!-- form-group Ends -->



            <div class="text-center"><!-- text-center Starts -->
            
            <button type="submit" name="feedbackSave" class="btn btn-primary">
            
            <i class="fa fa-user-md"></i> Send Message
            
            </button>
            
            </div><!-- text-center Ends -->

        </form><!-- form Ends -->
      </div>
      <!--<div class="modal-footer">-->
      <!--  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>-->
      <!--  <button type="button" class="btn btn-primary">Save changes</button>-->
      <!--</div>-->
    </div>
  </div>
</div>

<script>
    function setOrderID(id){
        document.getElementById("order_id").value=id
    }
</script>