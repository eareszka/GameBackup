if !stop
{
	windTimer--
	if windTimer<0
	{
		instance_create_layer(x+12,y,"Emory",obj_wind,{flip: false, blowDistance: blowDistance})
		instance_create_layer(x-12,y,"Emory",obj_wind,{flip: true, blowDistance: blowDistance})
		windTimer=15
	}
	
	if stopTimer>=50{bladeRotation+=3} 
	if stopTimer<50{bladeRotation+=1.5} 
	if stopTimer<=0{stop=true} 
}
if stop{bladeRotation+=0 if stopTimer<startTimer{stopTimer=stopTimerTemp stop=false}}//time before startup

stopTimer--