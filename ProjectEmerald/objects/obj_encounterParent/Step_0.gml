// Check for collisions
if (layer_exists("tcCOLL") && checkColl1) 
{
    // Check collisions in horizontal and vertical directions
    if (tile_meeting(x + hSpeed, y, "tcCOLL", obj_precise_tile_checker)) 
	{
        hSpeed = 0;  // Stop horizontal movement
    }
    if (tile_meeting(x, y + vSpeed, "tcCOLL", obj_precise_tile_checker)) 
	{
        vSpeed = 0;  // Stop vertical movement
    }
}

if (layer_exists("tcCOLLEne") && checkColl2) 
{
    // Check collisions in horizontal and vertical directions
    if (tile_meeting(x + hSpeed, y, "tcCOLLEne", obj_precise_tile_checker_1)) 
	{
        hSpeed = 0;  // Stop horizontal movement
    }
    if (tile_meeting(x, y + vSpeed, "tcCOLLEne", obj_precise_tile_checker_1)) 
	{
        vSpeed = 0;  // Stop vertical movement
    }
}

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
if (!activated) 
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

if absorbed
{
	var _speed = 2.5
	var _setupPointX=obj_playerEmory.x
	var _setupPointY=obj_playerEmory.y

	move_towards_point(_setupPointX, _setupPointY, min(point_distance(x, y, _setupPointX, _setupPointY), _speed));	
}

if (dead) 
{
	instance_destroy();
}

// Handle four-direction animation
FourDirectionAnimate();
image_speed=1
