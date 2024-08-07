if activated
{
	if !stop
	{
		windTimer--
		if windTimer<0
		{
			instance_create_layer(x+12,y,"Emory",obj_wind,{flip: false, blowDistance: blowDistance, windDistance: windDistance})
			instance_create_layer(x-12,y,"Emory",obj_wind,{flip: true, blowDistance: blowDistance, windDistance: windDistance})
			windTimer=15
		}
	
		if stopTimer>=50{bladeRotation+=3} 
		if stopTimer<50{bladeRotation+=1.5} 
		if stopTimer<=0{stop=true} 
	}
	if stop{bladeRotation+=0 if stopTimer<startTimer{stopTimer=stopTimerTemp stop=false}}//time before startup

	//if over 10000 never stops
	if stopTimer<1000{stopTimer--}
}
else
{
	//not running	
}