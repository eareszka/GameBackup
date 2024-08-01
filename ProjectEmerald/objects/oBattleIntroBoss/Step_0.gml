obj_playerEmory.depth = -16000
obj_playerFinn.depth = -16000
obj_playerBroke.depth = -16000
obj_playerJen.depth = -16000
boss.depth = -16000
var _emory = layer_get_id("Emory")
var _player = layer_get_id("Player")
obj_playerEmory.battleStart=true
alpha+=.022

if subimg < 19
{
	subimg+=.5
}
else
{
	timer--
	if timer<0
	{
		obj_playerEmory.layer = _emory
		obj_playerFinn.layer = _player
		obj_playerBroke.layer = _player
		obj_playerJen.layer = _player
		boss.depth = obj_playerEmory.depth-10
		done = true
		instance_create_depth(x,y,-16000,oFadeIn)
	}
}