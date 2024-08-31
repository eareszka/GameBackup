y--

if image_xscale>0
{
	image_xscale-=.0075
}

image_speed=0

image_alpha-=.035 //distance

if image_alpha<0
{
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