<script type="text/javascript">var menu = $('nav#menu');

var watcher = scrollMonitor.create( menu );

watcher.lock();

watcher.stateChange(function() {
  $(menu).toggleClass('scrolled', this.isAboveViewport)
});</script>
<?php
$airlines = OperationsData::getAllAirlines();
foreach($airlines as $airline)
?>
<ul>
<li><a href="<?php echo url('/'); ?>">Home</a></li>
<li><a href="<?php echo url('/'); ?>">About Us</a></li>
	

<?php
if(!Auth::LoggedIn())
{
	// Show these if they haven't logged in yet
?>
	<li><a href="<?php echo url('/login'); ?>">Login</a></li>
	<li class="active"><a href="<?php echo url('/registration'); ?>">Join <?php echo $airline->name ;?></a></li>
<?php
}
else
{
	// Show these items only if they are logged in
?>
	<li><a href="<?php echo url('/profile'); ?>">Pilot Center</a></li>
	
<?php
}
?>
<li><a href="<?php echo url('/pilots'); ?>">Pilots</a></li>
<li><a href="<?php echo url('/acars') ?>">Live Map</a></li>
<?php echo $MODULE_NAV_INC;?>
<?php
if(Auth::LoggedIn())
{
	if(PilotGroups::group_has_perm(Auth::$usergroups, ACCESS_ADMIN))
	{
		echo '<li><a href="'.fileurl('/admin').'">Admin Center</a></li>';
	}
?>


<li><a href="<?php echo url('/logout'); ?>">Log Out</a></li>
<?php
}
?>
</ul>