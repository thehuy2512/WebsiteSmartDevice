<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--==================== UNICONS ====================-->
  
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/style.css">

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
        <li style="border: 3px solid;"><a href="SanPhamPhanLoaiController?maloai=phukien&tentrang=PhuKien" style="color:black"><i class="uil uil-headphones-alt"></i> Ph??? ki???n</a></li>
        <li style="border: 3px solid;"><a href="GioHang.jsp" style="color:black"><i class="uil uil-shopping-cart-alt"></i> Gi??? h??ng(${sessionScope.gh.Tongsanpham()!=null ? sessionScope.gh.Tongsanpham() : 0 })</a></li>
        <li style="border: 3px solid;"><a href="LichSuDatHangController" style="color:black"><i class="uil uil-history"></i> L???ch s??? mua h??ng</a></li>
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
  
<div class="container-fluid text-center" style="width: 90%;background-color: yellow;" >    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p style="font-weight: 600;font-family: monospace;font-size: 20px">Th????ng hi???u<br>h??ng ?????u</p>
      <div style="background-color: white;"><a href="#" style="font-size: 40px;color: red;"><i class="uil uil-apple"></i> Apple</a></div>
      <div style="background-color: blue;"><a href="#" style="font-size: 40px;color: white;">Samsung</a></div>
      <div style="background-color: green;"><a href="#" style="font-size: 40px;color: white;"><i class="uil uil-android"></i> Oppo</a></div>
      <div style="background-color: black;"><a href="#" style="font-size: 40px;color:orange;">Xiao mi</a></div>
      <div style="background-color: #CECFD5;"><a href="#" style="font-size: 40px;color:#1D3CD4;">DELL</a></div>
      <div style="background-color: white;"><a href="#" style="font-size: 40px;color:#271C8A;">ASUS</a></div>
    </div>
    <div class="col-sm-8 text-left" style="background-color: white;"> 
      <h1>" H??y r???i ??i v???i m???t s???n ph???m ch???t l?????ng c???a Huy Phone tr??n tay" - CEO Ho??ng Th??? Huy</h1>
      <p>Huy Phone m???t t???p ??o??n b??n l??? t???i Vi???t Nam v???i l??nh v???c kinh doanh ch??nh l?? b??n l??? ??i???n tho???i di ?????ng, thi???t b??? s??? v?? ??i???n t??? ti??u d??ng. Theo nghi??n c???u c???a EMPEA, th???ng k?? th??? ph???n b??n l??? ??i???n tho???i di ?????ng t???i Vi???t Nam n??m 2014 th?? Huy Phone hi???n chi???m 25% v?? l?? doanh nghi???p l???n nh???t trong l??nh v???c c???a m??nh.</p>
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
							          <h3>Iphone 13 <br> Gi??: 45.000.000 VN??</h3>
							          <p>??ang gi???m gi?? 10%</p>
							          <p>Phong c??ch doanh nh??n l???ch l??m</p>
							        </div>
							      </div>
							
							      <div class="item">
							        <img src="image/dellg3i5.jpg" alt="Dellg3i5" style="height:250px;align-content: center;">
							        <div class="carousel-caption" style="text-align: right;color: blue">
							          <h3>Dell G4 i5 <br> Gi??: 20.999.000 VN??</h3>
							          <p>Lo???i m??y b??n ch???y nh???t cho sinh vi??n IT.</p>
							          <p>S???n ph???m ch???t l?????ng cao</p>
							        </div>
							      </div>
							    
							      <div class="item">
							        <img src="image/fptshop.jpg" alt="C???a h??ng" style="height:250px;align-content: center;">
							        <div class="carousel-caption" style="text-align: right;color: blue">							          
							          <h3>Nh??n vi??n th??n thi???n</h3>
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
		<!-- Grid hi???n th??? s???n ph???m -->					
							
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well" style="border:1px solid">
        <form action="homeController" method="POST">
        	<div style="width: 100%;margin: auto">
	        	<p align="left">T??m ki???m s???n ph???m:</p>
	        	<input  style="width: 100%" type="text" name="txttimkiem" placeholder="T??m ki???m">
	        	<div>
	        	<input class="btn btn-primary submit" type="submit" value="T??m ki???m" name="buttimkiem">	        	
	        	</div>
	        	<p style="color: red;">${mes}</p>
        	</div>
        </form>
      </div>
      <div class="well" style="border:1px solid">
      	<c:if test="${sessionScope.kh!=null}">
        	<a class="btn btn-primary" href="ChangePassword.jsp" style="font-size: 20px">?????i m???t kh???u <br>t???i ????y.</a>
        </c:if>
      </div>
    </div>
  </div>
