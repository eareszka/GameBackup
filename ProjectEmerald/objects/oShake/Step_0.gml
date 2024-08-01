if !setup
{
	startx = obj.x
	starty = obj.y
	setup = true
}

if timer > 0
{
	timer--
	if hOnly {obj.x=obj.x+random_range(-ammount,ammount)}
	if vOnly {obj.y=obj.y+random_range(-ammount,ammount)}
	if !hOnly && !vOnly
	{
		obj.x=obj.x+random_range(-ammount,ammount)
		obj.y=obj.y+random_range(-ammount,ammount)
	}
}
else
{
	if instance_exists(oBlackOut)
	{
		instance_destroy(oBlackOut)
	}
	obj.x = startx
	obj.y = starty
	instance_destroy(self)	
}
