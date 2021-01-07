<?php
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/Session.php');
	Session::init();
	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');

	spl_autoload_register(function($class){
		include_once "classes/".$class.".php";
	});
	$db  = new Database();
	$fm  = new Format(); 
	$usr = new User();
	$exm = new Exam();
	$pro = new Process();
	
header("Cache-Control: no-store, no-cache, must-revalidate"); 
header("Cache-Control: pre-check=0, post-check=0, max-age=0"); 
header("Pragma: no-cache"); 
header("Expires: Mon, 6 Dec 1977 00:00:00 GMT"); 
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
?>


<!doctype html>
<html>
<head>
	<title>Système d'examen en ligne</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="no-cache">
	<meta http-equiv="Expires" content="-1">
	<meta http-equiv="Cache-Control" content="no-cache">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<script type = "text/javascript" src="jvascrpt/jquery.js"></script>
   <script type = "text/javascript" src="jvascrpt/main.js"></script>
</head>
<body>
<script  src="js/jquery.js"></script>
<script tsrc="js/bootstrap.js"></script>




	<?php
		if(isset($_GET['action']) && $_GET['action'] == 'logout'){
			Session::destroy();
			header("Location:index.php");
			exit();
		}
	?>
	<style>
	
	.phpcoding{width:1550px; margin: 0 auto; background:#f9e8f8;  height: 7vh; }
	
	.logo {
	width: 100px;
	height:75px;
  }


  .menu{overflow:hidden;}
.menu ul{margin:0;padding:0;list-style:none}
.menu ul li{display:block;float:left;}
.menu ul li a {
  border: 1px solid #bdbdbd;
  border-radius: 3px;
  font-size: 19px;
  font-family: "Times New Roman", Georgia, Serif;
  color: #5f0a1f;
  display: block;
  margin: 0 5px 5px;
  padding: 0px 20px 1px;
  text-decoration: none;
  height: 28px;
  text-align:"center";
 

}
.menu ul li a:hover{border:1px solid rgb(136, 34, 34);color: rgb(136, 34, 34);}
  
	</style>
		
<div class="phpcoding">



	<!--<section class="headeroption"></section>-->
		<section class="maincontent">   
		<div class="menu">
		
		<ul>
		
		<?php
			$login = Session::get("login");
			if($login == true){
		?>
		
	
		<li><img  class="logo" src="img/modlog.png"/>	</li>
			<!--<li><a href="profile.php">Profile</a></li>-->
		
			<!--<li><a href="exam.php">Examen</a></li>-->
			<li><a href="?action=logout">Se déconnecter</a></li>
			<?php } else { ?>
			<li><img  class="logo" src="img/modlog.png"/>	</li>
			<li><a href="index.php">S'identifier</a></li>
			<li><a href="register.php">S'inscrire</a></li>
			<?php } ?>
		</ul> 
		<?php
			$login = Session::get("login");
			if($login == true){
		?>
        <style>
	.segment {
	/*font-family: "Times New Roman", Georgia, Serif;*/
  /*border: 1px solid #d3d3d3;*/
  background-color: #000;
  color: #FF0000;
  border-radius: 4px;
  float: left;
  min-height: 20px;
  padding: 20px;
  width: 250px;
   

}
	</style>
<html>
<head>
</head>

<body>

<div class="segment" >

<h2>Temps restant</h2>
<div id="countdown"></div>
<div id="notifier"></div>
<script type="text/javascript">
(function () {
  function display( notifier, str ) {
    document.getElementById(notifier).innerHTML = str;
  }
 
  function toMinuteAndSecond( x ) {
    return Math.floor(x/60) + ":" + (x=x%60 /*< 10 ? 0 : x*/);
  }
 
  function setTimer( remain, actions ) {
    var action;
    (function countdown() {
       display("countdown", toMinuteAndSecond(remain));
       if (action = actions[remain]) {
         action();
       }
       if (remain > 0) {
         remain -= 1;
         setTimeout(arguments.callee, 1000);
       }
    })(); // End countdown
  }
 
  setTimer( <?php echo "$restant"  ?>, {
    300: function () { display("notifier", "Just 5 minutes to go"); },
     60: function () { display("notifier", "60 seconds left");        },
     0: function () { display("notifier", "Time is up ");       }
  });
})();

 </script>

		
	</div>
                       

       <span style ="float:right;color:#000000"; font-family : "Times New Roman", Georgia, Serif;>
		Bienvenu  <?php echo $name = Session::get('name'); ?>    à ce test ....
		</span>
		<?php } ?>
		</div>
	

	