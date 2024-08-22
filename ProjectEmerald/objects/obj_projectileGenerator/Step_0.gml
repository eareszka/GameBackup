switch enemy.name
{
	case "Mutant Worm":
		if waveID=0
		{
			if (flag1=false)
			{
				if sec=0
				{
					CreateProjectile(enemy,row2,yStart)
					flag1=true
				}
			}
			
			if sec>=2{instance_destroy(self)}
		}
		if waveID=1
		{
			if (flag1=false)
			{
				if sec=0
				{
					CreateProjectile(enemy,row2,yStart)
					flag1=true
				}
			}
			
			if (flag2=false)
			{
				if sec=0&&steps>=30
				{
					CreateProjectile(enemy,row3,yStart)
					flag2=true
				}
			}
			
			if sec>=2&&steps>=30{instance_destroy(self)}
		}
		if waveID=2
		{
			if (flag1=false)
			{
				if sec=0
				{
					CreateProjectile(enemy,row2,yStart)
					flag1=true
				}
			}
			
			if (flag2=false)
			{
				if sec=0&&steps>=30
				{
					CreateProjectile(enemy,row3,yStart)
					flag2=true
				}
			}
			
			if sec>=2&&steps>=30{instance_destroy(self)}
		}
	break
	
	case "Itty-Bitty Ant":
		alarm[1]=1
		alarm[2]=room_speed
		alarm[3]=room_speed*2
	break
	
	case "Bull Frog":
		if waveID=0
		{
			if (flag1=false)
			{
				if sec=0
				{
					CreateProjectile(enemy,target)
					flag1=true
				}
			}
			
			if (flag2=false)
			{
				if sec=0&&steps>=30
				{
					CreateProjectile(enemy,target,-20)
					CreateProjectile(enemy,target,20)
					flag2=true
				}
			}
			
			if sec>=2&&steps>=30{instance_destroy(self)}
		}
	break
	
	//case "Nightcrawler":
	//	alarm[1]=1
	//	alarm[2]=room_speed
	//break;
}





show_debug_message(sec)

if steps>=60
{
	steps=0
	sec+=1
}
steps++