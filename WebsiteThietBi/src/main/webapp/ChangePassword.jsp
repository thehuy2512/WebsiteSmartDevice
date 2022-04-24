<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đổi mật khẩu</title>
<script src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeConsoleRunner-d0f3648046d2aaca07bd0037b9e061a26c74a8a999b75672ad6a638cca641472.js"></script>
<script src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-4793b73c6332f7f14a9b6bba5d5e62748e9d1bd0b5c52d7af6376f3d1c625d7e.js"></script>
<script src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRuntimeErrors-4f205f2c14e769b448bcf477de2938c681660d5038bc464e3700256713ebe261.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0-beta2/css/bootstrap.min.css">
<style>
.btn-color{
  background-color: #0e1c36;
  color: #fff;
  
}

.profile-image-pic{
  height: 200px;
  width: 200px;
  object-fit: cover;
}



.cardbody-color{
  background-color: #ebf2fa;
}

a{
  text-decoration: none;
}
</style>
</head>
<body>
<div class="container">
    <div class="row">
      <div class="col-md-6 offset-md-3">
        <h2 class="text-center text-dark mt-5">Change Password Form</h2>
        <div class="text-center mb-5 text-dark">Made with bootstrap 5</div>
        <div class="card my-5">

          <form class="card-body cardbody-color p-lg-5" action="KTDoimatkhauController" method="POST">

            <div class="text-center">
              <img src="https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295397__340.png" class="img-fluid profile-image-pic img-thumbnail rounded-circle my-3"
                width="200px" alt="profile">
            </div>

            <div class="mb-3">
              <input type="text" class="form-control" id="Username" name="txtusername" aria-describedby="emailHelp"
                placeholder="User Name" required="">
            </div>
            <div class="mb-3">
              <input type="password" class="form-control" id="password" name="txtoldpassword" placeholder="Old Password" required="">
            </div>
            <div class="mb-3">
              <input type="password" class="form-control" id="password" name="txtnewpassword" placeholder="New Password" required="">
            </div>
            <div class="mb-3">
              <input type="password" class="form-control" id="password" name="txtconfirmnewpassword" placeholder="Confirm New Password" required="">
            </div>
            <div><p>${mess}</p></div>
            <div class="text-center"><button type="submit" class="btn btn-color px-5 mb-5 w-100">Change</button></div>
            <div id="emailHelp" class="form-text text-center mb-5 text-dark">Continue ->
              <a href="homeController" class="text-dark fw-bold"> Back to Home</a>
            </div>
          </form>
        </div>

      </div>
    </div>
  </div>
  
<script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0-beta2/js/bootstrap.min.js"></script>
  <script  src="https://cdpn.io/cp/internal/boomboom/pen.js?key=pen.js-de202418-4e54-7684-fb1d-93b2f60c3e89" crossorigin></script>
</body>
</html>