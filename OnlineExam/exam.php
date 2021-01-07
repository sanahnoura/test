<?php include 'inc/header.php'; ?>
<?php 
	Session::checkSession();
?>


<style>
	body {
  background-color: rgba(246, 255, 250, 0.596);
}
	
	.main{width:1000px; margin: 0 auto;background:#fff ;  height: 60vh; border: 2px solid #ccc; padding: 30px;border-radius: 15px ;
 }
 .segment {
	/*font-family: "Times New Roman", Georgia, Serif;*/
  border: 1px solid #d3d3d3;
  border-radius: 4px;
  float: left;
  min-height: 245px;
  padding: 20px;
  width: 450px;
}
.main h1 {
  background: #f4f4f4 none repeat scroll 0 0;
   font-family: "Times New Roman", Times, serif;
  box-shadow: 2px 2px 0 1px #999;
  color: #010002;
  margin: 10px auto 25px;
  padding: 4px;
  text-align: center;
  width: 700px;
}

#btn{
    float: center;
    background: #555;
    padding: 10px 15px;
    color: #fff;
    border-radius: 5px;
    margin-right: 10px;
    border:none;
    text-decoration: none;
}
a:hover{
    opacity: .7;
}
	</style>
<div class="main">
<h1>Bienvenue à votre test en ligne</h1>  </br>
	<!--<div class="segment" style="margin-right:30px;">
		<<img src="img/online_exam.png"/>
	</div>-->
	<!--<div class="segment">-->
		
  <h3> Bienvenu a votre Test  Mr/Mme <?php echo Session::get("name"); ?> </strong> Commencer le test à partir d'ici</h3>  </br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	<a id="btn" href="starttest.php">Commencez maintenant...</a> 
	
  
  </div>
