#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3 
#macro UPr 4 
#macro DOWNr 5 
#macro UPl 6 
#macro DOWNl 7
#macro DOWNi 8
#macro RIGHTi 9
#macro LEFTi 10
#macro UPi 11

function faceActor (_player, _actor)
{
	if _player.y-10 > _actor.y  _player.face = UP
	else if _player.y+25 < _actor.y  && _player.y+60 > _actor.y _player.face = DOWN
	else
	{
		if _player.x < _actor.x  _player.face = RIGHT
		if _player.x > _actor.x  _player.face = LEFT
	}		
}

//function FaceActor (_player,_actor,_xx,_yy)
//{
//	if _player.y > _actor.y  _player.face = UP
//	if _player.y < _actor.bbox_top _player.face = DOWN
	
//	if _player.y < _actor.bbox_bottom&&_player.y > _actor.bbox_top
//	{
//		if _player.x < _actor.bbox_left  _player.face = RIGHT
//		if _player.x > _actor.bbox_right  _player.face = LEFT
//	}		
//}
