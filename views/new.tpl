<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>michael luckeneder</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400' rel='stylesheet' type='text/css'>

    <link href="./static/css/bootstrap.css" rel="stylesheet">
    <link href="./static/css/bootstrap-glyphicons.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="./static/js/html5shiv.js"></script>
    <![endif]-->


       <link rel="stylesheet/less" type="text/css" href="./static/css/style.less" />
    <script src="./static/js/less.js" type="text/javascript"></script>

  </head>

  <body data-spy="scroll" data-target="#navbar-spy">
    <div class="navbar-wrapper">
      <div class="container">

        <div class="navbar navbar-inverse navbar-fixed-top">
          <div class="container">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <!-- <a class="navbar-brand" href="#">Project name</a> -->
            <div class="nav-collapse collapse pull-left" id="navbar-spy">
              <ul class="nav navbar-nav">
                <li><a href="#about">about</a></li>
                <li><a href="#projects">projects</a></li>
                <li><a href="#skills">skills</a></li>

                <!-- <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="nav-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li> -->
                <li><a href="#contact">contact</a></li>

              </ul>
            </div>

<!--
          <div class="nav-collapse collapse pull-right">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="nav-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div> <!-- /nav-collapse -->
        </div>

      </div>
    </div>


    <!-- Carousel
    ================================================== -->
    <header id="about">

          <div class="container">
            <div class="header-caption">
              <h1>michael luckeneder.</h1>
              <p>software engineer @ Yelp<br/>
                Test</p>
              <!-- <p><a class="btn btn-large btn-primary" href="#">Sign up today</a></p> -->
            </div>
        </div>


    </header><!-- /.carousel -->



    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

        <!-- <div id="resume" class="vspace"></div> -->




<div class="container marketing">

      #include "views/education.tpl"



      <hr class="featurette-divider">

      #include "views/projects.tpl"
        <p class="pull-right"><a href="#">Back to top</a></p>


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">
      #include "views/skills.tpl"
      <p class="pull-right"><a href="#">Back to top</a></p>


      <hr class="featurette-divider">
      #include "views/contact.tpl"
      <p class="pull-right"><a href="#">Back to top</a></p>

</div><!-- /.container -->








      <!-- START THE FEATURETTES -->
      <div class="container">



      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
        <p>&copy; 2013 Michael Luckeneder &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
  </div>



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script> <script src="./static/js/bootstrap.min.js"></script>
    <script src="./static/js/jquery.smoothscroll.js"></script>
    <script src="./static/js/application.js"></script>










  <script>
    // (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    // (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    // m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    // })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    // ga('create', 'UA-40155093-2', 'luckeneder.net');
    // ga('send', 'pageview');

  </script>

  </body>
</html>
