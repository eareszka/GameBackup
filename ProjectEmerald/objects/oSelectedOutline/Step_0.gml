if oQuestMenu.section = 1
{
	xsize = 1
	ysize = 1
}
else if oQuestMenu.section = 3
{
	if oQuestMenu.row < 2
	{
		xsize = .6666666666666667
		ysize = .8571428571428571
	}
	else
	{
		xsize = 1.5
		ysize = 1
	}
}

switch oQuestMenu.section
{
	//x and y pos for outline
	case 1:
		switch (oQuestMenu.row)
		{
			case 0:
				switch (oQuestMenu.column)
				{
					case 0:
						xpos = 126
						ypos = 108
					break;
					case 1:
						xpos = 126
						ypos = 126
					break;
					case 2:
						xpos = 126
						ypos = 144
					break;
				}
			break;
			case 1:
				switch (oQuestMenu.column)
				{
					case 0:
						xpos = 151
						ypos = 108
					break;
					case 1:
						xpos = 151
						ypos = 126
					break;
					case 2:
						xpos = 151
						ypos = 144
					break;
				}
			break;
			case 2:
				switch (oQuestMenu.column)
				{
					case 0:
						xpos = 176
						ypos = 108
					break;
					case 1:
						xpos = 176
						ypos = 126
					break;
					case 2:
						xpos = 176
						ypos = 144
					break;
				}
			break
		}
	break;
	case 2:
		//none
	break;
	case 3:
		switch (oQuestMenu.row)
		{
			case 0:
				switch (oQuestMenu.column)
				{
					case 0:
						xpos = 294.5
						ypos = 109.25
					break;
					case 1:
						xpos = 294.5
						ypos = 127.25
					break;
					case 2:
						xpos = 294.5
						ypos = 145.25
					break;
				}
			break;
			case 1:
				switch (oQuestMenu.column)
				{
					case 0:
						xpos = 312.5
						ypos = 109.25
					break;
					case 1:
						xpos = 312.5
						ypos = 127.25
					break;
					case 2:
						xpos = 312.5
						ypos = 145.25
					break;
				}
			break;
			case 2:
				switch (oQuestMenu.column)
				{
					case 0:
						//xsize = 2
						//ysize = 2
						xpos = 334
						ypos = 120
					break;
					case 1:
						xpos = 334
						ypos = 140
					break;
					case 2:
						xpos = 334
						ypos = 120
					break;
				}
			break
		}
	break;	
}