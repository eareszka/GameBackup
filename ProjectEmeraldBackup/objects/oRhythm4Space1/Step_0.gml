if timer<=0{x+=xSpeed}
if timer>0&&!fade{x+=xSpeed*.40}
image_index=subimg

if x>400&&instance_exists(oRhythmBar4)
{
	instance_destroy()	
}

if subimg=image_number-1
{
	fade=true
}

if fade
{
	if image_alpha>0{image_alpha-=.10}
}


