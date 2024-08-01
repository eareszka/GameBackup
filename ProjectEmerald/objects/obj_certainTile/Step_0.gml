if (dead) 
{
	instance_destroy(flag)
	image_alpha -= 0.05;
	image_blend = c_red;
	if (image_alpha <= 0) instance_destroy();
}

