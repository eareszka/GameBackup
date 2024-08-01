if image_index >= image_number-1
{
	instance_destroy(self)	
}

//kills party
if image_index >2
{
	global.EcurrentHP=0	
	global.FcurrentHP=0	
}