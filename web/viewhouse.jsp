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
}  

<%}
if(request.getParameter("m2")!=null){%>

 <script>alert('Login Failed..!')</script>
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
            <h2>House Details</h2>
            <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="databaseconnection.databasecon"%>

<%
   
   ResultSet rs=null;
 try{
    
  Connection con = null;
   con = databasecon.getconnection();
     
     System.out.println("2");
	PreparedStatement pst=con.prepareStatement("select * from house");
        
        pst.execute();
        rs =pst.getResultSet();
	
      
    }catch(Exception e){
        e.printStackTrace();
        }
%>
<center>
<table>        
             <% while(rs.next()){

                 String category=rs.getString("category");
                 String bedroom=rs.getString("bedroom");
                 
                 
                 %>
            
            <%
            String image=rs.getString("image");
           
            %>
            <tr width="100%">
                <td><img src="Gallery/<%=image%>" width="100" height="100"></td>
                <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
               <td> <b> Category Name : &nbsp;</b>
                <b><%=rs.getString("category")%></b><br>  

                <b>Bedrooms: &nbsp;</b> <b><%=bedroom%></b><br>
                
                    <b>Address: &nbsp;</b><b><%=rs.getString("address")%></b><br/>
                    
                    <b>Mobile: &nbsp;</b><b><%=rs.getString("mobile")%></b><br/>

                </td>
            </tr>
            </tr>
        <%}
        
            
        %>  
        </table>
        </div>
</body>
</html>