if image_index >= image_number-1
{
	instance_destroy(self)	
}

if image_index >2
{
	instance_destroy(obj_boulderDestroy)
	instance_destroy(oShake)
	instance_destroy(obj_bombFlame)
	instance_destroy(obj_bomb)
}