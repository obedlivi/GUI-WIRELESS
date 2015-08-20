<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function movetoplans()
{	
	location.href = "plans.jsp";
}
</script>
</head>
<body>
<input type="button" name="withdevice" id="withdevice" value="PLans with Equipment" onclick="movetoplans()">
<input type="button" name="withoutdevice" id="withoutdevice" value="Individual or group plans" onclick="movetoplans()">
<input type="button" name="orderstatus" id="orderstatus" value ="Order Status" onclick="movetoplans()">
</body>
</html>