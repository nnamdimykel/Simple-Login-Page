<?php
/* Log out process, unsets and destroys session variables */
require 'db.php';
session_start();
// update data in mysql database 
$sql="UPDATE users SET first_name='".$_POST['first_name']."', last_name='".$_POST['last_name']."' WHERE id='".$_POST['id']."'";

$result=mysql_query($sql)or 
die ("this stuffedup");

// if successfully updated. 
if($result){
echo "Successful";
echo "<BR>";
echo "<a href='list_records.php'>View result</a>";
}

else {
echo "ERROR";
}

?>
$id=$_GET['id'];



// Retrieve data from database 
$sql="SELECT * FROM porting.ports WHERE id = '$id'";
$result=mysql_query($sql);
$rows=mysql_fetch_array($result);
?>
<body>


<table width="1200" border="0" cellspacing="1" cellpadding="0">
<tr>
<form name="form1" method="post" action="update_ac.php">
<td>
<table width="100%" border="0" cellspacing="1" cellpadding="0">
<tr>
<td>&nbsp;</td>
<td colspan="6"><strong>Update Porting Details</strong> </td>
</tr>
<tr>
<td align="center">&nbsp;</td>
<td align="center">&nbsp;</td>
<td align="center">&nbsp;</td>
<td align="center">&nbsp;</td>
</tr>
<tr>
<td align="center">&nbsp;</td>
<td align="center"><strong>Customer</strong></td>
<td align="center"><strong>Number</strong></td>
<td align="center"><strong>Type</strong></td>
<td align="center"><strong>Completed</strong></td>
</tr>
<tr>
<td>&nbsp;</td>
<td align="center">
<input name="Customer" type="text" id="Customer" value="<?php echo $rows['Customer']; ?>"size= "15"/>
</td>
<td align="center">
<input name="Number" type="text" id="Number" value="<?php echo $rows['Number']; ?>" size="15"/>
</td>
<td align="center">
<input name="Type" type="text" id="Type" value="<?php echo $rows['Type']; ?>" size="15"/>
</td>
<td align="center">
<input name="Comments" type="text" id="Completed" value="<?php echo $rows['Comments']; ?>" size="15"/>
</td>
<tr>
</table>
<input name="id" type="hidden" id="id" value="<?php echo $rows['id']; ?>"/>
<input type="submit" name="Submit" value="Submit" /></td>
<td align="center">&nbsp;</td>
</td>
</form>
</tr>
</table>
</body>
</html>
update_
