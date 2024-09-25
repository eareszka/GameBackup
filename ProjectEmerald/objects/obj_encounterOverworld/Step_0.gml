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
	
			if !place_meeting(x,y,obj_playerEmory)&&!distance_to_object(obj_playerEmory)<moveSpeed
			{
				dir = point_direction(x,y,obj_playerEmory.x,obj_playerEmory.y)

				hSpeed= lengthdir_x(moveSpeed,dir)
				vSpeed= lengthdir_y(moveSpeed,dir)
			}
			if place_meeting(x,y,obj_playerEmory)||distance_to_object(obj_playerEmory)<moveSpeed&&!obj_playerEmory.blown
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
		if (!activated)&&!unique
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
		if !unique
		{
			FourDirectionAnimate();
			image_speed=1
		}
		if unique
		{
			UniqueDirectionAnimate();
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

		if point_distance(x,y,obj_playerEmory.x,obj_playerEmory.y)<110&&!obj_playerEmory.blown
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
	
	#region Coll
	if place_meeting(x + hSpeed, y, obj_coll) || place_meeting (x + hSpeed, y, obj_coll2) || place_meeting (x + hSpeed, y, obj_coll3) || place_meeting (x + hSpeed, y, obj_coll4) || place_meeting (x + hSpeed, y, obj_collBuilding) || place_meeting (x + hSpeed, y, obj_collHouse) || place_meeting (x + hSpeed, y,obj_coll5) || place_meeting (x + hSpeed, y,obj_coll6) || place_meeting (x + hSpeed, y,oNPCfinCOLL) == true
	{
		hSpeed = 0
	}
	if place_meeting(x, y + vSpeed, obj_coll) || place_meeting (x, y + vSpeed, obj_coll2) || place_meeting (x, y + vSpeed, obj_coll3)  || place_meeting (x, y + vSpeed, obj_coll4) || place_meeting (x, y + vSpeed, obj_collBuilding) || place_meeting (x, y + vSpeed, obj_collHouse) || place_meeting (x, y + vSpeed,obj_coll5) || place_meeting (x, y + vSpeed,obj_coll6) || place_meeting (x, y + vSpeed,oNPCfinCOLL) == true
	{
		vSpeed = 0
	}
	if layer_exists("tcCOLL")
	{
		if tile_meeting(x + hSpeed, y, "tcCOLL", obj_precise_tile_checker) == true
		{
			hSpeed = 0		
		}
		if tile_meeting(x, y + vSpeed, "tcCOLL", obj_precise_tile_checker) == true
		{
			vSpeed = 0		
		}
	}
	if layer_exists("tcCOLLEne")
	{
		if tile_meeting(x + hSpeed, y, "tcCOLLEne", obj_precise_tile_checker_1) == true
		{
			hSpeed = 0		
		}
		if tile_meeting(x, y + vSpeed, "tcCOLLEne", obj_precise_tile_checker_1) == true
		{
			vSpeed = 0		
		}
	}
	


	var _encounterCount = instance_number(obj_encounterOverworld);
		
	for (var i = 0; i < _encounterCount; i++) 
	{
		var _encounterInstance = instance_find(obj_encounterOverworld, i);
			
		if _encounterInstance.id != self.id && _encounterInstance.id < self.id 
		{
			ObjDepth(self,_encounterInstance,2,1)
		}
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
}
if(!point_in_rectangle(x, y, x1, y1, x2, y2))
{
	image_index=animIndex
}

