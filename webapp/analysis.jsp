<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.scanner.*" %>
<%@ page import="java.util.List" %>

<%@ page import="com.dao.*" %>
<%@ page import="com.model.*" %>

<% 
String hash = request.getParameter("hash");
if (hash.length()<64){
	response.sendRedirect("index.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Malware Scanner Home</title>
<link rel="stylesheet" href="css/sa.css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;400&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Anton&family=Poppins:wght@100;400&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/166366233a.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="navbar">
		<a href="#" class="logo">1-Scan</a>
		<nav>
			<ul class="links">
				<li><a href="index.jsp">HOME </a></li>
				<li><a href="admin.jsp">ADMIN</a></li>
				<li><a href="#">VENDOR LIST</a></li>
				<li><a href="scans.jsp">YOUR SCANS</a></li>
				<li><a href="login.jsp">SIGN IN</a></li>
				<label class="icons"> <i class="fa-solid fa-bars"></i>
				</label>
			</ul>
		</nav>
	</div>
	<h1>Result Page here</h1>
	<div class="file-details">
	<% 
		List<Analysis> analysisList = ScanUtils.parser(ScanDAO.fetchJSON(hash));
		Analysis an = analysisList.get(0);
		if(an.getSignatureInfo().getType().contains("EXE")){
			out.println(an.getSignatureInfo().getFileVersion());
			out.println(an.getSignatureInfo().getComments());
			out.println(an.getSignatureInfo().getMagic());
			out.println(an.getSignatureInfo().getDescription());
	    	out.println(an.getSignatureInfo().getOriginalName());
		}
		else{
			out.println("EXE not found");
			out.println(an.getSignatureInfo().getType());
		}
		
	%>
	</div>
	<div class="analysis">
		<%
			for(Analysis ann: analysisList){
				out.println(ann.getEngineName());
				out.println(ann.getCategory());
			}
		%>
</div>
</body>
</html>