<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.modules.IslikeClass"%>
<%
List<IslikeClass> like = (List<IslikeClass>) request.getAttribute("list");

%>
<!-- Start Footer -->
<html>
<head>
<title>krihally</title>
   <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css'>    
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
<link rel="shortcut icon" href="res/img/favicon.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/res/css/navbar.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/res/css/footer.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/res/css/Error.css">


<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:500"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Titillium+Web:700,900"
	rel="stylesheet">


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->



<link rel="stylesheet"
	href="${pageContext.request.contextPath}/res/css/bootstrap.min.css">
<script>
var lb= document.getElementById("likebtn");
function change() {
	lb.classList.remove("fa-thumbs-up");
 lb.classList.add("fa-thumbs-down");
}
</script>
</head>
<body>
	<%@ include file="navbar.jsp"%>

<br>
<br>
	<%
	if (like.size() == 0) {
		//<button  class="btn bi bi-hand-thumbs-down">
	%>
	<p>aucun record</p>

	<%
	}
	%>

	
		<%
		for (IslikeClass l : like) {
		
		%>

<div class="album bg-light">
		<div class="container">
			<div class="card mb-4 box-shadow pb-5">
				<div class="card-body"
					style="font-family: 'Montserrat', sans-serif;">
					<div class="row ">
						<div class="col-12">
								
							<h5 style="text-align: left;">
								<i class="fas fa-gas-pump"></i> nom &nbsp:
								<%=l.getAvis() %>
							</h5>
							
							
						
							<a href="AvisServl?action=changelike&id_avis=<%=l.getId() %>"><button class="btn fa fa-thumbs-up">kk</button></a>
		<a href="AvisServl?action=changeDislike&id_avis=<%=l.getId() %>"><button class="btn fa fa-thumbs-down">ll</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

			<%
			}
			%>

</body>

</html>
<!-- End Socket -->