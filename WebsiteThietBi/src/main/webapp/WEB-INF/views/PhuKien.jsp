<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Phụ kiện</title>
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
      <a class="navbar-brand" href="#" style="color:black;font: bold;width: 150px;font-size: 25px">HuyPhone</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" style="color: black;">
      <ul class="nav navbar-nav">
        <li style="border: 3px solid;"><a href="homeController" style="color:white;"><i class="uil uil-home"></i> Home</a></li>
        <li style="border: 3px solid;"><a href="SanPhamPhanLoaiController?maloai=dt&tentrang=Phone" style="color:black"><i class="uil uil-mobile-android"></i> Phone</a></li>
        <li style="border: 3px solid;"><a href="SanPhamPhanLoaiController?maloai=lap&tentrang=Laptop" style="color:black"><i class="uil uil-laptop"></i> Laptop</a></li>
        <li style="border: 3px solid;"><a href="SanPhamPhanLoaiController?maloai=tablet&tentrang=Tablet" style="color:black"><i class="uil uil-tablet"></i> Tablet</a></li>
        <li style="border: 3px solid;"><a href="SanPhamPhanLoaiController?maloai=phukien&tentrang=PhuKien" style="color:black"><i class="uil uil-headphones-alt"></i> Phụ kiện</a></li>
        <li style="border: 3px solid;"><a href="GioHang.jsp" style="color:black"><i class="uil uil-shopping-cart-alt"></i> Giỏ hàng(${sessionScope.gh.Tongsanpham()!=null ? sessionScope.gh.Tongsanpham() : 0 })</a></li>
        <li style="border: 3px solid;"><a href="LichSuDatHangController" style="color:black"><i class="uil uil-history"></i> Lịch sử mua hàng</a></li>
      	<c:if test = "${sessionScope.ad!=null}">
         <li style="border: 3px solid;"><a href="adminHome.jsp" style="color:black"><i class="uil uil-user"></i> Admin</a></li>
      	</c:if>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <c:choose>
        <c:when test="${sessionScope.kh==null && sessionScope.ad==null}">
      		<li><a href="Login.jsp" style="color:white;border: 1px solid;border-radius: 20px"><span class="glyphicon glyphicon-log-in"></span> Log in</a></li>
        	<li><a href="Register.jsp" style="color:white;border: 1px solid;border-radius: 20px"><span class="glyphicon glyphicon-log-in"></span> Register</a></li>
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
  
<div class="container-fluid text-center" style="width: 90%;background-color: yellow;">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p style="font-weight: 600;font-family: monospace;font-size: 30px">Thương hiệu Phụ kiện</p>
      <div style="background-color: white;"><a href="SanPhamThuongHieuController?maloai=phukien&mathuonghieu=apple&tentrang=PhuKien" style="font-size: 40px;color: red;"><i class="uil uil-apple"></i> Apple</a></div>
      <div style="background-color: blue;"><a href="SanPhamThuongHieuController?maloai=phukien&mathuonghieu=samsung&tentrang=PhuKien" style="font-size: 40px;color: white;">Samsung</a></div>
      <div style="background-color: #CECFD5;"><a href="SanPhamThuongHieuController?maloai=phukien&mathuonghieu=dell&tentrang=PhuKien" style="font-size: 40px;color:#1D3CD4;">DELL</a></div>
      
      
    </div>
    <div class="col-sm-8 text-left" style="background-color: white;"> 
      <h1>" Hãy rời đi với một sản phẩm chất lượng của Huy Phone trên tay" - CEO Hoàng Thế Huy</h1>
      <p>Huy Phone một tập đoàn bán lẻ tại Việt Nam với lĩnh vực kinh doanh chính là bán lẻ điện thoại di động, thiết bị số và điện tử tiêu dùng. Theo nghiên cứu của EMPEA, thống kê thị phần bán lẻ điện thoại di động tại Việt Nam năm 2014 thì Huy Phone hiện chiếm 25% và là doanh nghiệp lớn nhất trong lĩnh vực của mình.</p>
      <div class="container" style="width: 100%;height: 100%">
							 
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
							          <h3>Iphone 13 <br> Giá: 45.000.000 VNĐ</h3>
							          <p>Đang giảm giá 10%</p>
							          <p>Phong cách doanh nhân lịch lãm</p>
							        </div>
							      </div>
							
							      <div class="item">
							        <img src="image/dellg3i5.jpg" alt="Dellg3i5" style="height:250px;align-content: center;">
							        <div class="carousel-caption" style="text-align: right;color: blue">
							          <h3>Dell G4 i5 <br> Giá: 20.999.000 VNĐ</h3>
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
		
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well" style="border:1px solid">
        <form action="homeController" method="POST">
        	<div style="width: 100%;margin: auto">
	        	<p align="left">Tìm kiếm sản phẩm:</p>
	        	<input  style="width: 100%" type="text" name="txttimkiem" placeholder="Tìm kiếm">
	        	<div>
	        	<input class="btn btn-primary submit" type="submit" value="Tìm kiếm" name="buttimkiem">	        	
	        	</div>
	        	<p style="color: red;">${mes}</p>
        	</div>
        </form>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
  <hr>
</div>
<!-- Grid hiển thị sản phẩm -->					
							<div class="grid-container" style="width: 90%;margin: auto;border: 1px solid;">
								  <c:forEach items="${dssp}" var="sp">
								  	<div class="grid-item">
								  			<img src="image/${sp.getAnh()}" style="width: 200px;height: 200px"><br>
								  			<p style="font: bold;background-color: red;color:white">${sp.getTensp() }</p>
											<p style="font-family: monospace;">Giá sản phẩm: ${sp.getGia() } VNĐ</p>	
							  				<c:choose>
							  					<c:when test="${sp.getTrangthai()}">
							  						<p style="color: green;">Còn hàng</p>
							  					</c:when>
							  					<c:otherwise>
							  						<p style="color: red;">Hết hàng</p>
							  					</c:otherwise>
							  				</c:choose>
							  				<a href="GioHangController?masp=${sp.getMasp()}&tensp=${sp.getTensp()}&gia=${sp.getGia()}&maloai=${sp.getMaloai()}&mathuonghieu=${sp.getMathuonghieu()}&anh=${sp.getAnh()}"><img style="width: 150px" src="image/nutdathang.png"></a>
								  	</div>
								  </c:forEach>
  								  
  							      
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