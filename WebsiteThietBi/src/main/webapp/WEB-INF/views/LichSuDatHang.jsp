<%@page import="bo.viewCTDHClientbo"%>
<%@page import="bean.viewCTHDClient"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.hoadonbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Lịch sử mua hàng</title>
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

	ArrayList<hoadonbean> hd = (ArrayList<hoadonbean>) session.getAttribute("hd");
	viewCTDHClientbo ctdh = new viewCTDHClientbo();
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
  
<div class="container-fluid text-center" style="width: 90%">    
  <div class="row content">
    <div class="col-sm-12 text-left" style="background-color: #FCFF8A;border: 1px solid;"> 
      <h1 align="center">Lịch sử đặt hàng</h1>     
      <table class="table table-hover" style="background-color: white;">
       		<% for(hoadonbean s:hd){ %>
       			<tr style="background-color: white;border: 1px solid">       					
       				<p style="font-size: 20px;color: red;font-style: italic;">Mã hoá đơn: <%=s.getMahd()%></p>
       				<table class="table table-hover" style="border: 3px dotted ;">
       					<thead style="background-color: pink">
       						<tr>
       							<td width="10px" height="50px" style="font-weight: bold; text-align: center; color: blue;font-size: 20px">STT<br><i style="font-size: 25px" class="uil uil-angle-down"></i></td>
       							<td width="200px" height="50px" style="font-weight: bold; text-align: center; color: blue;font-size: 20px">Tên sản phẩm<br><i style="font-size: 25px" class="uil uil-laptop"></i></td>
       							<td width="300px" height="50px" style="font-weight: bold; text-align: center; color: blue;font-size: 20px">Ảnh<br><i style="font-size: 25px" class="uil uil-image"></i></td>
       							<td width="200px" height="50px" style="font-weight: bold; text-align: center; color: blue;font-size: 20px">Giá<br><i style="font-size: 25px" class="uil uil-bill"></i></td>
       							<td style="font-weight: bold; text-align: center; color: blue;font-size: 20px">Số lượng mua<br><i style="font-size: 25px"  class="uil uil-exposure-increase"></i></td>	
       						</tr>      						
       					</thead>
       					<tbody>
       						<% 
       						long stt=1;
       						for(viewCTHDClient ct:ctdh.getCTHD(s.getMahd())){ 
       						%>
       						<tr style="background-color: white;">
       							<td style="color: red;font-weight: bold;text-align: center;font-size: 15px;"><%=stt%></td>
       							<td style="font-weight: bold; text-align: center;font-size: 15px;"><%=ct.getTensp()%></td>
       							<td style="font-weight: bold; text-align: center;font-size: 15px;"><img style="width: 200px;height: 200px" src="image/<%=ct.getAnh() %>"></td>
       							<td style="font-weight: bold; text-align: center;font-size: 15px;"><%=ct.getGia()%> VNĐ</td>
       							<td style="font-weight: bold; text-align: center;font-size: 15px;"><%=ct.getSlmua() %> sản phẩm</td>
       						</tr>     						
       						<%
       						stt++;
       						} %>
       					</tbody>
       				</table>
       				<p align="right" style="color: green;font-size: 20px">Tổng tiền: <%=s.getThanhtien()%> VNĐ</p>
       				<div align="right" style="font-size: 25px;">
       				<% if(s.isTrangthai()==true){ %>
       					Trạng thái: <p align="right" style="color: green">Đã thanh toán.</p>
       					<%} else{ %>
       					Trạng thái: <p align="right" style="color: red;">Chưa thanh toán.</p>
       					<%} %>
       				</div>
       				
       			</tr>
       			<div style="background-color: red;height: 5px"></div>
       		<%} %>
      </table>
      <h3 style="text-align: center;color: green;"><i class="uil uil-shop"></i><br>Cảm ơn quý khách đã đặt mua sản phẩm của chúng tôi<br>mọi thắc mắc liên hệ thông tin bên dưới</h3>
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