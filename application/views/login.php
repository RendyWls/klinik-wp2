<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Yohannes">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Login Klinik</title>
	<link rel="stylesheet" href="<?= base_url(); ?>assets/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/css/login.css">
</head>

<body class="my-login-page">
<section class="vh-100 gradient-custom" style="background-image: url('<?= base_url(); ?>assets/images/background-hospital.jpg'); background-size: cover; background-position: center;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card bg-dark text-white" style="border-radius: 3rem; max-width: 500px; max-height: 600px;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

			<form method="post" class="mt-4 my-login-validation" action="<?= base_url('auth/login_aksi') ?>">

              <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
			  <br>

              <div data-mdb-input-init class="form-outline form-white mb-4">
                <input id="username" type="text" name="username"  value="" required autofocus class="form-control form-control-lg" />
                <label class="form-label" for="typeEmailX">Username</label>
              </div>

              <div data-mdb-input-init class="form-outline form-white mb-4">
                <input id="password" type="password" name="password" required data-eye class="form-control form-control-lg" />
                <label class="form-label" for="typePasswordX">Password</label>
              </div>

              <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>

              <button data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


	<!-- <section class="vh-100">
  	<div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="<?= base_url(); ?>assets/images/hospital.png"
          class="img-fluid" alt="Sample image">
      </div>
	  <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
					<div class=" card fat"> -->


			<!-- <<form method="post" class="mt-4 my-login-validation" action="<?= base_url('auth/login_aksi') ?>" > -->
						<!-- Email input --> 
			<!-- <div data-mdb-input-init class="form-outline mb-2">
            	<input id="username" type="text" name="username" class="form-control form-control-lg" value="" required autofocus 
              		placeholder="Username" />
            		<label class="form-label" for="form3Example3">Username</label>
          				</div> -->

<!-- Password input -->
<!-- <div data-mdb-input-init class="form-outline mb-3">
            <input id="password" type="password" class="form-control form-control-lg" name="password" required data-eye 
              placeholder="Enter password" />
            <label class="form-label" for="form3Example4">Password</label>
          </div>

								<div class="text-center text-lg-start mt-4 pt-2">
            <button  type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button> -->



							<!-- </form>
						</div>
					</div>
					<div class="footer">
						Copyright &copy; 2024 &mdash; Kelompok C
					</div>
				</div>
			</div>
		</div>
	</section> -->

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<!-- <script src="<?= base_url(); ?>assets/js/login.js"></script> -->
</body>
</html>
