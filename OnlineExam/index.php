<?php include 'inc/header.php'; ?>
<?php
	Session::checkLogin();
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
  font-size: 35px;
}
.error, .empty, .disable{

color: red;
}
	</style>
<div class="main" >
<h1>Examen en ligne - connexion utilisateur</h1>
	<div class="segment" style="margin-right:30px;">
		<img src="img/testt.png"/>
	</div>
	<div class="segment">
	<form action="" method="post">
		<table class="tbl">    
			 <tr>
			   <td>Email</td>
			   <td><input name="email" type="text" id = "email"></td>
			 </tr>
			 <tr>
			   <td>Mot de Passe </td> 
			   <td><input name="password" type="password" id = "password"></td>
			 </tr>
			 
			  <tr>
			  <td></td> &nbsp; 
			   <td><input type="submit"  class="btn btn-secondary" id="loginsubmit" value="Connexion"  style="width:110px; height:30px;">
			   </td>
			 </tr>
       </table>
	   </form>
	   <p>Nouvel utilisateur? &nbsp; <a href="register.php">S'inscrire</a> </p>
		<span class="empty" style ="display:none">Remplir le champ !</span>
		<span class="error" style ="display:none">E-mail ou mot de passe ne correspondent pas! </span>
		<span class="disable" style ="display:none">Identifiant utilisateur désactivé!</span>
	</div>	
</div>
<?php include 'inc/footer.php'; ?>