sprite_index=spr_finn_fall
	
if y < obj_playerFinn.y-10
{
	fall = true	
}
	
if !fall
{
	gravity = 0.3;
}
if fall
{
	gravityAmmount += .5
	gravity = gravityAmmount;	
}
direction = random_range(85,95);
speed = 1.5;