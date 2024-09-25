doOnce=false

ene1=noone
ene2=noone
ene3=noone


function createEnemies()
{	
	var _xx = (64*self.image_xscale)
	var _yy = (64*self.image_yscale)
		
	var _encounterAmmt = round(encounterRate()+ceil(mean(self.image_xscale,self.image_yscale)))
		
	var _ran=irandom_range(1,_encounterAmmt/2)
		
	for (var i = 0; i < _ran; i++)
	{
		// Random enemy type selection
		var _enemyRan = choose(ene1, ene2, ene3);
    
		var _xpos=random_range(0,_xx)
		var _ypos=random_range(0,_yy)
			
		// Create enemy instance
		var _enemy = instance_create_layer(x+_xpos, y+_ypos, "Emory", obj_encounterOverworld,{opponent: _enemyRan});
			
		_enemy.depth=obj_playerEmory.depth+1
    
		// Check if the enemy instance exists
		if (instance_exists(_enemy))
		{
		    with (_enemy)
		    {
				if place_meeting(x + hSpeed, y, obj_coll) || place_meeting (x + hSpeed, y, obj_coll2) || place_meeting (x + hSpeed, y, obj_coll3) || place_meeting (x + hSpeed, y, obj_coll4) || place_meeting (x + hSpeed, y, obj_collBuilding) || place_meeting (x + hSpeed, y, obj_collHouse) || place_meeting (x + hSpeed, y,obj_coll5) || place_meeting (x + hSpeed, y,obj_coll6) || place_meeting (x + hSpeed, y,oNPCfinCOLL) == true
				{
					instance_destroy();
				}
				if place_meeting(x, y + vSpeed, obj_coll) || place_meeting (x, y + vSpeed, obj_coll2) || place_meeting (x, y + vSpeed, obj_coll3)  || place_meeting (x, y + vSpeed, obj_coll4) || place_meeting (x, y + vSpeed, obj_collBuilding) || place_meeting (x, y + vSpeed, obj_collHouse) || place_meeting (x, y + vSpeed,obj_coll5) || place_meeting (x, y + vSpeed,obj_coll6) || place_meeting (x, y + vSpeed,oNPCfinCOLL) == true
				{
					instance_destroy();
				}

		        if (tile_meeting(x + hSpeed, y, "tcCOLL", obj_precise_tile_checker))
		        {
		            instance_destroy();
		        }
		        if (tile_meeting(x, y + vSpeed, "tcCOLL", obj_precise_tile_checker))
		        {
		            instance_destroy();
		        }
            
		        // Additional collision check for another layer "tcCOLLEne"
		        if (tile_meeting(x + hSpeed, y, "tcCOLLEne", obj_precise_tile_checker_1))
		        {
		            instance_destroy();
		        }
		        if (tile_meeting(x, y + vSpeed, "tcCOLLEne", obj_precise_tile_checker_1))
		        {
		            instance_destroy();
		        }
		    }
		}
	}
	doOnce=true
}