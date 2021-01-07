<?php include 'inc/header.php'; ?>
<?php 
	Session::checkSession();
?>
<style>
	
	body {
  background-color: rgba(246, 255, 250, 0.596);
}
	.starttest a{
		font-family: "Times New Roman", Georgia, Serif;
		font-size: 25px;
		color:#121069;
	}

	
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
  font-size: 35px;
}
</style>
<div class="main">
<h1>Vous avez terminé    !</h1>
	<div class="starttest">
	<p>	<strong>
	<?php
		if( $_SESSION['score']>= 30){
			echo "Toutes nos félicitations Vous avez réussi ce test";

		}
		else {
			echo " Malheureusement vous avez echoué a ce test";
		}	?>
		</p></strong>
		<!--<p>Toutes nos félicitations ! Vous venez de terminer le test.</p>-->
		<span style="color:red;">
	<p>Le score final est : 
	</span>
	<span style="color:red;">
		<?php
			if(isset($_SESSION['score'])){
				echo $_SESSION['score'];
				unset($_SESSION['score']);
			}
			if (isset ($_SESSION['score'])) echo "score actuel: " . $_SESSION['score'];
		
		?>

</span>

	</p>

	<a href="index.php">Termine!</a>
	<!--<a href="starttest.php">Recommencez le test !!!!</a>-->
	</div>
  </div>
<?php include 'inc/footer.php'; ?>