image_xscale=1 - sin(sinTimer / 10) * 0.05
image_yscale=1 - sin(sinTimer / 10) * 0.05
		
sinTimer++
timer--

if timer<0
{
	if image_alpha>0{image_alpha-=.1}else{instance_destroy(self)}	
}
else
{
	if image_alpha<1{image_alpha+=.1}	
}