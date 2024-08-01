if !instance_exists(oBattleIntro) && !instance_exists(oBattle)
{
	instance_create_depth(0,0,-15000,oBattleIntro)
}
alarm[1] = room_speed *1