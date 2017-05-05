<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>login</title>
    <meta name="description" content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">
    <link rel="stylesheet" href="./css/bootstrap.min.css" />
    <link rel="stylesheet" href="./css/animate.min.css" />
    <link rel="stylesheet" href="./css/ionicons.min.css" />
    <link rel="stylesheet" href="./css/styles.css" />
  </head>
  <body>
    <nav id="topNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#first"><i class="ion-ios-analytics-outline"></i> Login</a>
            </div>
         
        </div>
    </nav>
    <header id="first">
        <div class="header-content">
            <div class="inner">
                <h1 class="cursive">Login Here</h1>
                
                <hr>
                    	<form action="LoginController" method="post">
					    <div class="form-group">
					      <label for="emailid">Email:</label>
					      <input type="email" class="form-control"  id="emailid" placeholder="Enter email" name="emailid" required="required">
					    </div>
					    
					    <div class="form-group">
					      <label for="password">Password:</label>
					      <input type="password" class="form-control" id="password" placeholder="Enter password"  name="password" required="required">
					    </div>
					   
					    <button type="submit" class="btn btn-primary btn-xl">Login</button>
					  </form>
                <hr>
                
            </div>
        </div>
        <video autoplay="" loop="" class="fillWidth fadeIn wow collapse in" data-wow-delay="0.5s" poster="https://s3-us-west-2.amazonaws.com/coverr/poster/Traffic-blurred2.jpg" id="video-background">
            <source src="https://s3-us-west-2.amazonaws.com/coverr/mp4/Traffic-blurred2.mp4" type="video/mp4">Your browser does not support the video tag. I suggest you upgrade your browser.
        </video>
    </header>
  </body>
</html> 