<%@page import="java.sql.*"%>
<%
    Connection con = null;
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","password");
    Statement st = con.createStatement();
    String a = request.getParameter("cty_nme");
    String b = request.getParameter("c_code");
    String query = "insert into project.city values ('"+a+"','"+b+"');";
    st.executeUpdate(query);
    response.sendRedirect("adminupdate.jsp");
%>