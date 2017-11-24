<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="col-sm-2">
		<center>
			<span ><i class="fa fa-bars"id="adv"></i></span>
		</center>
	</div>
	<div class="col-sm-10" style="color: skyblue; height: 40px"id="design"></div>
	<div class="col-sm-2" style="background-color: skyblue; height: 1000px"id="dia">
		<br />
		<center>
			<div style="border: 1px solid black; height: 100px; width: 100px"id="rec"></div>
		</center>
		<center>
			<div class="triangle"
				style="width: 0; height: 0; border: solid 60px; border-color: transparent transparent white transparent;"></div>
		</center>
		<br />
		<center>
			<div class="circle"
				style="width: 100px; height: 100px; border: solid 1px; border-radius: 100px;"id="cir"></div>
		</center>
	</div>



	<%-- SCRIPT GOES HERE --%>
<script type="text/javascript"src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#adv").click(function() {
				$("#dia").slideToggle();
			});
		});
	</script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
	$('#rec,#cir').draggable({
	    helper: "clone"
	}).on('dragstart', function (e, ui) {
	    $(ui.helper).css('z-index','999999');
	}).on('dragstop', function (e, ui) {
	    $(this).after($(ui.helper).clone().draggable());
	});
	 
	</script>
	<script>
	
	</script>
</body>
</html>