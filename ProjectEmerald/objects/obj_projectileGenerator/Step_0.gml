if tutorial
{
switch enemy.name
{
	case  "Scaly Feline":
		if waveID=0
		{
			CreateProjectile(1,0,0,enemy,row1,1,yStart+25,1)
			CreateProjectile(2,1,0,enemy,row3,1,yStart+25,1)
			CreateProjectile(3,2,0,enemy,row1,1,yStart+25)
			CreateProjectile(4,2,0,enemy,row2,1,yStart+25)
			CreateProjectile(5,2,50,enemy,row3,1,yStart+25,1)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		if waveID=1
		{
			CreateProjectile(1,0,0,enemy,row1,1,yStart+25)
			CreateProjectile(2,0,0,enemy,row3,1,yStart+25)
			CreateProjectile(3,0,45,enemy,row2,1,yStart+25)
			CreateProjectile(4,1,45,enemy,row1,1,yStart+25,1)
			CreateProjectile(5,2,45,enemy,row3,1,yStart+25,1)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
	break
	
	case  "Wapaloosie":
		if waveID=0
		{
			CreateProjectile(1,0,0,enemy,wapaloosieMouth,2,yStart+25,1)
			CreateProjectile(2,1,0,enemy,wapaloosieMouth,2,yStart+25,2)
			CreateProjectile(3,2,0,enemy,wapaloosieMouth,2,yStart+25,3)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
	break
	
	case  "Crude Spider":
	
		if waveID=0
		{
			CreateProjectile(1,0,0,enemy,row1,1.5,yStart)
			CreateProjectile(2,0,0,enemy,row2,1.5,yStart)
			CreateProjectile(3,1,0,enemy,row1,1.5,yStart)
			CreateProjectile(4,1,0,enemy,row3,1.5,yStart)
			CreateProjectile(5,2,0,enemy,row1,1.5,yStart)
			CreateProjectile(6,2,0,enemy,row2,1.5,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		
		if waveID=1
		{
			CreateProjectile(1,0,0,enemy,row1,1.5,yStart)
			CreateProjectile(2,0,15,enemy,row2,1.5,yStart)
			CreateProjectile(3,0,45,enemy,row3,1.5,yStart)
			CreateProjectile(4,1,0,enemy,row2,1.5,yStart)
			CreateProjectile(5,1,30,enemy,row1,1.5,yStart)
			CreateProjectile(6,1,45,enemy,row2,1.5,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		
		if waveID=2
		{
			CreateProjectile(1,0,0,enemy,row1,1.25,yStart,,1)
			CreateProjectile(2,0,0,enemy,row2,1.25,yStart,,1)
			CreateProjectile(3,0,15,enemy,row3,1.25,yStart,,1) //right one
			
			//row 1
			CreateProjectile(4,1,10,enemy,row1,1,yStart,,2)
			CreateProjectile(5,1,30,enemy,row1,1,yStart,,2)
			
			//row 2
			CreateProjectile(7,1,10,enemy,row2,1,yStart,,2)
			CreateProjectile(8,1,30,enemy,row2,1,yStart,,2)
			
			if sec>=3&&steps>=30{instance_destroy(self)}
		}
		
		if waveID=3
		{
			CreateProjectile(1,0,0,enemy,row1,1.25,yStart,,1)
			CreateProjectile(2,0,0,enemy,row3,1.25,yStart,,1)
			CreateProjectile(3,0,15,enemy,row2,1.25,yStart,,1) //right one
			
			//row 1
			CreateProjectile(4,1,10,enemy,row1,1,yStart,,2)
			CreateProjectile(5,1,30,enemy,row1,1,yStart,,2)
			
			//row 3
			CreateProjectile(7,1,10,enemy,row3,1,yStart,,2)
			CreateProjectile(8,1,30,enemy,row3,1,yStart,,2)
			
			if sec>=3&&steps>=30{instance_destroy(self)}
		}
		
		if waveID=4
		{
			CreateProjectile(1,0,0,enemy,row3,1.25,yStart,,1)
			CreateProjectile(2,0,0,enemy,row2,1.25,yStart,,1)
			CreateProjectile(3,0,15,enemy,row1,1.25,yStart,,1) //right one
			
			//row 2
			CreateProjectile(4,1,10,enemy,row2,1,yStart,,2)
			CreateProjectile(5,1,30,enemy,row2,1,yStart,,2)
			
			//row 3
			CreateProjectile(7,1,10,enemy,row3,1,yStart,,2)
			CreateProjectile(8,1,30,enemy,row3,1,yStart,,2)
			
			if sec>=3&&steps>=30{instance_destroy(self)}
		}
		
		
	break
	
	case "Grinning Rock":
		if waveID=0
		{
			CreateProjectile(1,0,0,enemy,row2,1.25,yStart)
			CreateProjectile(2,0,0,enemy,row1,1.25,yStart)
			CreateProjectile(3,0,40,enemy,row3,1.25,yStart)
			CreateProjectile(4,0,40,enemy,row2,1.25,yStart)
			CreateProjectile(5,1,20,enemy,row1,1.25,yStart)
			CreateProjectile(6,1,20,enemy,row2,1.25,yStart)
			CreateProjectile(7,2,0,enemy,row3,1.25,yStart)
			CreateProjectile(8,2,0,enemy,row1,1.25,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		if waveID=1
		{
			CreateProjectile(1,0,0,enemy,row2,1.25,yStart)
			CreateProjectile(2,0,0,enemy,row3,1.25,yStart)
			CreateProjectile(3,0,40,enemy,row1,1.25,yStart)
			CreateProjectile(4,0,40,enemy,row2,1.25,yStart)
			CreateProjectile(5,1,20,enemy,row3,1.25,yStart)
			CreateProjectile(6,1,20,enemy,row2,1.25,yStart)
			CreateProjectile(7,2,0,enemy,row1,1.25,yStart)
			CreateProjectile(8,2,0,enemy,row2,1.25,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
	break
	
	
	case "Typha":
		if waveID=0
		{
			CreateProjectile(1,0,0,enemy,row2,1,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		if waveID=1
		{
			CreateProjectile(1,0,0,enemy,row1,1,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		if waveID=2
		{
			CreateProjectile(1,0,0,enemy,row1,1,yStart)
			CreateProjectile(2,0,30,enemy,row2,1,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
	break
	
	case "Annoyed Ant":
		if waveID=0
		{
			CreateProjectile(1,0,0,enemy,row2,1.25,yStart)
			CreateProjectile(2,0,0,enemy,row3,1.25,yStart)
			CreateProjectile(3,0,45,enemy,row1,1.25,yStart)
			CreateProjectile(4,1,0,enemy,row2,1.25,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		if waveID=1
		{
			CreateProjectile(1,0,0,enemy,row2,1.25,yStart)
			CreateProjectile(2,0,15,enemy,row2,1.25,yStart)
			CreateProjectile(3,0,30,enemy,row2,1.25,yStart)
			CreateProjectile(4,1,15,enemy,row1,1.25,yStart)
			CreateProjectile(5,1,15,enemy,row3,1.25,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
	break
	
	case "Bull Frog":
		if waveID=0
		{
			CreateProjectile(1,0,0,enemy,row2,1.25,yStart,1)
			CreateProjectile(2,1,15,enemy,row3,1.25,yStart,1)
			CreateProjectile(3,2,15,enemy,row1,1.25,yStart)
			CreateProjectile(4,2,35,enemy,row2,1.25,yStart)
			CreateProjectile(5,3,25,enemy,row3,1.25,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		if waveID=1
		{
			CreateProjectile(1,0,0,enemy,row1,1.25,yStart)
			CreateProjectile(2,0,20,enemy,row2,1.25,yStart)
			CreateProjectile(3,0,40,enemy,row2,1.25,yStart)
			CreateProjectile(4,1,0,enemy,row2,1.25,yStart)
			CreateProjectile(5,1,40,enemy,row3,1.25,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		if waveID=2
		{
			CreateProjectile(1,0,0,enemy,row2,1.25,yStart)
			CreateProjectile(2,1,0,enemy,row1,1.25,yStart,1)
			CreateProjectile(3,1,20,enemy,row1,1.25,yStart,1)
			CreateProjectile(4,1,40,enemy,row1,1.25,yStart,1)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
	break
	
	case "Mutant Worm":
	
		if waveID=0
		{
			CreateProjectile(1,0,0,enemy,row2,1,yStart)
			CreateProjectile(2,1,15,enemy,row1,1,yStart) CreateProjectile(3,1,15,enemy,row3,1,yStart)
			CreateProjectile(4,2,30,enemy,row2,1,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		
		if waveID=1
		{
			CreateProjectile(1,0,0,enemy,row1,1,yStart)
			CreateProjectile(2,1,0,enemy,row2,1,yStart) 
			CreateProjectile(3,2,0,enemy,row3,1,yStart)
			CreateProjectile(4,2,30,enemy,row2,1,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		
		if waveID=2
		{
			CreateProjectile(1,0,0,enemy,row2,1,yStart)
			CreateProjectile(2,1,0,enemy,row1,1,yStart) 
			CreateProjectile(3,2,20,enemy,row3,1,yStart)
			CreateProjectile(4,2,20,enemy,row1,1,yStart)
			CreateProjectile(6,1,40,enemy,row1,1,yStart) CreateProjectile(9,1,40,enemy,row3,1,yStart)
			CreateProjectile(7,2,0,enemy,row1,1,yStart)  CreateProjectile(10,2,0,enemy,row3,1,yStart)
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
	break
	
	case "Nightcrawler":
	
		if waveID=0
		{
			CreateProjectile(1,0,0,enemy,row1,1.5,yStart,,1)
			CreateProjectile(2,0,33,enemy,row1,1.5,yStart,,1)	
			CreateProjectile(3,0,30,enemy,row3,1.5,yStart)	
			CreateProjectile(4,1,0,enemy,row2,1.5,yStart)	
			CreateProjectile(5,1,30,enemy,row3,1.5,yStart)	
			CreateProjectile(6,1,45,enemy,row2,1.5,yStart)	
			CreateProjectile(7,2,15,enemy,row2,1.5,yStart,,1)	
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		if waveID=1
		{
			CreateProjectile(1,0,0,enemy,row1,1.5,yStart,,1)
			CreateProjectile(2,0,0,enemy,row3,1.5,yStart,,1)
			CreateProjectile(3,0,45,enemy,row2,1.5,yStart)
			CreateProjectile(4,0,45,enemy,row3,1.5,yStart)
			CreateProjectile(5,1,15,enemy,row1,1.5,yStart)
			CreateProjectile(6,1,25,enemy,row2,1.5,yStart)
			CreateProjectile(7,1,40,enemy,row2,1.5,yStart)
			CreateProjectile(8,2,10,enemy,row3,1.5,yStart)
			CreateProjectile(9,2,30,enemy,row2,1.5,yStart,,1)
			
			
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		if waveID=2
		{
			CreateProjectile(1,0,0,enemy,row2,1,yStart,,1)
			CreateProjectile(2,0,50,enemy,row2,1,yStart,,1)
			CreateProjectile(3,0,10,enemy,row1,1,yStart)
			CreateProjectile(4,0,35,enemy,row1,1,yStart)
			CreateProjectile(5,1,0,enemy,row1,1,yStart)
			
			
			
			if !instance_exists(obj_defendProjectileParent){instance_destroy(self)}
		}
		
	break
}

	if steps>=60
	{
		steps=0
		sec+=1
	}
	steps++
	
}






//for tutorial
if global.flag[61]=0
{
	if !instance_exists(obj_dodgeTutorial){instance_create_depth(oBattle.x+192,oBattle.y+140,-16000,obj_dodgeTutorial)}
}
if global.flag[61]=1
{
	tutorial=true	
}