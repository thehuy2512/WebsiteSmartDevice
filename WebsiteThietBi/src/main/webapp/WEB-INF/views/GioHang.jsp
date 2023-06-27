<%@page import="bean.giohangbean"%>
<%@page import="Controller.GioHangController"%>
<%@page import="bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Giỏ hàng</title>
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
<%
	request.setCharacterEncoding("utf-8") ;
	response.setCharacterEncoding("utf-8");
	
	giohangbo gh1 = (giohangbo) session.getAttribute("gh");
%>
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
  
<div class="container-fluid text-center" style="width: 90%;border: 1px solid;">    
  <div class="row content" style="width: 90%;">
    <div class="col-sm-2 sidenav">
      <div style="background-color: white;"><a href="#" style="font-size: 40px;color: red;"><i class="uil uil-apple"></i> Apple</a></div>
      <div style="background-color: blue;"><a href="#" style="font-size: 40px;color: white;">Samsung</a></div>
      <div style="background-color: green;"><a href="#" style="font-size: 40px;color: white;"><i class="uil uil-android"></i> Oppo</a></div>
      <div style="background-color: black;"><a href="#" style="font-size: 40px;color:orange;">Xiao mi</a></div>
      <div style="background-color: #CECFD5;"><a href="#" style="font-size: 40px;color:#1D3CD4;">DELL</a></div>
      <div style="background-color: white;"><a href="#" style="font-size: 40px;color:#271C8A;">ASUS</a></div>
      
    </div>
    <div class="col-sm-10 text-left"> 
      <h1 align="center">Giỏ hàng</h1>
      <p style="color: green;font-size: 20px;" align="center" >Tổng số lượng: ${sessionScope.gh.Tongsanpham()!=null ? sessionScope.gh.Tongsanpham() : 0 } Sản phẩm</p>
      <table class="table table-hover" border="1px solid">
      	<thead>
      		<tr style="background-color: pink">
      			<td width="10px" height="50px" style="font-weight: bold; text-align: center; color: blue">STT<br><i style="font-size: 25px" class="uil uil-angle-down"></i></td>
      			<td width="200px" height="50px" style="font-weight: bold; text-align: center; color: blue">Tên sản phẩm<br><i style="font-size: 25px" class="uil uil-laptop"></i></td>
      			<td width="300px" height="50px" style="font-weight: bold; text-align: center; color: blue">Ảnh<br><i style="font-size: 25px" class="uil uil-image"></i></td>
      			<td width="150px" height="50px" style="font-weight: bold; text-align: center; color: blue">Giá<br><i style="font-size: 25px" class="uil uil-bill"></i></td>
      			<td width="" height="50px" style="font-weight: bold; text-align: center; color: blue;">Số lượng<br><i style="font-size: 25px"  class="uil uil-exposure-increase"></i></td>
      			<td width="80px" height="50px" style="font-weight: bold; text-align: center; color: blue">Cập nhật<br><i style="font-size: 25px" class="uil uil-trowel"></i></td>
      			<td width="80px" height="50px" style="font-weight: bold; text-align: center; color: blue">Xoá hàng<br><i style="font-size: 25px" class="uil uil-multiply"></i></td>
      		</tr>
      	</thead>
      	<tbody>
      		
      		<%
      		long s=1;
      		if (gh1!=null)
      			for(giohangbean sp:gh1.ds){
      		%>
      					<tr>
      						<td style="color: red;font-weight: bold;text-align: center"><%=s %></td>
      						<td><%=sp.getTensp() %></td>
      						<td><img style="width: 200px;height: 200px" src="image/<%=sp.getAnh() %>"></td>
      						<td><%=sp.getGia()%> VNĐ</td>
      						<td>Số lượng: <%=sp.getSlmua() %>
      							<form action="SuaGioHangController" method="get">
      								
      								
      								<input type="number" min="0" name="txtsoluong" value="0" required="">
      								Nhập số lượng khác:
      						</td>
      						<td>
      							<button style="background-color: #FFF11C" name="buttonsua" value="<%=sp.getMasp()%>">Cập nhật</button>
      						</td>
      						<td>
      							<button style="background-color: #E51D3F" name="buttonxoa" value="<%=sp.getMasp()%>">Xoá hàng</button>
      						</td>
      							</form>
      					</tr>
      		<% s++; } %>    		
      	</tbody>
      </table>
      <br>
      <div>
      		
 			<p style="font-family: monospace;color: green;font-size: 30px" align="right">Tổng tiền: ${sessionScope.gh.Tongtien()!=null ? sessionScope.gh.Tongtien() : 0 } VNĐ</p> 
 			<p align="center" style="color: green;font-size: 20px">${mess}</p>
 			<% if(gh1!=null) {
 				if(gh1.Tongtien()>0) {
 			%>
 			<div align="center">
 				<a style="background-color:#1EFF34;font-size:30px;text-align: center;border: 1px solid;padding: 5px" href="DatHangController">Đặt mua</a> 				
 				<a style="background-color:#FF1C1C;color:white;font-size:30px;text-align: center;border: 1px solid;padding: 5px" href="XoaallGioHangController">Xoá hết</a>
 			</div>   
 			<%} else{ %> 
 				<p align="center" style="font-size: 25px">Chưa có hàng nào được chọn! Hãy lựa chọn sản phẩm nào!</p>
 			<%}} else{ %>
 				<p align="center" style="font-size: 25px">Hãy đăng nhập và lựa chọn sản phẩm nào!</p>
 			<%} %>
 			
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