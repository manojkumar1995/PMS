<head>
    <title>PMS</title>
    <?php include 'header.php'  ?>
</head>
<body>
    <?php include '_navbar.php'  ?>
</body>

<div class="container">
    <h3>Welcome to Payroll Management System. </h3>
    <div class="jumbotron mt-3 mb-3">
        <div class="row">
            <div class="col-md-6 mx-auto">
            <div class="card card-body shadow-lg">
                <h3 class="text-center mb-3 text-primary">Login  </h3>
                <form method="post" action="">
                <div class="form-group text-monospace">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="email" required>
                </div>
                <div class="form-group text-monospace">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" name="password" required>
                </div>
                <div class="text-center">
                <a type="submit" href="dashboard.php" class="btn btn-primary text-white">Login</a>
                </div>
                </form>
            </div>
            </div>
        </div>
    </div>
</div>
