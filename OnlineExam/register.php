<?php
	include 'inc/header.php';
?>
<style>
/*.segment img{
 height: 150px;
margin-left: 6px;
padding-top: 20px;
width: 350px;
}*/
body {
  background-color: rgba(246, 255, 250, 0.596);
}
.main{width:1000px; margin: 0 auto;background:#fff ;  height: 80vh; border: 2px solid #ccc; padding: 30px;border-radius: 15px ;
 }
 .segment {
	/*font-family: "Times New Roman", Georgia, Serif;*/
  /*border: 1px solid #d3d3d3;
  border-radius: 4px;
 float: right;
 align:center;
 margin: 0 auto;
 
  height:47vh;
  padding: 25px;
  width: 500px;*/



   /* border-radius: 4px;*/
    /*padding: 25px;*/
    width: 50%;
    text-align: center;
    height:52vh;
    margin: 0 auto;
    position: absolute;
    left: 50%;
    top: 60%;
    transform: translate(-50%, -60%);

 
  
}
.main h1 {
  background: #f4f4f4 none repeat scroll 0 0;
   font-family: "Times New Roman", Times, serif;
  box-shadow: 2px 2px 0 1px #999;
  color: #010002;
  margin: 10px auto 25px;
  padding: 7px;
  text-align: center;
  width: 700px;
  font-size: 35px;
  

  
}
</style>
<div class="main">
<h1>  Inscription des utilisateurs</h1>  
	<!--	<div class="segment" style="margin-right:30px;  width:600;">
		<img src=""/>
	</div>-->
   <div class="segment" >

   <h2>  <strong> Inscrivez - vous   </strong></h2>  
 

   <form action="" method="post">
		<table>
		<tr>
           <td>Nom</td>
           <td><input type="text" name="name" id = "name"  style="width:500px; height:40px;"></td>
         </tr>
		<tr>
           <td>Nom d'utilisateur</td> 
           <td><input name="username" type="text" id="username"   style="width:500px; height:40px;"></td>
         </tr>
         <tr>
           <td>Mot de Passe</td>
           <td><input type="password" name="password" id = "password"   style="width:500px; height:40px;"></td>
         </tr>
         
         <tr>
           <td>E-mail</td>
           <td><input name="email" type="text" id = "email"  style="width:500px; height:40px;"></td>
         </tr>
         <tr>
           <td></td>
           <td ><input class="btn btn-secondary"  type="submit" id="regsubmit" value="S'inscrire" style="width:110px; height:30px;"></td>
         </tr>
         
       </table>
	   </form>
	   <p>Déjà enregistré ?  &nbsp; <a href="index.php">S'identifier</a></p>
	   <span id = "state"></span>
	</div>
</div>
<?php include 'inc/footer.php'; ?>

