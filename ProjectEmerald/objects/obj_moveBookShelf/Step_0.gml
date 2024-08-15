image_speed = .25
if global.flag[52]=0
{
	if global.flag[40] = 1
	{
		if obj_moveBookShelf.image_index>image_number-1
		{
			image_index = image_number-1
		}
		if cutscene = false
		{
			create_cutscene("moveBookShelf")
		}
	}
	else
	{
		image_index = 0
	}
}
else
{
	image_index = image_number-1
}
