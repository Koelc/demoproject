<!DOCTYPE HTML >
<HTML lang="en">
<HEAD>
<META name = "viewpoint" content = "width-device-width, intial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!--  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script  src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>-->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js">  </script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src = "https://maxcdn.bootstrapcdn.com/font-awesome/4.3.1/css/font-awesome.min.css"></script>
<style>

img:hover
{
-moz-box-shadow: 0 0 5px 5px #ddd;
-webkit-box-shadow: 0 0 5px 5px #ddd;
box-shadow: 0 0 5px 5px #ddd;
transform:scale(1.5);
    -ms-transform:scale(1.5); /* IE 9 */
    -moz-transform:scale(1.5); /* Firefox */
    -webkit-transform:scale(1.5); /* Safari and Chrome */
    -o-transform:scale(1.5); /* Opera */
}
</style>

</HEAD>


<br>
<br>
<body>
<nav class="navbar navbar-default">
<div class = "container-fluid">
<div class="navbar-header">
<img src = "C:\Users\koel.chowdhury\DT TTT\Images\logos.png" class="img-responsive" alt="No image" width="104" height="136">

</div>
  <div>
  <ul class="nav navbar-nav">
     	<li><a href="#">Sign In</a></li>
  		<li> <a href="registration">Register</a></li>
  		<li><a href="Login">Login</a></li>
  		<li class = "dropdown">
   				<a href="#" class = "dropdown-toggle" data-toggle= "dropdown">Products <span class="caret"></span></a>
   				 <ul class="dropdown-menu">
      			<li><a href="productTable">Pizza</a></li>
     			<li><a href="productTable">Side Orders</a></li>
    			<li><a href="productTable">Desserts</a></li>
      			</ul>
      	 </li>
  </ul> 
    
</div>
</div>
</nav>
<div class = "container">
<div class = "row">
<div class = "span12">
<div id="myCarousel" class="carousel slide"  data-ride = "carousel">
<div class="carousel-inner" >
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1" ></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
   </ol>

  <!-- Wrapper for slides -->

  <div class="carousel-inner"  role= "listbox">
    <div class="item active">

      <img src="C:/Users/koel.chowdhury/DT TTT/Images/pizza.png" alt="pizza" class="img-responsive">
    </div>

    <div class="item">
      <img src="C:/Users/koel.chowdhury/DT TTT/Images/chicken_wings.png" alt="Chicken" class="img-responsive">
    </div>

    <div class="item">
      <img src="C:/Users/koel.chowdhury/DT TTT/Images/choco.png" alt="choco" class="img-responsive">
    </div>

     </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel"  data-slide="prev"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
     <span class="sr-only">Previous</span> 
  </a>
  <a class="right carousel-control" href="#myCarousel"  data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</div>
</div>

<script src="JavaScript/jquery.js" /></script>
<script src="JavaScript/bootstrap-min.js" /></script>
<script>
$('#myCarousel').carousel
({
    interval: 5000,
cycle:true

    })

</script>
<br>
<br>
</div>
<div class="container">
  <div class="row">
<div class = "col-lg-4">
<img src="C:\Users\koel.chowdhury\DT TTT\Images\pizza.png"  height = "300" width = "300" alt="pizza" class="img-responsive">
</div>
<div class = "col-lg-4">
<img src="C:\Users\koel.chowdhury\DT TTT\Images\chicken_wings.png"   height = "300" width = "300" alt="Chicken" class="img-responsive">
</div>
<div class = "col-lg-4">
<img src="C:\Users\koel.chowdhury\DT TTT\Images\choco.png"   height = "300" width = "300" alt="choco" class="img-responsive">
</div>

</div>
</div>
<!-- <script>


</script> -->


<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<nav class="navbar navbar-inverse navbar-fixed-bottom">

<h5><b><font color = "White">About</font> </b><span class="label label-default">Spreading cheesyness for decades</span></h5>
<div class = "container">

<div class = "navbar-text pull-right"> 

<a href ="https://www.facebook.com" ><i class="fa fa-facebook fa-4x" ></i></a>
<a href ="https://www.facebook.com" ><i class="fa fa-twitter fa-4x" ></i></a>
<a href ="https://www.facebook.com" ><i class="fa fa-github fa-4x" ></i></a>
</div>
</div>

</nav>

</BODY>
</HTML>   