<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản lý</title>
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
  <div class="row content">
    <div class="col-sm-2 sidenav" style="padding: 20px">
      <div style="background-color: white;"><a href="#" style="font-size: 40px;color: red;"><i class="uil uil-apple"></i> Apple</a></div>
      <div style="background-color: blue;"><a href="#" style="font-size: 40px;color: white;">Samsung</a></div>
      <div style="background-color: green;"><a href="#" style="font-size: 40px;color: white;"><i class="uil uil-android"></i> Oppo</a></div>
      <div style="background-color: black;"><a href="#" style="font-size: 40px;color:orange;">Xiao mi</a></div>
      <div style="background-color: #CECFD5;"><a href="#" style="font-size: 40px;color:#1D3CD4;">DELL</a></div>
      <div style="background-color: white;"><a href="#" style="font-size: 40px;color:#271C8A;">ASUS</a></div>   
    </div>
    <div class="col-sm-8 text-left"> 
      <h1>" Hãy rời đi với một sản phẩm chất lượng của Huy Phone trên tay" - CEO Hoàng Thế Huy</h1>
      <p>Huy Phone một tập đoàn bán lẻ tại Việt Nam với lĩnh vực kinh doanh chính là bán lẻ điện thoại di động, thiết bị số và điện tử tiêu dùng. Theo nghiên cứu của EMPEA, thống kê thị phần bán lẻ điện thoại di động tại Việt Nam năm 2014 thì Huy Phone hiện chiếm 25% và là doanh nghiệp lớn nhất trong lĩnh vực của mình.</p>
      <div class="container" style="width: 100%;">
							 
							  <div id="myCarousel" class="carousel slide" data-ride="carousel">
							    <!-- Indicators -->
							    <ol class="carousel-indicators">
							      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							      <li data-target="#myCarousel" data-slide-to="1"></li>
							      <li data-target="#myCarousel" data-slide-to="2"></li>
							    </ol>
							
							    <!-- Wrapper for slides -->
							    <div class="carousel-inner">
							
							      <div class="item active">
							        <img src="image/iphone-13-1.jpg" alt="Iphone" style="height:250px;align-content: center;">
							        <div class="carousel-caption" style="text-align: right;color: blue">
							          <h3>Iphone 13 - Giá: 45.000.000 VNĐ</h3>
							          <p>Đang giảm giá 10%</p>
							          <p>Phong cách doanh nhân lịch lãm</p>
							        </div>
							      </div>
							
							      <div class="item">
							        <img src="image/dellg3i5.jpg" alt="Dellg3i5" style="height:250px;align-content: center;">
							        <div class="carousel-caption" style="text-align: right;color: blue">
							          <h3>Dell G4 i5 - Giá: 20.999.000 VNĐ</h3>
							          <p>Loại máy bán chạy nhất cho sinh viên IT.</p>
							          <p>Sản phẩm chất lượng cao</p>
							        </div>
							      </div>
							    
							      <div class="item">
							        <img src="image/fptshop.jpg" alt="Cửa hàng" style="height:250px;align-content: center;">
							        <div class="carousel-caption" style="text-align: right;color: blue">							          
							          <h3>Nhân viên thân thiện</h3>
							          <p>Thank you everyone! </p>
							        </div>
							      </div>
							  
							    </div>
							
							    <!-- Left and right controls -->
							    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
							      <span class="glyphicon glyphicon-chevron-left"></span>
							      <span class="sr-only">Previous</span>
							    </a>
							    <a class="right carousel-control" href="#myCarousel" data-slide="next">
							      <span class="glyphicon glyphicon-chevron-right"></span>
							      <span class="sr-only">Next</span>
							    </a>
							  </div>
							</div>	
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