<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight_Booking</title>
<style type="text/css">:root{
    --success-color:#2ecc71;
    --error-color: #e74c3c;
    }
    *{
    
    box-sizing: border-box;
    }
    body{
    background: url(Plane1.jpg) no-repeat center center fixed;
    font-family:'Open Sans',sans-serif;
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    margin: 0;
    }
    .container{
   	
   	background-color:white;
    border-radius: 10px;
    
    width: 600px;
    
    opacity:1;
    
    }
    h2{
    text-align: left;
    margin: 0 0 20px;
    color: #e74c3c;
    }
    .form{
    
    padding: 30px 40px;
    
    }
    .form-control{
    backround-color:red;
    margin-bottom: 10px;
    padding-bottom: 20px;
    position: relative;
    font-color:white;
    }
    
    .form-control input{
    border: 2px solid black;
    border-radius: 4px;
    width: 100%;
    padding: 10px;
    font-size: 14px;
    
    }</style>
</head>
<body>
<div class="container">
<form action="PrintInfoServlet" name="StudentRegistration"   method="post" >

<table cellpadding="2" width="90%" align="center"
cellspacing="2">

<tr class="form-control">
<td colspan=2>
<h2>Personal Information & Flight NO</h2>
</td>
</tr>

<tr class="form-control">
<td>Full Name :</td>
<td><input type=text name="fullnames" id="textname" size="30" placeholder="Enter Name"></td>
</tr>

<tr class="form-control">
<td>Age :</td>
<td><input type="text" name="agename" id="age" placeholder="Enter Age"
size="30"></td>
</tr>

<tr>
    <td>DATE OF BIRTH :</td>
     
    <td><input type="date" name="dobname" id="date">
    </tr>

<tr class="form-control">
<td>Personal Address :</td>
<td><textarea type="text" name="personaladdress"
id="personaladdress" rows="4" cols="30" placeholder="Enter Personal Address"></textarea></td>
</tr>

<tr>
<td>Gender :</td>
<td><select  name="gender" value="male" >
<option>select Gender</option>
<option>Male</option>
<option>FeMale</option>
	</select></td>
</tr>

<tr>
<td>Country :</td>
<td><input type="text"name="country" id="country">
</td>
</tr>

<tr>
<td>State :</td>
<td><input type="text" name="state" id="state"> </td>
</tr>


<tr class="form-control">
<td>PinCode :</td>
<td><input type="text" name="pincode" id="pincode" size="2" placeholder="Enter Valid Pincode">(6 digit number)</td>

</tr>
<tr class="form-control">
<td>Email Id:</td>
<td><input type="text" name="emailid" id="emailid" size="50" placeholder="Enter Valid Email Address"></td>
</tr>

<tr class="form-control">
<td>MobileNo :</td>
<td><input type="text" name="mobileno" id="mobileno" size="30" placeholder="Enter Valid Mobile No"> </td>
</tr>
<tr class="form-control">
<td>Flight No :</td>
<td><input type="text" name="flightno" id="flightno" size="30" placeholder="Confirm Flight No"></td>
</tr>

<tr class="formbutton">
<td><input type="reset"></td>
<td colspan="2"><input type="submit" value="Submit Form" /></td>
</tr>
</table>
</form>
</div>

</body>
</html>