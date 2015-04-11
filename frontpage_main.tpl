

<?php echo $page_htmlreq; ?>
	<?php
$airlines = OperationsData::getAllAirlines();
foreach($airlines as $airline)
?>
<?php echo $page_htmlreq; ?>
<?php 
		/* 
		Quick example of how to see if they're logged in or not
		Only show this login form if they're logged in */
		if(Auth::LoggedIn() == false)
		{ ?>
							<!--LOGIN -->
							<header>
							<div class="titlebar"><center>Fast Login</center></div>
							<div class="box">
									<div class="login">
    <form name="loginform" action="<?php echo url('/login');?>" method="post">
    <?php echo "<?xml version='1.0'?>"; ?>
    <?php

if(isset($message))

	echo '<p class="error">'.$message.'</p>';

?>
    	<input type="text" name="email" id="email" value="<?php echo $airline->code ;?>"  onfocus="if(this.value=='Pilot ID'){this.value='<?php echo $airline->code ;?>'};" onblur="if(this.value=='<?php echo $airline->code ;?>'){this.value='Pilot ID'};" required="required" /> 
        <input type="password" name="password" placeholder="Password" required="required" /> 
        <input type="hidden" name="redir" value="index.php/profile" />

		<input type="hidden" name="action" value="login" />
      <button type="submit" name="submit" class="btn btn-primary btn-block btn-large">Let me in.</button> 
      
    </form></div></div></header>
    <?php
		}
	/* End the Auth::LoggedIn() if */
		else /* else - they're logged in, so show some info about the pilot, and a few links */
		{
		
		/*	Auth::$userinfo has the information about the user currently logged in
			We will use this next line - this gets their full pilot id, formatted properly */
		$pilotid = PilotData::GetPilotCode(Auth::$userinfo->code, Auth::$userinfo->pilotid);

		?>

		
        
		<?php
		} /* End the else */
		?>  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<?php echo SITE_URL?>/lib/skins/synchronous/js/slide.js"></script>	
<div class="slider responsive" width='450' height='251'>
  <div src="http://megandalbey.com/codepen/slider/bright-trees.jpg"></div>
  <div src="http://megandalbey.com/codepen/slider/bright-spring.jpg"></div>
  <div src="http://megandalbey.com/codepen/slider/bright-moon.jpg"></div>
</div>
<hr>


	<h3>Recent Reports</h3>
	
	<?php MainController::Run('PIREPS', 'RecentFrontPage', 5); ?>

	<h3>Newest Pilots</h3>
	
	<?php MainController::Run('Pilots', 'RecentFrontPage', 5); ?>
	
	<h3>Users Online</h3>
	<p><i>There have been <?php echo count($usersonline)?> user(s), and <?php echo count($guestsonline);?> guest(s) online in the past <?php echo Config::Get('USERS_ONLINE_TIME')?> minutes.</i></p>
	
	<?php
	/* $usersonline also has the list of users -
		really simple example
		
		Or if you're not on the frontpage:
		$usersonline = StatsData::UsersOnline();
		
	
	foreach($usersonline as $pilot)	
	{
		echo "{$pilot->firstname} {$pilot->lastname}<br />";
	}
	*/
	?>
	
