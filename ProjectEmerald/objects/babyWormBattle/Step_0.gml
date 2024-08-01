if global.flag[1]<1
{
	if place_meeting(x,y,obj_playerEmory)
	{
		if !instance_exists(oCutscene)
		{
			with instance_create_depth(x,y,-9999,oCutscene)
			{
				cutscene = "babyWorm"
			}
		}
	}
}