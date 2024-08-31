y--

if image_xscale>0
{
	image_xscale-=.0065
}

image_speed=0

image_alpha-=.0325 //distance

if image_alpha<0
{
	show_debug_message(image_xscale)
	instance_destroy(self)	
}

if y<ystart-50
{
	depth=oBattle.unitDepth-50
}


//if !instance_exists(obj_projectileGenerator)
//{
//	image_alpha-=.25
//}