var _offset=50

var cam = view_camera[0];
var x1 = camera_get_view_x(cam)-_offset
var y1 = camera_get_view_y(cam)-_offset
var x2 = x1 + camera_get_view_width(cam)+_offset
var y2 = y1 + camera_get_view_height(cam)+_offset

	
if(point_in_rectangle(x, y, x1, y1, x2, y2))
{ 	
	if !instance_exists(obj_encounterMaster)
	{
		if(activated) 
		{
			x += hSpeed;
			y += vSpeed;
	
			if !place_meeting(x,y,obj_playerEmory)
			{
				dir = point_direction(x,y,obj_playerEmory.x,obj_playerEmory.y)

				hSpeed= lengthdir_x(moveSpeed,dir)
				vSpeed= lengthdir_y(moveSpeed,dir)
			}
			else
			{
				hit=true
				stop=true
		
				hSpeed= 0
				vSpeed= 0
			}

			if vSpeed<0
			{
				if hSpeed<vSpeed direction=180 //left
				else direction=90 //backward
			}
			if vSpeed>0
			{
				if hSpeed>vSpeed direction=0 //right
				else direction=270 //forward
			}
		}

		//patrol points
		// Initialize patrol variables
		if (!activated)&&!stationery
		{
		    // Decrease patrol timer
		    patrolTimer--;
    
		    // Check if the patrol timer has expired
		    if (patrolTimer <= 0) 
			{
		        // Stop movement temporarily
		        hSpeed = 0;
		        vSpeed = 0;
        
		        // Decrease patrol cooldown
		        patrolCooldown--;
        
		        // Check if patrol cooldown has expired
		        if (patrolCooldown <= 0) 
				{
		            // Randomize direction and update speeds
		            dir = irandom_range(0, 360);
		            hSpeed = lengthdir_x(moveSpeed, dir);
		            vSpeed = lengthdir_y(moveSpeed, dir);
            
		            // Reset timers
		            patrolCooldown = 100;
		            patrolTimer = 250;
		        }
		    }
	
			x += hSpeed;
			y += vSpeed;
		}

		if (vSpeed=0&&hSpeed=0)&&!hit
		{
			stop=true
		}
		else
		{
			stop=false
		}

		if (dead) 
		{
			instance_destroy();
		}

		// Handle four-direction animation
		if !stationery
		{
			FourDirectionAnimate();
			image_speed=1
		}
		if stationery
		{
			if !stop&&activated
			{
				image_index+=.1
			}
			else image_index=0
		}
	
	if hit&&!dead
	{
		if !instance_exists(obj_encounterMaster){instance_create_depth(x,y,-16000,obj_encounterMaster)}
		else
		{
			obj_encounterMaster.encounter=true
			obj_encounterMaster.opponent=self
		
			if !hitSet
			{
				global.comboAmmount++
				ObjFlash(self,1.5,0.05,255,255,255)
				hitSet=true
			}
		}
	}

		if point_distance(x,y,obj_playerEmory.x,obj_playerEmory.y)<110
		{ 
			activated=true
		}
		else
		{ 
			activated=false
		}
	}
	if instance_exists(obj_encounterMaster)
	{
		image_index=animIndex
	}
	
	
	#region Depth
	var _encounterCount = instance_number(obj_encounterOverworld);
		
	for (var i = 0; i < _encounterCount; i++) 
	{
		var _encounterInstance = instance_find(obj_encounterOverworld, i);
			
		if _encounterInstance.id != self.id && _encounterInstance.id < self.id 
		{
			if _encounterInstance.y>self.y self.depth=_encounterInstance.depth-1
			if _encounterInstance.y<self.y self.depth=_encounterInstance.depth+1
		}
	}
}
if(!point_in_rectangle(x, y, x1, y1, x2, y2))
{
	image_index=animIndex		
}




/*
*When encounter starts
*/
if hit&&!dead
{
	if !instance_exists(obj_encounterMaster){instance_create_depth(x,y,-16000,obj_encounterMaster)}
	else
	{
		obj_encounterMaster.encounter=true
		obj_encounterMaster.opponent=self
		
		if !hitSet
		{
			global.comboAmmount++
			ObjFlash(self,1.5,0.05,255,255,255)
			hitSet=true
		}
	}
}
