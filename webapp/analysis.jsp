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
<link rel="stylesheet" href="css/analysis.css">
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
<script src="js/loading.js"></script>
	
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
	<div class="result">
	<div class="container">
		<h1>Analysis</h1>
		<hr>
		<% 
		List<Analysis> analysisList = ScanUtils.parser(ScanDAO.fetchJSON(hash));
		out.print(ScanUtils.counter(analysisList)+" Detected this file as malicious"); %>
		<h2>File Details</h1>
		<hr>
	<%
	
		Analysis an = analysisList.get(0);
		if(an.getSignatureInfo().getType().contains("EXE")){
			out.println(an.getSignatureInfo().getFileVersion());
			out.println(an.getSignatureInfo().getComments());
			out.println(an.getSignatureInfo().getMagic());
			out.println(an.getSignatureInfo().getDescription());
	    	out.println(an.getSignatureInfo().getOriginalName());
		}
		else{
			out.println(an.getSignatureInfo().getType());
		}	
	%>
	<h2>Detection</h1>
	<hr>
	<div class="heading">
	<div class="eng-name">Engine Name</div>
	<div class="analysish">Analysis</div>
	</div>
		<%
			for(Analysis ann: analysisList){
				out.println("<div style='display: flex; justify-content: space-between;'>");
				out.println("<div>" + ann.getEngineName() + "</div>");
				out.println("<div>" + ann.getCategory() + "</div>");
				out.println("</div>");
			}
		%>
</div>
</div>
</body>
</html>