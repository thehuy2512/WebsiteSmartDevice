<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chi tiết</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--==================== UNICONS ====================-->
  
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="homeController" style="color:black;font: bold;width: 150px;font-size: 25px">HuyPhone</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" style="color: black;">
      <ul class="nav navbar-nav">
        <li style="border: 3px solid;"><a href="adminHome.jsp" style="color:white;"><i class="uil uil-home"></i> Home</a></li>
        <li style="border: 3px solid;"><a href="adminHomeSanphamController" style="color:black"><i class="uil uil-mobile-android"></i> Sản phẩm</a></li>
        <li style="border: 3px solid;"><a href="adminKhachhangController" style="color:black"><i class="uil uil-users-alt"></i> Khách hàng</a></li>
        <li style="border: 3px solid;"><a href="adminHoadonController" style="color:black"><i class="uil uil-bill"></i> Hoá đơn</a></li>

        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <c:choose>
        <c:when test="${sessionScope.kh==null && sessionScope.ad==null}">
      		<li><a href="Login.jsp" style="color:white"><span class="glyphicon glyphicon-log-in"></span> Log in</a></li>
        	<li><a href="Register.jsp" style="color:white"><span class="glyphicon glyphicon-log-in"></span> Register</a></li>
        </c:when>
        <c:otherwise>
        	<p style="height:15px;">${sessionScope.kh.getTenkh()}${sessionScope.ad.getTennv()}</p>        		
        	<a href="LogOutController" style="color: white;"><span class="glyphicon glyphicon-log-out"></span> Log out</a>    	  	
        </c:otherwise>
        </c:choose>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <div style="background-color: white;"><a href="#" style="font-size: 40px;color: red;"><i class="uil uil-apple"></i> Apple</a></div>
      <div style="background-color: blue;"><a href="#" style="font-size: 40px;color: white;">Samsung</a></div>
      <div style="background-color: green;"><a href="#" style="font-size: 40px;color: white;"><i class="uil uil-android"></i> Oppo</a></div>
      <div style="background-color: black;"><a href="#" style="font-size: 40px;color:orange;">Xiao mi</a></div>
      <div style="background-color: #CECFD5;"><a href="#" style="font-size: 40px;color:#1D3CD4;">DELL</a></div>
      <div style="background-color: white;"><a href="#" style="font-size: 40px;color:#271C8A;">ASUS</a></div>
      
    </div>
    <div class="col-sm-8 text-left"> 
      	<h1 align="center">Chi tiết hoá đơn</h1>
      	<p style="color: lime;font-family: monospace;font-size: 30px">Mã hoá đơn: ${mahd}</p>
      	<br>
      	<table class="table table-hover" style="border: 3px solid">
      		<thead style="border: 3px solid">
      			<tr style="background-color: pink">
      				<td width="50px" height="50px" style="font-weight: bold; text-align: center; color: blue">STT<br><i style="font-size: 25px" class="uil uil-angle-down"></i></td>
      				<td width="150px" height="50px" style="font-weight: bold; text-align: center; color: blue">Tên sản phẩm<br><i style="font-size: 25px" class="uil uil-laptop"></i></td>
      				<td width="250px" height="50px" style="font-weight: bold; text-align: center; color: blue">Ảnh<br><i style="font-size: 25px" class="uil uil-image"></i></td>
      				<td width="150px" height="50px" style=";font-weight: bold; text-align: center; color: blue">Giá<br><i style="font-size: 25px" class="uil uil-bill"></i></td>
      				<td width="100px" height="50px" style="font-weight: bold; text-align: center; color: blue">Số lượng mua<br><i style="font-size: 25px"  class="uil uil-exposure-increase"></i></td>
      			</tr>     			
      		</thead>
      		<tbody>
      			<c:set var="stt" value="1"></c:set>
      			<c:forEach items="${dscthd}" var="s">
      				<tr>
      					<td style="padding: 10px;color: red;font-weight: bold;text-align: center;font-size: 15px;">${stt}</td>
      					<td style="padding: 10px">${s.getTensp() }</td>
      					<td align="center" style="padding: 10px;"><img width="200px" height="200px" src="image/${s.getAnh()}"></td>
      					<td align="right" style="padding: 10px">${s.getGia()} VNĐ</td>
      					<td align="right" style="padding: 10px">${s.getSlmua() } Sản phẩm</td>      			
      				</tr>
      				<c:set var="stt" value="${stt+1}"></c:set>    				
      			</c:forEach>
      		</tbody>
      	</table>
      	
		<!-- Grid hiển thị sản phẩm -->					
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>Trang dành cho quản lý</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>
  <b>Copyright @2021 Hoàng Thế Huy All rights Reserved. </b><br>
			IT Developer Huế<br>
			1/116 Phan Chu Trinh Street, Huế City, Thừa Thiên Huế Provide, Việt Nam<br>
			Giấy chứng nhận đăng ký kinh doanh số: xxx<br>
			Mã số doanh nghiệp xxxxxxx - Đăng ký thay đổi lần 8 ngày 10/11/2021<br>
			Ðiện Thoại (+84)78 8843 951 - Mail: thehuy.2pro@gmail.com<br>
			Website: <a href="https://www.facebook.com/hth.hth.790/">https://www.facebook.com/hth.hth.790/</a> và <a href="">www.chuadk.com.vn</a><br>
			Rất vui được phục vụ quý khách
  
  </p>
</footer>
 
</body>
</html>