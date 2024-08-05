if place_meeting(x,y,obj_playerEmory)
{
	if keyboard_check_pressed(vk_space) && !instance_exists(obj_textBox) && !instance_exists(oMainMenu)
	{
		faceActor(obj_playerEmory,self)
		if !audio_is_playing(textBoxOpen)
		{
			audio_play_sound(textBoxOpen,1,false)
		}
		//create_textbox(text_id)
		
		switch global.prevRoom
		{
			case RM_BROWNSTOWN:
				CreateShopMenu([global.ShopSystem.goBack,global.ShopSystem.bottledWater,global.ShopSystem.crackers,global.ShopSystem.flashlight])
			break;
			
			case RM_PLAINVILL:
				CreateShopMenu([global.ShopSystem.goBack,global.ShopSystem.crackers,global.ShopSystem.fireStarter,global.ShopSystem.butteredNoodles])
			break;
			
			case RM_MOUNTAINS:
				CreateShopMenu([global.ShopSystem.goBack,global.ShopSystem.notDeerMeat,global.ShopSystem.icicle])
			break
		}
	}
}