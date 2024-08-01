timer -=1
if (alphaBackground < 1 && timer > 0)
{
	alphaBackground+=.01
	
}

if (timer < 0)
{
	alphaBackground-=.01
	if alphaBackground < 0
	{
		instance_destroy()	
	}
}