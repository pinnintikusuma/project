<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
else{?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Online Library Management System | Library Info</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

    <style>
		    

		    body{/*
		    	background: url('assets/img/foot.jpg');
				background-size: cover;
				background-position: no-repeat;
				background-position: center;*/
		    }

			.card {
			     box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
			    transition: 0.3s;
			    width: 20%;
			    height: 400px;
			    margin-left: 45px;
			    position: relative;
			    float: left;
			}

			.card-que{
				position: relative;
				width: 100%;
				margin-left: 30px;
				margin-bottom: 60px;
				margin-top: 60px;
				/*background: url('assets/img/top.jpg');
				background-size: cover;
				background-position: no-repeat;
				background-position: center;*/
			}

			.card img{
				border-radius: 5px 5px 0 0;
				height: 320px;

			}
			.card h4 {
			    color: black;
			    text-align: center;
			}

			.card:hover {
				box-shadow: 0 4px 8px 0 rgba(0,255,0,0.4);
			}

			.card-container {
			    padding: 2px 16px;
			    background-color: white;
			}

			.tilee{
				height: 600px;
				/*width: 100%;*/
				/*background: url('assets/img/top.jpg');
				background-size: cover;
				background-position: no-repeat;
				background-position: center;*/
			}
			.tilee p {
				color: white;
				font-size: 1.7em;
				font-weight: 100;
				padding-top: 40px;
				padding-left: 440px; 

			}

			.texthd{
				color: silver;
			}

			/*.tile2{
				margin-top: 20px;
				height: 600px;
				width: 100%;
				background: url('../images/t2.jpeg');
				background-size: cover;
				background-position: no-repeat;
				background-position: center;
				
			}
			.tile2 p{
				font-size: 1.3em;
				padding-left: 300px;
				padding-top: 60px;
			}*/

			/* TABLEE STYLES*/
			.head-info{
				background-color: #E8E8E8;
				font-size: 2em;

			}

			.head-info h1{
				color: #333366;
			}

			#tabh{
				text-align: center;
				color: #585858;
				font-size: 1.5em;
			}

			table, th, td {
			    border: 1px solid black;
			    padding: 10px;
			}
			table{
				align-items: center;
				font-size: .7em;
				margin-bottom: 30px;
			}
			/* TABLEE STYLES*/

			/* SLides styles*/

			.sback{
			background-color: silver;
			margin-bottom: 40px;
			}

			.slidespic{
			margin-left: -34px;
			}

			.mySlides {display: none;}

			/* Slideshow container */
			.slideshow-container {
			  max-width: 500px;
			  position: relative;
			  margin: auto;
			  
			}
			
			
			/* The dots/bullets/indicators */
			.dot {
			  height: 15px;
			  width: 15px;
			  margin: 0 2px;
			  background-color: #bbb;
			  border-radius: 50%;
			  display: inline-block;
			  transition: background-color 0.6s ease;
			  padding-top: 7px;
			}

			.active {
			  background-color: #717171;
			}

			/* Fading animation */
			.fade {
			  animation-name: fade;
			  animation-duration: 1s;
			}

			.content-wrapper div:hover{
				animation-name: fade;
				animation-duration: 1.5s;

			}

			@keyframes fade {
			  from {opacity: 0} 
			  to {opacity: 1}
			}
			.slidhd{
				margin-left: 530px;
				padding-top: 5px;

			}
			.shead{
				margin-left: 400px;
			}


			/*linee */
			.animi {
			/*margin-left: -20px;*/
			width:1150px;
			height: 2px;
			background-color: #DB1A1A;
			border: 1px solid black;
			border-radius: 50px;
			animation-name: linee;
			animation-duration: 3s;
			padding-right: -30px;
			}

			@keyframes linee{
			0%{
				width: 0px;
			}
			20%{
				width: 0%;
				/*margin-left: 0px;*/
			}


    </style>
</head>
<body>
      <!------MENU SECTION START-->
<?php include('includes/header.php');?>
<!-- MENU SECTION END-->
<div class="content-wrapper">
	<h2 class="header-line" style="padding-left: 50px;">Library Information</h2>


	    





    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                 <!-- <h4 class="header-line">Library-info</h4> -->
                
             </div>
			<div>
			 <div class="tilee .fade">
			  <div class="row card-que">
		      <h2 class="shead"> Welcome to Central Library</h2><hr class="animi">


		      <!-- Cards      -->
		      	<div class="card .fade">
		          <img src="assets/img/rack9.jpg" alt="Avatar" style=" left : -100px;width:100%">
		          <div class="card-container">
		            <h4><b>Rack - A </b></h4> 
		          </div>
		        </div>
		        

		        <div class="card">
		          <img src="assets/img/rack10.jpg" alt="Avatar" style="width:100%">
		          <div class="card-container">
		            <h4><b>Rack - B</b></h4> 
		          </div>
		        </div>
		        

		        <div class="card">
		          <img src="assets/img/rack11.jpg" alt="Avatar" style="width:100%">
		          <div class="card-container">
		            <h4><b>Rack - C</b></h4>
		          </div>
		        </div>


		        <div class="card">
		          <img src="assets/img/rack12.jpg" alt="Avatar" style="width:100%">
		          <div class="card-container">
		          	<h4><b>Rack - D</b></h4>
		          </div>
		        </div>
		    </div>

		    <div class="row card-que">
		        <div class="card">
		          <img src="assets/img/rack13.jpg" alt="Avatar" style=" left : -100px;width:100%">
		          <div class="card-container">
		            <h4><b>Rack - E</b></h4>
		          </div>
		        </div>
		        

		        <div class="card">
		          <img src="assets/img/rack14.jpg" alt="Avatar" style="width:100%">
		          <div class="card-container">
		            <h4><b>Rack - F</b></h4>
		          </div>
		        </div>
		        

		        <div class="card">
		          <img src="assets/img/rack8.jpg" alt="Avatar" style="width:100%">
		          <div class="card-container">
		            <h4><b>Rack - G</b></h4> 
		          </div>
		        </div>


		        <div class="card">
		          <img src="assets/img/rack16.jpg" alt="Avatar" style="width:100%">
		          <div class="card-container">
		            <h4><b>Rack - H</b></h4> 
		          </div>
		        </div>
		    </div>

		    <div class="row card-que">
		        <div class="card">
		          <img src="assets/img/rack17.jpg" alt="Avatar" style=" left : -100px;width:100%">
		          <div class="card-container">
		            <h4><b>Rack - I</b></h4>
		          </div>
		        </div>
		        

		        <div class="card">
		          <img src="assets/img/rack18.jpg" alt="Avatar" style="width:100%">
		          <div class="card-container">
		            <h4><b>Rack - J</b></h4> 
		          </div>
		        </div>
		        

		        <div class="card">
		          <img src="assets/img/rack4.jpg" alt="Avatar" style="width:100%">
		          <div class="card-container">
		            <h4><b>Rack - RE</b></h4>
		          </div>
		        </div>


		        <div class="card">
		          <img src="assets/img/rack1.jpg" alt="Avatar" style="width:100%">
		          <div class="card-container">
		            <h4><b>Rack - RF</b></h4>  
		          </div>
		        </div>
		    </div>


			 <div class="container sback" >
	     	<h2 class="slidhd">Gallery</h2>
				<div class="slidespic">	
						<!-- <div style="background: url(find.jpg) no-repeat bottom right; width:487; height:300px;"> -->
							<div style="padding: 5px 20px 35px 50px">
										<div class="slideshow-container"  >
											<div class="mySlides fade">
											<img src="assets/img/l1.jpeg" style="width:500px; height:350px;">
						 
									 		</div>	
								
											<div class="mySlides fade">
						 					 <img src="assets/img/l2.jpeg" style="width:500px; height:350px;" >
						 
											</div>

											<div class="mySlides fade">
						  					<img src="assets/img/l3.jpeg" style="width:500px; height:350px;">
						 
											</div>

										</div>

									<div style="text-align:center;">
									  <span class="dot"></span> 
									  <span class="dot"></span> 
									  <span class="dot"></span> 
									</div>
						</div>
				</div>
			</div>
			
			
			
		<div class="head-info container">	
	    	 
	    	<div>
	    		<br>
	    		<pre><h4>Timings :</h4>On All working Days      -	8.00 a.m. to 7.00 p.m.<br>Circulation Section      -	8.30 a.m. to 4.00 p.m.</pre>
	    	</div>
	    	
	    <h3>Library Collection</h3>
	    	<table>
	    		<tr id="tabh">
	    			<td> Resources
	    			</td>
	    			<td>
	    				 Count
	    			</td>
	    		</tr>

	    		<tr>
	    			<td>Books</td>
	    			<td>37723</td>
	    		</tr>

	    		<tr>
	    			<td>Titles</td>
	    			<td>8010</td>
	    		</tr>

	    		<tr>
	    			<td>Students Book Bank</td>
	    			<td>399</td>
	    		</tr>
	    		<tr>
	    			<td>Project Reports</td>
	    			<td>456</td>
	    		</tr>
	    		<tr>
	    			<td>CDs & DVDs</td>
	    			<td>2459</td>
	    		</tr>
	    		<tr>
	    			<td>Periodicals- Hard Copies(Journals & Magazines)</td>
	    			<td>103</td>
	    		</tr>
	    		<tr>
	    			<td>Bound Volumes</td>
	    			<td>582</td>
	    		</tr>
	    		<tr>
	    			<td>Mc Graw Hill-E-Books</td>
	    			<td>380</td>
	    		</tr>

	    	</table>

	    </div>

		    <div class="row card-que">
		    	 <h2 class="shead">Reference Section - RacksInfo</h2><hr class="animi">
		        <div class="card">
		          <img src="assets/img/rack6.jpg" alt="Avatar" style=" left : -100px;width:100%">
		          <div class="card-container">
		            <h4><b>Rack - RC</b></h4> 
		          </div>
		        </div>
		        

		        <div class="card">
		          <img src="assets/img/rack3.jpg" alt="Avatar" style="width:100%">
		          <div class="card-container">
		            <h4><b>Rack - RD</b></h4>
		          </div>
		        </div>
		        

		        <div class="card">
		          <img src="assets/img/rack2.jpg" alt="Avatar" style="width:100%">
		          <div class="card-container">
		            <h4><b>Rack - RE</b></h4> 
		          </div>
		        </div>


		        <div class="card">
		          <img src="assets/img/rack5.jpg" alt="Avatar" style="width:100%">
		          <div class="card-container">
		            <h4><b>Rack - RA</b></h4>  
		          </div>
		        </div>
		    </div>    



	      	
	        </div>

        </div>            
    </div>


<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

</div>
     <!-- CONTENT-WRAPPER SECTION END-->
<?php include('includes/footer.php');?>
      <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
      <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>
</body>
</html>
<?php } ?>
