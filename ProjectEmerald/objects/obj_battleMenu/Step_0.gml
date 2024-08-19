if oMenu.specialAvailable&&oMenu.itemAvailable
{
	if active=true
	{	
		switch oMenu.hover
		{
			case 0:
				image_index=0
				img=0
			break
	
			case 1:
				image_index=1
				img=1
			break
	
			case 2:
				image_index=2
				img=2
			break
	
			case 3:
				image_index=3
				img=3
			break
		}
	}
	else
	{
		image_index=img	
	}
}
if !oMenu.specialAvailable&&oMenu.itemAvailable
{
	if active=true
	{	
		switch oMenu.hover
		{
			case 0:
				image_index=7
				img=7
			break
	
			case 1:
				image_index=8
				img=8
			break
	
			case 2:
				image_index=9
				img=9
			break
		}
	}
	else
	{
		image_index=img	
	}
}
if oMenu.specialAvailable&&!oMenu.itemAvailable
{
	if active=true
	{	
		switch oMenu.hover
		{
			case 0:
				image_index=4
				img=4
			break
	
			case 1:
				image_index=5
				img=5
			break
	
			case 2:
				image_index=6
				img=6
			break
		}
	}
	else
	{
		image_index=img	
	}
}
if !oMenu.specialAvailable&&!oMenu.itemAvailable
{
	if active=true
	{	
		switch oMenu.hover
		{
			case 0:
				image_index=10
				img=10
			break
	
			case 1:
				image_index=11
				img=11
			break
		}
	}
	else
	{
		image_index=img	
	}
}

if wait<0
{
	visible=true	
}
else
{
	wait--	
}




x=user.x-23
y=user.y-57