<hr>
</div>

 <div class="grid-container" style="width: 90%;margin: auto;border: 1px solid;">
								  <c:forEach items="${dssp}" var="sp">
								  	<div class="grid-item">
								  			<img src="image/${sp.getAnh()}" style="width: 200px;height: 200px"><br>
								  			<p style="font: bold;background-color: red;color:white">${sp.getTensp() }</p>
											<p style="font-family: monospace;">Gi?? s???n ph???m: ${sp.getGia() } VN??</p>	
							  				<c:choose>
							  					<c:when test="${sp.getTrangthai()}">
							  						<p style="color: green;">C??n h??ng</p>
							  					</c:when>
							  					<c:otherwise>
							  						<p style="color: red;">H???t h??ng</p>
							  					</c:otherwise>
							  				</c:choose>
							  				<a href="GioHangController?masp=${sp.getMasp()}&tensp=${sp.getTensp()}&gia=${sp.getGia()}&maloai=${sp.getMaloai()}&mathuonghieu=${sp.getMathuonghieu()}&anh=${sp.getAnh()}"><img style="width: 150px" src="image/nutdathang.png"></a>
								  	</div>
								  </c:forEach>
  								  
  							      
</div>

<div class="container div-register" style="border: 1px solid;background-color: light;width: 90%;">
      <form action="#" method="post" name="frmregister" id="frmregister" style="width: 60%;margin: auto;">
      			<h2 align="center" style="font-family: monospace;font-weight: 600; color: black;">G??p ?? c???a kh??ch h??ng</h2>
                <div class="form-group row">
                  <label for="inputFirstName" class="col-sm-3 col-form-label">FullName:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="inputFullName" id="inputFullName" placeholder="FullName">
                  </div>
                </div>
                <div class="form-group row">
                    <label for="inputTelephone" class="col-sm-3 col-form-label">Telephone:</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" name="inputTelephone" id="inputTelephone" placeholder="Telephone">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputEmail" class="col-sm-3 col-form-label">Email:</label>
                    <div class="col-sm-5">
                        <input type="email" class="form-control" name="inputEmail" id="inputEmail" placeholder="Email">
                    </div>
                </div>                
                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Description</label>
                    <div class="col-sm-9">
                        <textarea class="col-sm-9" name="description" id="description" cols="30" rows="10"></textarea>
                    </div>
                </div>
                <div class="form-group row">
                  <div class="col-sm-12 text-center">                    
                    <!-- <button type="submit" class="btn btn-primary btnregister">Register</button> -->
                    <input type="submit" value="G???i g??p ??" class="btn btn-primary submit" >  
                  </div>
                </div>
       </form>
</div>
<footer class="container-fluid text-center">
  <p>
  <b>Copyright @2021 Ho??ng Th??? Huy All rights Reserved. </b><br>
			IT Developer Hu???<br>
			1/116 Phan Chu Trinh Street, Hu??? City, Th???a Thi??n Hu??? Provide, Vi???t Nam<br>
			Gi???y ch???ng nh???n ????ng k?? kinh doanh s???: xxx<br>
			M?? s??? doanh nghi???p xxxxxxx - ????ng k?? thay ?????i l???n 8 ng??y 10/11/2021<br>
			??i???n Tho???i (+84)78 8843 951 - Mail: thehuy.2pro@gmail.com<br>
			Website: <a href="https://www.facebook.com/hth.hth.790/">https://www.facebook.com/hth.hth.790/</a> v?? <a href="">www.chuadk.com.vn</a><br>
			R???t vui ???????c ph???c v??? qu?? kh??ch
  
  </p>
</footer>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script> 
<script src=" https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>
<script>
     $(document).ready(function() {
        
        jQuery.validator.addMethod("textValidator", function(value,element){
           var  validFirstName=/^[A-Za-z]+$/;
           return this.optional(element)||validFirstName.test(value);
        },"Ph???i l?? ch??? kh??ng ch???a k?? t??? s???");
        $("#frmregister").validate({
            rules: {
                inputFullName: {
                    required: true,
                    textValidator: true,
                    maxlength: 20
                },
                inputTelephone: {
                	required: true,
                    digits: true,
                    minlength: 10,
                    maxlength: 10
                },
                inputEmail: {
                	required: true,
                    email:true,
                    maxlength:50
                },
                description:{
                	required: true,
                    maxlength:200
                }
            },
            messages: {
                inputFullName: {
                    required: "B???t bu???c nh???p FullName",
                    // textValidator: "Ph???i nh???p ch??? c??i kh??ng ???????c c?? s???",
                    maxlength: "H??y nh???p t???i ??a 20 k?? t???"
                },
                inputTelephone: {
                	required: "H??y nh???p s??? ??i???n tho???i",
                    digits: "Ph???i nh???p 10 s???",
                    minlength: "Ph???i nh???p 10 s???",
                    maxlength: "Ph???i nh???p 10 s???"
                },
                inputEmail: {
                	required: "H??y nh???p email ????? ch??ng t??i ph???n h???i",
                    email:"Nh???p ????ng ?????nh d???ng email vd: thehuy@gmail.com",
                    maxlength:"T???i ??a 50 k?? t???"
                },
                description:{
                	required: "H??y nh???p m?? t??? c???a b???n",
                    maxlength:"V?????t t???i ??a 200 k?? t???"
                }
            },
            submitHandler: function(form) {
	         //   $.get({
	         //       url: "/FEE.M.A403/person.html",
	         //       success: function(response) {
	         //           $(".container").html(response);
	         //       }
	         //   });
                $(form).submit();
	        }

        });
     });
    </script>
</body>
</html>