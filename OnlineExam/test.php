<?php include 'inc/header.php'; ?>
<?php 
	Session::checkSession();
	define("DUREE", 2400);
	
	// 
	$time= time();
	


	if(! Session::get('Hdepart') ){

           Session::set('Hdepart', $time);
	}
	
	$Tecoule = $time - Session::get('Hdepart');
	$restant = DUREE - $Tecoule;
	if ( $restant<=0 ){	
		header("Location:final.php");

		
	}


	if(isset($_GET['q'])){
		$number = (int) $_GET['q']; 
	}else{
		header("Location:exam.php");
	}
	$total       = $exm->getTotalRows(); 
	$question = $exm->getQuesByNumber($number );
?>
<?php
		if($_SERVER['REQUEST_METHOD'] == 'POST'){
		$process = $pro->processData($_POST);
	}
?>

</body>
</html>

<style>
.alamgir{
	font-family: "Times New Roman", Georgia, Serif;
	 color:#05020d;
	 font-size: 20px;
}


body {
  background-color: rgba(246, 255, 250, 0.596);
}


	
	.main{width:1000px; margin: 0 auto;background:#fff ;  height: 75vh; border: 2px solid #ccc; padding: 30px;border-radius: 15px ;
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
</style>
<html>
<head>



</head>
	<body>	
		<div class="alamgir">
		<marquee>Votre test est en cours</marquee>
		
		</div>
	</body>
</html>

<style>
	/*body { margin: 0;}
	.segment {
	/*font-family: "Times New Roman", Georgia, Serif;*/
 /* border: 1px solid #d3d3d3;
  background-color: #A9A9A9;/*#005A7B;*/
 /* color: #F2f2f2;
  border-radius: 4px;
  float: left;
  min-height: 80px;
  padding: 20px;
  width: 250px;*/
   

}
	</style>
<html>
<head>
</head>

<body>

<!--<div class="segment" style="margin-right:15px;">

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

		
	</div>-->
<div class="main">
<h1>Question <?php echo $question['quesNo']; ?> <!--à <?php //echo $total; ?>--> </h1>

	<div class="test">
		<form id="nav-form" method="post" action="">
		<table> 
			<tr>
				<td colspan="2">
				 <h3>Question <?php echo $question['quesNo']; ?>: <?php echo $question['ques']; ?></h3>
				</td>
			</tr>
			<?php 
				$answer = $exm->getAnswer($number);   
				if($answer){
					while($result = $answer->fetch_assoc()){
			?>
			<tr>
				<td>
				
                </div class="form-check">
				 <input  class="form-check-input" type="checkbox"  name="ans" value="<?php echo $result['id']; ?>"/><?php echo $result['ans'];?>
				</td>
			</tr>
				<?php } } ?>
			<tr>
			  <td>
				<input class="btn btn-secondary"   type="button" id="btn-prev" name="btn-prev" value="Precedent"/>
				<input class="btn btn-secondary"  type="button" id="btn-next" name="btn-next" value="Suivant"/>
				
				<script>
				setTimeout(function() {
					window.location.href = "final.php";
					
					},  <?php echo($restant * 1000);  ?> );
				
				</script>	

				<input type="hidden" name="number" value= "<?php echo $number; ?>"/>
				<input type="hidden" id="offset" name="offset" />
			</td>
			</tr>
			
		</table>
		</form>
</div>
 </div>
<?php include 'inc/footer.php'; ?>