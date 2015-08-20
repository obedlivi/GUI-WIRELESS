<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-1.9.1.js"></script>
<script type="text/javascript">
	var data_file = "products.js";

	$(document)
			.ready(
					function() {
						var xmlhttp;
						if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
							xmlhttp = new XMLHttpRequest();
						} else {// code for IE6, IE5
							xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
						}
						xmlhttp.onreadystatechange = function() {
							if (xmlhttp.readyState == 4
									&& xmlhttp.status == 200) {

								//document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
								//document.getElementById("myDiv").innerHTML="In ajax";
								var jsonObj = JSON.parse(xmlhttp.responseText);
								var jsonObj1 = jsonObj.product;
								//alert(jsonObj1[0].productName);
								var i = 0;
								for (i = 0; i < jsonObj1.length; i++) {
									//alert(jsonObj1[i].productName);

									var newbt = document
											.createElement("button");
									newbt.setAttribute("id",
											jsonObj1[i].productName);
									newbt.setAttribute("name",
											jsonObj1[i].productName);
									newbt.setAttribute("type","button");
									var bt_text = document
											.createTextNode(jsonObj1[i].productName);
									newbt.appendChild(bt_text);
									document.getElementById("myDiv")
											.appendChild(newbt);

									//document.getElementById("myDiv").innerHTML="<input type='button' value="+jsonObj1[i].productName+">";
									// document.getElementById("myDiv").innerHTML=jsonObj1[i].productName;
								}

							}
						}
						xmlhttp.open("GET", data_file, true);
						xmlhttp.send();

						var jqxhr = $.post("plans.jsp", function() {
							alert("success")
						});
						
					$(document.body).on(
								'click',
								'button',
								function() {
									var jsonObj = JSON.parse(xmlhttp.responseText);
									var jsonObj1 = jsonObj.product;
									//alert ('button ' + this.id + ' clicked');
									var i=0;
									for(i=0;i<jsonObj1.length;i++)
										{
										//$("p").remove();
										  if(this.id==jsonObj1[i].productName)
										{
											  document.getElementById("Divdetails").innerHTML="PRODUCT NAME : "+jsonObj1[i].productName+"<br>"+"DEVICE : "+jsonObj1[i].device+"<br>"+"DETAILS : "+jsonObj1[i].details+"<br>"+"COST : "+jsonObj1[i].cost;
												/*var pa= document.createElement("p");
											 	var pa_text = document.createTextNode("uuu"+jsonObj1[i].productName);
												pa.appendChild(pa_text);
												document.getElementById("Divdetails")
												.appendChild(pa);
												

												pa= document.createElement("p");
											 	pa_text = document.createTextNode(jsonObj1[i].device);
												pa.appendChild(pa_text);
												document.getElementById("Divdetails")
												.appendChild(pa);
												

												pa= document.createElement("p");
											 	pa_text = document.createTextNode(jsonObj1[i].details);
												pa.appendChild(pa_text);
												document.getElementById("Divdetails")
												.appendChild(pa);

												pa= document.createElement("p");
											 	pa_text = document.createTextNode(jsonObj1[i].cost);
												pa.appendChild(pa_text);
												document.getElementById("Divdetails")
												.appendChild(pa);*/
										}
										}
									//var newpara = document.createElement("p");
									 //alert("Enter");
									//var paratxt = document
									//		.createTextNode("Hello");

									//newpara.appendChild(paratxt);
								//	document.getElementById("Divdetails")
										//	.appendChild(newpara);

									//location.href="details.jsp";
									//$("#txtpara").text("Hello");
								});

					});
</script>
</head>
<body>
	In here
	<form action="">

		<div id="myDiv"></div>
		<div id="Divdetails"></div>
		
	</form>


</body>
</html>