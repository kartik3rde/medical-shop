

<div class="row"><!-- 1 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<ol class="breadcrumb"><!-- breadcrumb Starts  --->

<li class="active">

<i class="fa fa-dashboard"></i> Dashboard / View Orders Invoice

</li>

</ol><!-- breadcrumb Ends  --->

</div><!-- col-lg-12 Ends -->

</div><!-- 1 row Ends -->


<div class="row"><!-- 2 row Starts -->

<div class="col-lg-12"><!-- col-lg-12 Starts -->

<div class="panel panel-default"><!-- panel panel-default Starts -->

<div class="panel-heading"><!-- panel-heading Starts -->

<h3 class="panel-title"><!-- panel-title Starts -->

<i class="fa fa-money fa-fw"></i> View Orders Invoice

</h3><!-- panel-title Ends -->

</div><!-- panel-heading Ends -->
<div class="panel-body"><!-- panel-body Starts -->
<a onclick="PrintDiv()">Print</a>
<div class="table-responsive" id="dvContents"><!-- table-responsive Starts -->

<table class="table table-bordered  table-striped" style="width:100%">

<thead><!-- thead Starts -->
<?php 
 $order_invoice=$_GET['order_id'];
 $get_orders = "select * from customer_orders where order_id ='$order_invoice'";
 $run_orders = mysqli_query($con,$get_orders);
 $row_orders = mysqli_fetch_array($run_orders);
 $productJson=$row_orders['productJson'];
 ?>
<tr>
    <th>Product Id:</th>
    <th>Name:</th>
    <th>Price:</th>
    <th>Qty:</th>
    <th>Amount:</th>
</tr>

</thead><!-- thead Ends -->


<tbody><!-- tbody Starts -->

<?php 
 
 $jsonProduct=json_decode($productJson);
 foreach($jsonProduct as $pro){
     $get_pro = "select * from products where  product_id = '$pro->p_id'";
     $run_prod = mysqli_query($con,$get_pro);
     $row_pros=mysqli_fetch_array($run_prod);
     ?>
     <tr>
          <td><?php echo $pro->p_id; ?></td>
         <td><?php echo $row_pros['product_title']; ?></td>
        
         <td>$<?php echo number_format($pro->p_price,2); ?></td>
         <td><?php echo $pro->qty; ?></td>
         <td>$<?php echo number_format($pro->qty * $pro->p_price,2) ; ?></td>
     </tr>
     <?php
 }
?>
<tr>
    <th colspan="4">
        Total Price
    </th>
    <th colspan="2">
      $<?php echo  number_format($row_orders['due_amount'],2) ; ?>
    </th>
</tr>
<?php
$customer_id=$row_orders['customer_id'];
$get_customer = "select * from customers where customer_id='$customer_id'";

$run_customer = mysqli_query($con,$get_customer);

$row_customer = mysqli_fetch_array($run_customer);

$customer_name = $row_customer['customer_name'];
?>
<tr>
    <th>
        Customer Name
    </th>
    <th >
      <?php echo $customer_name; ?>
    </th>
    <td></td>
     <th >
        Customer Email Address
    </th>
    <td >
      <?php echo  $row_customer['customer_email'] ; ?>
    </td>
</tr>
<tr>
    <th>
        Customer Phone Number
    </th>
    <th >
      <?php echo  $row_customer['customer_contact']; ?>
    </th>
    <td></td>
     <th >
        Customer Address
    </th>
    <td >
    <?php echo  $row_customer['customer_address'] ; ?>,
      <?php echo  $row_customer['customer_city'] ; ?>,
      <?php echo  $row_customer['customer_country'] ; ?>
    </td>
</tr>
</tbody><!-- tbody Ends -->

</table><!-- table table-bordered table-hover table-striped Ends -->

</div><!-- table-responsive Ends -->

</div><!-- panel-body Ends -->

</div><!-- panel panel-default Ends -->

</div><!-- col-lg-12 Ends -->

</div><!-- 2 row Ends -->

<script type="text/javascript">
        function PrintDiv() {
            var divContents = document.getElementById("dvContents").innerHTML;
            var printWindow = window.open('', '', 'height=200,width=400');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(divContents);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        }
    </script>
