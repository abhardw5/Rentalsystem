<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
     int id = 0;
	    String username=session.getAttribute("username").toString();
            String location=request.getParameter("location");
            String category=request.getParameter("category");
            String bedroom=request.getParameter("bedroom");
            String availability=request.getParameter("availability");
            String rentcost=request.getParameter("rentcost");
            String name=request.getParameter("name");
            String address=request.getParameter("address");
            String mobile=request.getParameter("mobile");
            String image=request.getParameter("image");
            Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/house",
            "root", "root");
    Statement st = con.createStatement();
  int i = st.executeUpdate("insert into house(uploadby, location, category, bedroom, availability, rentcost, name, address, mobile, regdate, image) values ('" + username + "','" + location + "','" + category + "','" + bedroom + "','" + availability + "', '" + rentcost + "','" + name + "','" + address + "','" + mobile + "',CURDATE(),'" + image + "')");
    
                
      
	if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("addhouse.jsp?m1=success");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("addhouse.jsp?m1=failed");
    }
%>
</body>
</html>