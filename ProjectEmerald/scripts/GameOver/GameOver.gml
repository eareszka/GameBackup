// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GameOverOverworld()
{
	audio_play_sound(gameOver1,1,true)
	instance_create_depth(0,0,-9999,oGameOverText)
}

function GameOverBattle()
{
	audio_play_sound(gameOver1,1,true)
	instance_create_depth(0,0,-9999,oGameOverText)
	instance_create_depth(0,0,-9999,oFadeOut)
	room_goto(gameOver)
	obj_playerEmory.x = 0
	obj_playerEmory.y = 0
}