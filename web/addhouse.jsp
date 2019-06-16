.<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
    
    <script>alert('Added Success..!')</script>
  

<%}
if(request.getParameter("m2")!=null){%>

 <script>alert('Added Failed..!')</script>
 <%
}
%>
<body>

<div id="tooplate_wrapper">
	<div id="tooplate_header">
    	<div id="top"></div>
		
        <div id="tooplate_menu">
            <ul>
               <li><a href="ownerhome.jsp">Home</a></li>
                 <li><a href="viewprofile2.jsp">View Profile</a></li>
                <li><a href="addhouse.jsp">Add House</a></li>
                <li><a href="viewhouse.jsp">View House</a></li>                
                <li><a href="logout.jsp">Logout</a></li>
            </ul>    	
        </div> <!-- end of tooplate_menu -->
		
        <div id="site_title">
            <br>
            <font  size="7" color="black">Online Rental System</font>
             </div>
	</div>
        <div id="home"></div>
        <div class="content_box">
            <h2>Add House</h2>
            
            <form action="addhouseact.jsp" method="post" ><center>
					  <table width="567">
                                            
                        <tr>
                          <td width="238" height="43">Location</td>
                          <td width="317">
                              <input id="Location" name="location" required class="text" placeholder="Location" /></td>
                        </tr>
                        
                        <tr>
                          <td height="43">Category</td>
                          <td><select id="category" name="category" required style="width:170px;" class="text">
                                  <option value="">--Select--</option>
                                  <option value="Indenpendent house">Independent House</option>
                                  <option value="Apartment">Apartment</option>
                          </select></td>
                        </tr>
                        <tr>
                          <td height="43">Bedrooms</td>
                          <td>
                          <input id="Bedrooms" name="bedroom" required class="text" placeholder="Bedrooms"/></td>
                        </tr>
                                               <tr>
                          <td height="43">Availability</td>
                          <td><select id="availability" name="availability" required style="width:170px;" class="text">
                                  <option value="">--Select--</option>
                                  <option value="Individual">Available for renting</option>
                                  <option value="">not available</option>
                          </select></td>
                        </tr>
                         <tr>
                          <td height="43">Cost per month</td>
                          <td>
                          <input id="rentcost" name="rentcost" required class="text" placeholder="Cost"/></td>
                        </tr>
                        <tr>
                          <td height="43">Name</td>
                          <td>
                              <input type="text"  name="name" required class="text" placeholder="Name"/></td>
                        </tr>
                        
                        <tr>
                          <td height="65">Address</td>
                          <td>
                              <input id="address" name="address" required placeholder="Email"> 
                              </input></td>
                        </tr>
                                               <tr>
                          <td height="65">Mobile</td>
                          <td>
                              <input type="text" pattern="[7-9]{1}[0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9"  name="mobile" required placeholder="Mobile"> 
                              </input></td>
                        </tr>
                                              
                                              <tr>
                          <td height="65">Image</td>
                          <td>
                              <input type="file" name="image" required>  
                              </input></td>
                        </tr>
                                              
                        <tr>
                          <td height="43" rowspan="3">
                            <p>&nbsp;</p></td>
                          <td align="left" valign="middle"> <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" type="submit" value="Add" />
                            </p>
                            <div align="right">
                           
                          </div></td>
                        </tr>
                                              </center>
                      </table>
            </form>
            
            
            
            
            
            
            
            
            </div>
        </div>
</body>
</html>