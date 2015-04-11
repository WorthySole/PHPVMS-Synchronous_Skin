<table cellspacing="0" border="0" style="width: 250px; font-size:12px;">
	<tbody><tr>
                <td><strong>Total Hours:</strong></td>
                <td style><span class="label label-default"><?php echo StatsData::TotalHours (); ?></span></td>
               
	</tr>

		<tr>
		<td><strong>Total Flights:</strong></td>
                <td><span class="label label-default"><?php echo StatsData::TotalFlights(); ?></span></td>
               </tr>
             <tr>
           <td><strong>Miles Flown:</strong></td>
           <td><span class="label label-default"><?php echo StatsData::totalmilesflown(); ?>nm</span></td>
           </tr>
           </tr>
		   <tr>
		   <td><strong>Total Pilots:</strong></td>
		   <td><span class="label label-default"><?php echo StatsData::PilotCount(); ?></span></td>
            </tr> 
<td><strong>Apps in Queue:</strong></td>
		   <td><span class="label label-default"><?php echo count(PilotData::GetPendingPilots())?></span> </td>
            </tr> 
           
           <tr>
           <td><strong>Pilot Recruitment Status:</strong></td>
           <td><span class="label label-success">Open</span></td>
           </tr>
           <tr>
           <td><strong>Staff Recruitment Status:</strong></td>
           <td><span class="label label-danger">Closed</span></td>
           </tr>
		     </tbody>   
	</table>