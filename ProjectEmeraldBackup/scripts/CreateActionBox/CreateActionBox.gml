// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateActionBox(_user,_action,_xx,_yy,_mirror=false)
{
	if !instance_exists(obj_oBattleActionBox)
	{
		with instance_create_depth(_user.x+_xx,((_user.y-sprite_get_height(_user.sprite_index)/2)+_yy),-16000,obj_oBattleActionBox)
		{
			width=35
			height=25
			action=_action
			mirror=_mirror
		}
	}
}