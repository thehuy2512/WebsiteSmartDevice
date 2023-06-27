<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản lý khách hàng</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--==================== UNICONS ====================-->
  
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/style.css">
<style>

  </style>
</head>
<body>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid" >
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
        <li style="border: 3px solid;"><a href="#" style="color:black"><i class="uil uil-bill"></i> Phản hồi</a></li>

        
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
  
<div class="container-fluid text-center" style="width: 90%">    
  <div class="row content" style="background-color: #FFFFD7">
    <div class="col-sm-12 text-left"> 
      	<h2 align="center">Danh sách khách hàng</h2>
      	<h3 align="left" style="color: green">Tổng số lượng: ${sl} khách hàng</h3>
      	<table class="table table-hover" style="border: 3px solid">
      		<thead style="border: 3px solid">
      			<tr style="background-color: pink">
      				<td width="50px" height="50px" style="font-weight: bold; text-align: center; color: blue">STT<br><i style="font-size: 25px" class="uil uil-angle-down"></i></td>
      				<td width="150px" height="50px" style="font-weight: bold; text-align: center; color: blue">Mã khách hàng<br><i style="font-size: 25px" class="uil uil-invoice"></i></td>
      				<td width="250px" height="50px" style="font-weight: bold; text-align: center; color: blue">Tên khách hàng<br><i style="font-size: 25px" class="uil uil-user"></i></td>
      				<td width="200px" height="50px" style=";font-weight: bold; text-align: center; color: blue">SĐT<br><i style="font-size: 25px" class="uil uil-mobile-android"></i></td>
      				<td width="350px" height="50px" style="font-weight: bold; text-align: center; color: blue">Địa chỉ<br><i style="font-size: 25px" class="uil uil-house-user"></i></td>
      			</tr>     			
      		</thead>
      		<tbody>
      			<c:set var="stt" value="1"></c:set>
      			<c:forEach items="${dskh}" var="s">
      				<tr>
      					<td style="padding: 10px">${stt}</td>
      					<td style="padding: 10px">${s.getMakh() }</td>
      					<td style="padding: 10px">${s.getTenkh()}</td>
      					<td style="padding: 10px">${s.getSdt() }</td>
      					<td style="padding: 10px">${s.getDiachi() }</td>
      				</tr>
      				<c:set var="stt" value="${stt+1}"></c:set>    				
      			</c:forEach>
      		</tbody>
      	</table>
      	
		<!-- Grid hiển thị sản phẩm -->					
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