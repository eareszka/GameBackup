global.boyToys = 0
global.defendDodgeWave=0

if !instance_exists(obj_caveSpiderWeb){instance_destroy(obj_caveSpiderWeb)}

if instance_exists(oBattleUnitBoyToy){instance_destroy(oBattleUnitBoyToy)}
if instance_exists(oBattleUnitBoyToy2){instance_destroy(oBattleUnitBoyToy2)}

if instance_exists(obj_projectileGenerator){instance_destroy(obj_projectileGenerator)}
if instance_exists(obj_defendProjectileParent){instance_destroy(obj_defendProjectileParent)}

global.battleBox=sBox

with (oMenu) instance_destroy();
with (obj_characterStats) instance_destroy();
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

if instance_exists(oBattleBackground){instance_destroy(oBattleBackground)}

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
			global.escapeImmunity = encounterRate()/2
			ResetEncounter()
			
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
			ResetEncounter()
			
			visible = true;
		}
		
		ResetEncounter()
		global.escapeImmunity = encounterRate()
	}
}
else
{
	if (conclusionType == 1)
	{		
		with (creator) 
		{
			instance_create_depth(0,0,-9999,oFadeOut)
			ResetEncounter()
			dead=true
			
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