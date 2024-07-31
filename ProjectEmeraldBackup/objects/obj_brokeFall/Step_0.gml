sprite_index=spr_broke_fall
	
if y < obj_playerBroke.y-10
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