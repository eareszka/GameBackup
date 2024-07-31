global.boyToys = 0
global.battleBox=sBox
with (oMenu) instance_destroy();
with (oBattleStats) instance_destroy();
with (oBattleUnit) instance_destroy();
with (oBattleUnitBoyToy) instance_destroy()
instance_activate_all();
if instance_exists(obj_emoryFall){instance_destroy(obj_emoryFall)}
if instance_exists(obj_finnFall){instance_destroy(obj_finnFall)}
if instance_exists(obj_brokeFall){instance_destroy(obj_brokeFall)}
if instance_exists(obj_jenFall){instance_destroy(obj_jenFall)}
obj_playerEmory.battleStart=false
if instance_exists(oBattleIntro){instance_destroy(oBattleIntro)}
if instance_exists(oBattleIntroBoss){instance_destroy(oBattleIntroBoss)}
obj_camera.follow=obj_playerEmory

if (bossBattle = false)
{
	if (conclusionType == 3)
	{
		with (creator)
		{
			if instance_exists(oCutscene)
			{
				obj_camera.follow = obj_playerEmory
				instance_destroy(oCutscene)	
			}
			//destroys obj that cause error when loading
			if instance_exists(oBabyWormOverworld){instance_destroy(oBabyWormOverworld)}
			if instance_exists(obj_hornedBeetleOverworld){instance_destroy(obj_hornedBeetleOverworld)}
			if instance_exists(obj_ancientKingOverworld){instance_destroy(obj_ancientKingOverworld)}
			
			GameOverBattle()
		}
	}
	if (conclusionType == 2)
	{
		with (creator)
		{
			instance_create_depth(0,0,-9999,oFadeOut)
			global.escapeImmunity = irandom_range(1000,3000)	
			visible = true;
		}
	}
	if (conclusionType == 1)
	{
		with (creator) 
		{
			if instance_exists(oCutscene)
			{
				oCutscene.scene+=1
				obj_camera.follow = obj_playerEmory
			}
			instance_create_depth(0,0,-9999,oFadeOut)
			global.escapeImmunity = irandom_range(3000,6000)
			dead = true;
			visible = true;
		}
	}
}
else
{
	if (conclusionType == 1)
	{		
		with (creator) 
		{
			instance_create_depth(0,0,-9999,oFadeOut)
			dead = true;
			visible = false;
		}
	}
	if (conclusionType == 3)
	{
		with (creator)
		{
			//destroys obj that cause error when loading
			if instance_exists(oBabyWormOverworld){instance_destroy(oBabyWormOverworld)}
			if instance_exists(obj_hornedBeetleOverworld){instance_destroy(obj_hornedBeetleOverworld)}
			if instance_exists(obj_ancientKingOverworld){instance_destroy(obj_ancientKingOverworld)}
			
			GameOverBattle()
		}
	}
}