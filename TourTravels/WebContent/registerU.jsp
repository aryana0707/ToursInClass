<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.JavaToDB"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	//scriptlet
	try{
		String name=request.getParameter("fname");
		String lst=request.getParameter("lname");
		String mail=request.getParameter("email");
		String mob=request.getParameter("mob");
		String pass=request.getParameter("upass");
		String gender=request.getParameter("gen");
		String addr=request.getParameter("addr");
		java.util.Date dob=new java.util.Date(request.getParameter("dob"));
		
		SimpleDateFormat sim=new SimpleDateFormat("dd-MMM-yyyy:hh:mm:ss aaa");
		java.util.Date d=new java.util.Date();
		String dor=sim.format(d);
		
		Connection conn=JavaToDB.getCon();
		String sql="insert into userregister values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst=conn.prepareStatement(sql);
		
		pst.setString(1, name);
		pst.setString(2, lst);
		pst.setString(3, mail);
		pst.setString(4, mob);
		pst.setString(5, pass);
		pst.setString(6, gender);
		pst.setString(7, addr);
		
		pst.setDate(8, new java.sql.Date(dob.getTime()));
		
		pst.setString(9, dor);
		
		int x=pst.executeUpdate();
		
		if(x>0){
			out.println("Customer Registered Successfully.");
		}else{
			out.println("NOT REGISTERED.");
		}		
	}catch(Exception e){
		System.out.println(e);
		out.println("Not Registered.");
	}
	
	
	
	%>
	
	

</body>
</html>