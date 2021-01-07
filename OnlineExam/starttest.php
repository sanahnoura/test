
<?php include 'inc/header.php'; ?>
<?php 
	Session::checkSession();
	
	$question = $exm->getQuestion();
	$total       = $exm->getTotalRows();
?>

<style>
		body {
  background-color: rgba(246, 255, 250, 0.596);
}
	
	.main{width:1000px; margin: 0 auto;background:#fff ;  height: 75vh; border: 2px solid #ccc; padding: 30px;border-radius: 15px ;
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
	
.starttest p{
	font-family: "Times New Roman", Georgia, Serif;
		font-size: 23px;
		color:#030709;
}
.starttest ul{
	font-family: "Times New Roman", Georgia, Serif;
		font-size: 23px;
		color:#2d4756;
}
.starttest h2{
	font-family: "Times New Roman", Georgia, Serif;
		font-size: 25px;
		color:#121069;
}
.starttest h3{
	font-family: "Times New Roman", Georgia, Serif;
		font-size: 23px;
		color:#2d4756;
}
</style>
<div class="main">
<h1>Bienvenue à votre test en ligne </h1>
	<div class="starttest">
	<h2>Testez vos connaissances</h2>
	<p>Ceci est un quiz à choix multiples pour tester vos connaissances a Oracle Analytics
</p>
	<ul>
		<li><strong>Nombre de questions:</strong> <?php echo $total; ?></li>
		<li><strong>Type de question :</strong> A Choix Multiple</li>
	</ul>
	<h3>Vous n'aurez que 40 minutes pour effectuer le test.</h3>
	<a href="test.php?q=<?php echo $question['quesNo']; ?>">Démarrer le test</a>	
	</div>
  </div>
<?php include 'inc/footer.php'; ?>