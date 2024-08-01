for(var i=0;i<3;i++)
{
	instance_create_depth(x,y,-16000,obj_boulderDebris)
}

//creates new rock
with instance_create_depth(xstart,ystart,-16000,obj_fallingRock2){path=other.path}