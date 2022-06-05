<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.order"%>

<%
	
	//Insert order------------------------------
	if(request.getParameter("itemCode") != null){
		
		order orderObj = new order();
		
		String stsMsg = orderObj.insertOrder(request.getParameter("itemCode"),
				request.getParameter("itemName"),
				request.getParameter("itemPrice"),
				request.getParameter("itemDesc"));
		
		session.setAttribute("statusMsg",stsMsg);
	}

//Delete order----------------------------------
	if (request.getParameter("itemID") != null)
	{
		order orderObj = new order();
		String stsMsg = orderObj.deleteorder(request.getParameter("itemID"));
		session.setAttribute("statusMsg", stsMsg);
	}
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders Management</title>
</head>
<body>
	
	<h1>Orders Management</h1>
	<form method="post" action="order.jsp">
	
	Item code: <input name="itemCode" type="text" <%if(request.getParameter("btnUpdate") != null){%>
		value='<%= session.getAttribute("code")  %>'
	<% }%>><br>
	
	Item name: <input name="itemName" type="text" <%if(request.getParameter("btnUpdate") != null){%>
		value="<%= session.getAttribute("name") %>"
	<% }%>><br>
	
	Item price: <input name="itemPrice" type="text" <%if(request.getParameter("btnUpdate") != null){%>
		value="<%= session.getAttribute("price") %>"
	<% }%>><br>
	
	Item description: <input name="itemDesc" type="text" <%if(request.getParameter("btnUpdate") != null){%>
		value="<%= session.getAttribute("desc") %>"
	<% }%>><br>
	
	<input name="btnSubmit" type="submit" value="Save">
	</form>
	
	<%
		//out.print(item[0]);
		out.print(session.getAttribute("statusMsg"));
	
	%>
	<br>
	<%
	
		order orderObj = new order();
		out.print(orderObj.readOrders());
	
	%>

</body>
</html>