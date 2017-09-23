<?php
//connectivity
require('config.php');

//captcha
$num1 = range(9,0);
	$num2 = range(9,0);
	$rnum1 = array_rand($num1);
	$rnum2 = array_rand($num2);
	$n1 = $num1[$rnum1];
	$n2 = $num2[$rnum2];
	$sum = $n1 + $n2;
	$res = $n1." + ".$n2;

if(isset($_POST['submit']))
{

if($_POST['c1']==$_POST['c2'])
{



	$n = $_POST['uname'];


	$up=$_POST['upass'];
	$cup=$_POST['cpass'];
	

	$em = $_POST['umail'];
	
	$add = $_POST['address'];
	//$img = $_FILES['file']['name'];
	
	if(!filter_var($_POST['umail'],FILTER_VALIDATE_EMAIL)){

		echo "<script language=\"Javascript\">\n";
		echo "alert('Invalid email');\n";
		echo "window.location='registration.php'";
		echo "</script>";	
	}
	else{

		$gen = $_POST['gender'];
	}

	if(strlen($_POST['umob'])>11){

		echo "<script language=\"Javascript\">\n";
		echo "alert('Mobile Number must be 11 character');\n";
		echo "window.location='registration.php'";
		echo "</script>";
	}
	elseif(substr($_POST['umob'],0,1)!='0'){

		echo "<script language=\"Javascript\">\n";
		echo "alert('Mobile Number must be Start with 0');\n";
		echo "window.location='registration.php'";
		echo "</script>";
	}

	else{

		$mob = $_POST['umob'];
	}

	if($up!=$cup){

		echo "<script language=\"Javascript\">\n";
		echo "alert('Password did not match');\n";
		echo "window.location='registration.php'";
		echo "</script>";
	}
	else{
			$p = md5($_POST['upass']);//encrypt pass
	}




//check user if already exists
$q = "SELECT mob FROM users WHERE mob='$mob'";
$cq = mysqli_query($con,$q);
$ret = mysqli_num_rows($cq);
if($ret == true)
{
	echo "<center><h2 style='color:red'>User with same Mobile no. already exists</h2></center>";
}
//insert into database
else
{
	$query = "INSERT INTO users VALUES ('','$n','$p','$em','$gen','$mob','$add')";
	mysqli_query($con,$query);
	//mkdir("images/".$_POST['umail']);
	//move_uploaded_file($_FILES['file']['tmp_name'],"images/".$_POST['umail']."/".$_FILES['file']['name']);
	echo "<center><h2 style='color:green'>Registration Successfull!</h2></center>";
}

}
}
else
{
}


//display details
if(isset($_POST['display']))
{
	$que = mysqli_query($con,"select * from users");
	
	echo "<div align='center'>";
	echo "<table border='1' bgcolor='#B2B8FF' width='500px'>";
	echo "<tr><th>User ID</th><th>UserName</th><th>Password<br>(Encrypted)</th><th>Email</th><th>Gender</th><th>Mobile No.</th><th>Image</th><th>Option</th></tr>";
	
	while($row= mysqli_fetch_array($que))
	{
	echo "<tr>";
	echo "<td>".$row['id']."</td>";
	echo "<td>".$row['username']."</td>";
	echo "<td>".$row['password']."</td>";
	echo "<td>".$row['email']."</td>";
	echo "<td>".$row['gender']."</td>";
	echo "<td>".$row['mob']."</td>";
	
	$e=$row['email'];
	$img=$row['image'];
	
	echo "<td><img src='images/$e/$img' width='70' height='70'/></td>";
	
	echo "<td><a href='edit.php'>Edit</a>&nbsp;&nbsp;
		<a href='delete.php?email=$e'>Delete</a>
	</td>";
	echo "</tr>";
	}
	echo "</table>";
	echo "</div>";
}
?>
<html>
<head>
<script>
	function go()
	{
		document.location='./login.php';
	}
	function refresh()
	{
		document.location='./index.php';
	}
</script>
</head>
<body style="background-color:#E5E5E5">
<div align="center">
<form method="post" enctype="multipart/form-data">
	<fieldset style="display: inline-flex; background-color: #D8D8D8;">
	<legend><font size="+2"><strong>Registration</strong></font></legend>
	<p><b>UserName : </b><input type="text" name="uname" required/>*</p>
    <p><b>Password : </b><input type="password" name="upass" required/>*</p>
    <p><b>Confirm Password : </b><input type="password" name="cpass" required/>*</p>
    <p><b>Email : </b><input type="email" name="umail" required/>*</p>
    <p><b>Gender : </b><input type="radio" name="gender" value="m">Male&nbsp;<input type="radio" name="gender" value="f">Female</p>
    <p><b>Mobile No : </b><input type="text" name="umob" required/>*</p>
    <b>Address : </b><textarea placeholder="Input Address" name="address"></textarea>
<fieldset style="display: inline-flex; background-color: #D8D8D8;"><legend><strong>Verification</strong></legend><p><?php
error_reporting(1);
echo $res." = ";
?>
<input type="hidden" name="c1" value="<?php echo $sum; ?>">
<input type="text" name="c2" autofocus placeholder="Enter Sum">*</p></fieldset><br>
    <p><input type="submit" name="submit" value="Register">&nbsp;<input type="reset" onClick="refresh()"></p>
</form>
</div>
</body>
</html>