y--

if image_xscale>0
{
	image_xscale-=.0075
}

image_speed=0

image_alpha-=.032 //distance

if image_alpha<0
{
	instance_destroy(self)	
}


//if !instance_exists(obj_projectileGenerator)
//{
//	image_alpha-=.25
//}