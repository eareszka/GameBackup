if global.flag[23]=1&&!toss
{
	if !instance_exists(obj_bombFlame){instance_create_depth(x,y,-16000,obj_bombFlame)}
	x=obj_playerEmory.x+2
	y=obj_playerEmory.y-22
	depth=obj_playerEmory.depth-1
}
