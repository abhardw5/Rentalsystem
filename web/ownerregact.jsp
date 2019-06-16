<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
     int id = 0;
	    String username=request.getParameter("username");
            String password=request.getParameter("password");
            String email=request.getParameter("email");
            String mobile=request.getParameter("mobile");
            String dob=request.getParameter("dob");
            String gender=request.getParameter("gender");
            String address=request.getParameter("address");
            String image=request.getParameter("image");
                String status="waiting";
            
		try
		{
        co = databasecon.getconnection();
	PreparedStatement pst2=co.prepareStatement("insert into owner values(?,?,?,?,?,?,?,?,?,?)");

        pst2.setInt(1,id);
	pst2.setString(2,username);
        pst2.setString(3,password);
        pst2.setString(4,email);
        pst2.setString(5,mobile);
        pst2.setString(6,dob);   
        pst2.setString(7,gender); 
        pst2.setString(8,address);
         pst2.setString(9,image);
          pst2.setString(10,status);
        
	pst2.executeUpdate();
                
       response.sendRedirect("owner.jsp?m1=success"); 
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>