<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>House Rental</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2027 Melody
http://www.tooplate.com/view/2027-melody
-->
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.lightbox-0.5.css" rel="stylesheet" type="text/css" media="screen" /> 

<script type='text/javascript' src='js/jquery.min.js'></script>
<script type='text/javascript' src='js/jquery.scrollTo-min.js'></script>
<script type='text/javascript' src='js/jquery.localscroll-min.js'></script>
<script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script> 

<script type="text/javascript">
$(document).ready(function () 
{
	$.localScroll();
	$('#map a').lightBox();
});
</script>

</head>
    <%
if(request.getParameter("m1")!=null){%>
    
    <script>alert('Login Success..!')</script>


<%}
if(request.getParameter("m2")!=null){%>

 <script>alert('Login Failed... Username/password Incorrect.!')</script>
 <%
}
%>
<body>

<div id="tooplate_wrapper">
	<div id="tooplate_header">
    	<div id="top"></div>
		
        <div id="tooplate_menu">
            <ul>
              <li><a href="index.html">Home</a></li>
                          <li><a href="client.jsp">Admin</a></li>
                <li><a href="owner.jsp">Customer</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
            </ul>    	
        </div> <!-- end of tooplate_menu -->
	<div id="site_title">
            <br>
            <font  size="7" color="black">Online Rental System</font>
             </div>
	</div>
        <div id="home"></div>
        <div class="content_box">
            <h2>Admin Login</h2>
                    <form action="clientact.jsp" method="post" id="adminact" >
                        <br><br>
                        <center>


                            <table>
                                <tr>
                                    <td align="right"><font size="2" color="white"> User Name: </font>
                                    </td><td> 
                                    <input type="text" align="left" size="25" name="username" placeholder=UserName required /></td>
                                </tr> <tr></tr> <tr></tr> <tr></tr> <tr></tr> <tr></tr> <tr></tr>
                                <tr>
                                    <td align="right"><font size="2" color="white">Password:</font>
                                    </td><td> 
                                    <input type="password" align="left" size="25" name="password" placeholder=Password required /></td>
                                </tr>
                                <tr></tr> <tr></tr> <tr></tr>
                                 <tr>
                                    <td>
                                       <center> <font size="2" color="green">
                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <input type="submit" form="adminact" align="right" value='Submit' />
                                    </td>
                                     <td>
                                        <font size="2" color="green"> 
                                            <input type="reset" align="left" value='Reset'  />
                                    </td>
                                </tr>
                            </center>
                                        
                                        </table>
</div>
</body>
</html>