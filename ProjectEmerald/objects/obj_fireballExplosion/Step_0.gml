if !setup
{
	if image_xscale<1{image_xscale+=.2}else{setup=true}
}


if setup
{
	image_xscale-=.0075

	if image_xscale<=0{instance_destroy()}

	if image_xscale<=.5{image_alpha-=.0075}

	if place_meeting(x,y,obj_projectileGenerator.target)&&obj_projectileGenerator.target.flash=0&&!instance_exists(obj_playerOnFire)
	{
		oBattle.success+=1
	}
}