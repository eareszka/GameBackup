function cutscene_main(_cutscene,_scene)
{
	switch _cutscene
	{
		case "computerTalk1":
			switch _scene
			{
				case 0:
					obj_playerEmory.sprite_index=emory_r_idle
					oMacintosh.image_index=13
					if !instance_exists(obj_textBox){create_textbox("computerTalk1")}
				break;
				case 1:
					oMacintosh.image_index=13
					obj_playerEmory.sprite_index=emory_b_idle
					cutscene_timer(30,2)
				break;
				case 2:
					oMacintosh.image_index=13
					obj_playerEmory.sprite_index=emory_l_idle
					cutscene_timer(30,3)
				break;
				case 3:
					oMacintosh.image_index=13
					if !instance_exists(obj_textBox){create_textbox("computerTalk2")}
				break;
				case 4:
					oMacintosh.image_index=11
					obj_playerEmory.sprite_index=emory_l_walking
					cutscene_move_obj(obj_playerEmory,193,115,1.5,true)
				break;
				case 5:
					oMacintosh.image_index=11
					obj_playerEmory.sprite_index=emory_b_idle
					if !instance_exists(obj_textBox){create_textbox("computerTalk3")}
					else
					{
						if obj_textBox.page=0{oMacintosh.image_index=11}
						if obj_textBox.page=1{oMacintosh.image_index=13}
					}
				break
				case 6:
					cutscene_timer(130,7)
					cutscene_setSprite(oMacintosh,sMacintosh,8,11)
				break
				case 7:
					oMacintosh.image_index=11
					if !instance_exists(obj_textBox){create_textbox("computerTalk4")}
					else
					{
						if obj_textBox.page=0{oMacintosh.image_index=13}
						if obj_textBox.page=1{oMacintosh.image_index=11}
						if obj_textBox.page=2{oMacintosh.image_index=11}
						if obj_textBox.page=3{oMacintosh.image_index=12}
						if obj_textBox.page=4{oMacintosh.image_index=11}
					}
				break
				case 8:
					instance_destroy(oCutscene)
				break
			}
		break;
		
		case "emoryIntro":
			switch _scene
			{
				case 0:
					if !instance_exists(oBossDropEmerald){instance_create_depth(280,-25,-16000,oBossDropEmerald)}
					cutscene_timer(140,1)
				break;
				
				case 1:
					cutscene_setSprite(obj_emoryIntro,emory_wakingUP,0,13)
					if obj_emoryIntro.image_index>12{cutscene_end_action()if !instance_exists(oQuestionMark){instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oQuestionMark)}}
				break;
				
				case 2:
					instance_destroy(obj_emoryIntro)
					cutscene_timer(25,3)
				break;
				
				case 3:
	
					obj_playerEmory.sprite_index=emory_f_walking
					cutscene_move_obj(obj_playerEmory,107,150,.40,true)
				break;
				
				case 4:
					instance_destroy(oQuestionMark)
					obj_playerEmory.sprite_index=emory_f_idle
					instance_destroy(oBossDropEmerald)
					if !instance_exists(obj_textBox){create_textbox("EmeraldCollect")}
				break;
				
				case 5:
					if !instance_exists(obj_textBox){create_textbox("EmoryTalk3")}
				break;
				
				case 6:
					instance_destroy(oCutscene)
				break;
				
			}
		break
		
		case "babyWorm":
			switch _scene
			{
				case 0:
					obj_playerEmory.sprite_index = emory_l_walking
					cutscene_move_obj(obj_playerEmory,325,105,1,true)	
				break;
				
				case 1:
					obj_playerEmory.sprite_index = emory_l_idle
					if !instance_exists(oBabyWormOverworld){instance_create_layer(225,110,"Player",oBabyWormOverworld)}
					oBabyWormOverworld.image_speed=.7
					if oBabyWormOverworld.image_index<7{cutscene_setSprite(oBabyWormOverworld,spr_babyWormOverworld,0,7)}
					else{oBabyWormOverworld.image_index= 7}
					
					if oBabyWormOverworld.image_index>2{if !instance_exists(obj_textBox){create_textbox("EmoryTalk1")} if !instance_exists(oExclamationMark){instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)}if obj_playerEmory.x<330{obj_playerEmory.x++}else{obj_playerEmory.x=330}}
				break;
				
				case 2:
					oBabyWormOverworld.image_speed=.5
					if instance_exists(oExclamationMark){instance_destroy(oExclamationMark)}
					if oBabyWormOverworld.x<265{oBabyWormOverworld.x+=.3 cutscene_setSprite(oBabyWormOverworld,spr_babyWormOverworld,7,11)}else{oBabyWormOverworld.x=265 oBabyWormOverworld.image_index= 7}
					if !instance_exists(obj_textBox){create_textbox("wormJRtalk1")}
				break;
				
				case 3:
					if oBabyWormOverworld.x<265{oBabyWormOverworld.x+=.3 cutscene_setSprite(oBabyWormOverworld,spr_babyWormOverworld,7,11)}else{oBabyWormOverworld.x=265 oBabyWormOverworld.image_index= 7}
					if oBabyWormOverworld.x=265{cutscene_timer(30,4)}
				break;
				
				case 4:
					oBabyWormOverworld.image_speed=1.25
					cutscene_setSprite(oBabyWormOverworld,spr_babyWormOverworld,7,11)
					cutscene_move_obj(oBabyWormOverworld,330,110,2.50,true)	
				break;
				
				case 5:
					//must use battleIntro in cutscene
					oBabyWormOverworld.image_index = 8
					NewEncounter(
						choose(	
								[global.bosses.babyWorm],
						), 
						spr_battleBackground1,
						battle2,
						true,
						6,
						oBabyWormOverworld
					);
				break
				
				case 6:
					global.flag[1] = 1
					oBabyWormOverworld.x=255
					oBabyWormOverworld.y=110
					if !instance_exists(oBattle)
					{
						cutscene_end_action()	
					}
				break
				
				case 7:
					if !instance_exists(oBabyWormOverworld)
					{
						instance_destroy(oCutscene)
					}
					else
					{
						oBabyWormOverworld.dead=true
					}
				break
			}
		break;
		
		case "moveSewerDrain":
			switch _scene
			{
				case 0:
					obj_playerEmory.visible = false
					if obj_moveSewerDrain.image_index >= 17
					{
						cutscene_end_action()	
					}
					else
					{
						cutscene_setSprite(obj_moveSewerDrain,spr_moveSewerDrain,0,18)	
					}
				break
				
				case 1:
					obj_playerEmory.visible = true
					obj_playerEmory.x = 1401
					obj_playerEmory.y = 630
					obj_playerEmory.sprite_index = emory_b_idle
					if !instance_exists(oTimer)
					{
						with instance_create_depth(x,y,-9999,oTimer)
						{
							timer = 20
							scene = 2
						}
					}
				break;
				
				case 2:
					obj_playerEmory.sprite_index = emory_l_idle
					if !instance_exists(oTimer)
					{
						with instance_create_depth(x,y,-9999,oTimer)
						{
							timer = 20
							scene = 3
						}
					}
				break;
				
				case 3:
					obj_playerEmory.sprite_index = emory_r_idle
					if !instance_exists(oTimer)
					{
						with instance_create_depth(x,y,-9999,oTimer)
						{
							timer = 20
							scene = 4
						}
					}
				break;
				
				case 4:
					obj_playerEmory.sprite_index = emory_f_idle
					if !instance_exists(oTimer)
					{
						with instance_create_depth(x,y,-9999,oTimer)
						{
							timer = 20
							scene = 5
						}
					}
				break;
				
				case 5:
					obj_moveSewerDrain.cutscene = true
					instance_destroy(oCutscene)
				break;
			}
		break;
			
		case "helicopterRide":
			switch _scene
			{
				case 1:
					cutscene_move_obj(obj_playerEmory,735,266,1,true)
				break;
				
				case 2:
					obj_playerEmory.visible = false
					obj_playerFinn.visible = false
					oHelicopter.flying=true
					with obj_camera
					{
						expand = true
						smoothness = 40
						follow = oHelicopter
						if camWidth <= 1440
						{
							camWidth+=2
						}
						if 	camHeight <= 810
						{
							camHeight+=1.1250
						}
					}
					cutscene_timer(180,3)
				break;
				
				case 3:
					obj_playerEmory.visible = false
					obj_playerFinn.visible = false
					obj_camera.smoothness = 5
					if oHelicopter.altitude<165
					{
						oHelicopter.altitude++
					}
					cutscene_move_obj(oHelicopter,763,100,1,true)
				break;
				
				case 4:
					oHelicopter.image_xscale=-1
					oHelicopterShadow.x+=10
					oHelicopter.depth=-16000
					obj_playerEmory.visible = false
					obj_playerFinn.visible = false
					oHelicopter.image_xscale = -1
					oHelicopter.persuit=true
					if oHelicopter.n>320
					{
						cutscene_end_action()	
					}
					
					//airplanes
					if oHelicopter.n>200
					{
						oAirplane1.takeOff=true
						oAirplane2.land=true
					}
				break;
				
				case 5:
					oHelicopter.altitude++
					obj_playerEmory.visible = false
					obj_playerFinn.visible = false
					cutscene_move_obj(oHelicopter,1990,-150,2.5,true)
				break;
				
				case 6:
					obj_playerEmory.x = 2033
					obj_playerEmory.y = 116
					cutscene_timer(22,7)
				break;
				
				//switches room
				case 7:
					obj_playerEmory.visible = false
					obj_playerFinn.visible = false	
					obj_playerEmory.x = -35
					obj_playerEmory.y = 3125
					oHelicopter.x = -35
					oHelicopter.y = 3125
					obj_camera.x = -35
					obj_camera.y = 3125
					obj_camera.follow=oHelicopter
					oHelicopterShadow.x+=40
					oHelicopter.flying=true
					oHelicopter.altitude=250
					cutscene_end_action()
				break;
				
				case 8:
					obj_playerEmory.visible = false
					obj_playerFinn.visible = false
					cutscene_move_obj(oHelicopter,450,2750,2.5,true)
				break;
				
				case 9:
					oHelicopter.altitude-=1
					obj_playerEmory.visible = false
					obj_playerFinn.visible = false
					cutscene_move_obj(oHelicopter,450,3000,1,true)
				break;
				
				case 10:
					oHelicopter.flying=false
					obj_playerEmory.visible = true
					obj_playerFinn.visible = true
					obj_playerEmory.x = 450
					obj_playerEmory.y = 2977
					obj_playerEmory.sprite_index=emory_r_walking
					obj_camera.follow = obj_playerEmory
					cutscene_end_action()
				break;
				
				case 11:
					cutscene_move_obj(obj_playerEmory,520,2977,1,true)
				break;
				
				case 12:
					global.flag[14]=true
					instance_destroy(oCutscene)
				break;
			}
		break;
		
		case "hornedBeetle":
			switch _scene
			{
				case 0:
					cutscene_move_obj(obj_camera,80,512,1.5,true)	
					obj_playerEmory.sprite_index = emory_f_idle
				break;
				
				case 1:
					if !instance_exists(obj_textBox)
					{
						create_textbox("HornedBeetleTalk1")
					}
				break;
				
				case 2:
					if !instance_exists(obj_hornedBeetleOverworld)
					{
						with instance_create_layer(77,512,"Player",obj_hornedBeetleOverworld){visible=false}
					}
					obj_playerEmory.sprite_index = emory_b_idle
					cutscene_timer(40,3)
				break;
				
				case 3:
					obj_hornedBeetleOverworld.visible=true
					cutscene_move_obj(obj_hornedBeetleOverworld,165,580,2,true)	
					cutscene_move_obj(obj_camera,119.60,600.60,1.5,false)	
				break;
				
				case 4:
					obj_camera.follow = obj_playerEmory
					obj_hornedBeetleOverworld.image_xscale = -1
					if !instance_exists(obj_textBox)
					{
						create_textbox("HornedBeetleTalk2")
					}
				break
						
				case 5:
					NewEncounter(
						choose(	
								[global.bosses.finFarmBoss],
						), 
						spr_battleBackground1,
						battle2,
						true,
						6,
						obj_hornedBeetleOverworld
					);
				break;
				
				case 6:
					global.flag[12] = 1
					if !instance_exists(oBattle)
					{
						cutscene_end_action()	
					}
				break
				
				case 7:
					if !instance_exists(obj_hornedBeetleOverworld)
					{
						instance_destroy(oCutscene)
					}
					else
					{
						obj_hornedBeetleOverworld.dead=true
					}
				break
				
				
			}
		break;
		
		case "ancientKingIntro":
			switch _scene
			{
				case 0:
					obj_playerEmory.sprite_index=emory_r_idle
					ShakeObject(obj_coffin,.5,5)
					cutscene_timer(60,1)
				break;
				
				case 1:
					cutscene_move_obj(obj_camera,839.35,140.10,1.5,true)
					ShakeObject(obj_coffin,.5,15)
				break;
				
				case 2:
					obj_playerEmory.sprite_index=emory_r_walking
					cutscene_move_obj(obj_playerEmory,840,140,1.5,true)
				break;
				
				case 3:
					obj_camera.follow = obj_playerEmory
					obj_playerEmory.sprite_index=emory_b_idle
					ShakeObject(obj_coffin,.5,5)
					cutscene_timer(60,4)
				break;
				
				case 4:
					obj_coffin.open=true
					cutscene_setSprite(obj_coffin,spr_coffin,0,15)
					if obj_coffin.image_index>=8
					{
						if !instance_exists(obj_ancientKingOverworld)
						{
							instance_create_layer(856,65,"Player",obj_ancientKingOverworld)
						}
					}
					cutscene_timer(70,5)
				break
				
				case 5:
					if obj_ancientKingOverworld.y<94
					{
						obj_ancientKingOverworld.walk=true
						obj_ancientKingOverworld.y+=.2
					}
					else
					{
						obj_ancientKingOverworld.walk = false
					}
					if !instance_exists(obj_textBox)
					{
						create_textbox("AncientKingText1")
					}
				break

				case 6:
					NewEncounter(
						choose(	
								[global.bosses.ancientKing],
						), 
						spr_battleBackground4,
						battle2,
						true,
						7,
						obj_ancientKingOverworld
					);
				break;
				
				case 7:
					obj_ancientKingOverworld.walk = false
					obj_ancientKingOverworld.die=true	
					if obj_ancientKingOverworld.stop=true
					{
						cutscene_end_action()	
					}
				break
				
				case 8:
					if !instance_exists(obj_textBox)
					{
						create_textbox("AncientKingText4")
					}
				break
				
				case 9:
					if !instance_exists(obj_textBox)
					{
						create_textbox("AncientKingText5")
					}
				break
				
				case 10:
					if !instance_exists(obj_textBox)
					{
						create_textbox("AncientKingText6")
					}
				break
				
				case 11:
					global.flag[13] = 1
					if !instance_exists(obj_ancientKingOverworld)
					{
						instance_destroy(oCutscene)	
					}
					else
					{
						obj_ancientKingOverworld.dead=true
					}
				break
			}
		break;
		
		case "theCoach":
			switch _scene
			{
				case 0:
					obj_playerEmory.face = RIGHT
					inst_3623BBF4.index = 1
					if !instance_exists(oTheCoachOverworld)
					{
						instance_create_layer(735,126,"Player",oTheCoachOverworld)
					}
					cutscene_move_obj(obj_playerEmory,704,135,1.5,true)
					if global.fin=1
					{cutscene_move_obj(obj_playerFinn,699,135,1.5,false)}	
					if global.broke=1
					{cutscene_move_obj(obj_playerBroke,695,135,1.5,false)}
				break
				
				case 1:
					obj_playerEmory.sprite_index = emory_r_idle
					if !instance_exists(obj_textBox)
					{
						create_textbox("FinTalk1")
					}
				break
				
				case 2:
					if !instance_exists(obj_textBox)
					{
						create_textbox("CoachTalk1")
					}
				break
				
				case 3:
					if !instance_exists(obj_textBox)
					{
						create_textbox("EmoryTalk2")
					}
				break
				
				case 4:
					oTheCoachOverworld.walk = true
					cutscene_move_obj(oTheCoachOverworld,704,135,1.5,true)	
				break;
				
				case 5:
					NewEncounter(
						choose(	
								[global.bosses.theCoach],
						), 
						spr_battleBackground1,
						battle2,
						true,
						6,
						oTheCoachOverworld
					);
				break;
				
				case 6:
					inst_3623BBF4.index = 2
					global.flag[2] = 1
					instance_destroy(oTheCoachOverworld)
					instance_destroy(oCutscene)
				break
			}
		break
		

		//if you talk to npc and not pass
		case "bombRun2":
			switch _scene
			{
				case 0:
					global.flag[24]=1
					if !instance_exists(obj_npcBomber){instance_create_layer(2700,1341,"interaction",obj_npcBomber)}
					if !instance_exists(obj_bomb){instance_create_layer(2721,1351,"interaction",obj_bomb)}
					obj_playerEmory.sprite_index = emory_f_idle
					if !instance_exists(obj_textBox)
					{
						create_textbox("bomber1")
					}
				break;
				
				case 1:
					obj_playerEmory.sprite_index = emory_b_idle
					cutscene_timer(20,2)
				break;
				
				case 2:
					obj_playerEmory.sprite_index = emory_l_idle
					cutscene_timer(20,3)
				break;
				
				case 3:
					obj_playerEmory.sprite_index = emory_r_idle
					cutscene_timer(20,4)
				break;
				
				case 4:
					obj_playerEmory.sprite_index = emory_f_idle
					cutscene_move_obj(obj_npcBomber,2824,1416,1,true)
				break;
				
				case 5:
					obj_playerEmory.sprite_index = emory_b_idle
					if !instance_exists(obj_textBox)
					{
						create_textbox("bomber1-1")
					}
				break;
				
				case 6:
					if !instance_exists(obj_textBox)
					{
						create_textbox("bomber1-2")
					}
				break;
				
				case 7:
					obj_camera.follow=noone
					cutscene_move_obj(obj_camera,2800,2850,7.5,false)
					cutscene_timer(175,8)
				break;
				
				case 8:
					obj_npcBomber.x=2700
					obj_npcBomber.y=1341
					obj_playerEmory.x=2700
					obj_playerEmory.y=1365
					if !instance_exists(obj_textBox)
					{
						create_textbox("bomber2")
					}
				break;
				
				case 9:
					obj_camera.x=2700
					obj_camera.y=1365
					obj_camera.follow=obj_playerEmory
					if !instance_exists(obj_textBox)
					{
						create_textbox("bomber2-1")
					}
				break;
				
				case 10:
					instance_destroy(oCutscene)
				break
			}
		break
		
		case "bombRunDestroy":
			switch _scene
			{
				case 0:
					if instance_exists(obj_countdown){obj_countdown.success=true}
					if instance_exists(obj_bomb){obj_camera.follow=obj_bomb}
					obj_playerEmory.sprite_index=emory_b_walking
					cutscene_move_obj(obj_playerEmory,2815,2943,1.5,true)
				break;
				
				case 1:
					obj_bomb.toss=true
					obj_playerEmory.sprite_index=emory_b_idle
					cutscene_move_obj(obj_bomb,2815,2845,2,true)
				break;
				case 2:
					obj_camera.follow=noone
					obj_playerEmory.sprite_index=emory_f_walking
					cutscene_move_obj(obj_playerEmory,2830,3000,1.5,true)
				break;
				case 3:
					ShakeObject(obj_bomb,.3,100)
					cutscene_timer(62,4)
				break
				//KABOOOOOMMMM && debris
				case 4:
					obj_playerEmory.sprite_index=emory_b_idle
					if !instance_exists(obj_bombExplosionSuccess){with instance_create_depth(2808-35,2848-75,-16000,obj_bombExplosionSuccess){success=true}}
					cutscene_timer(5,100)
				break;
				case 5:
					cutscene_move_obj(obj_camera,2829.78,2999.18,1.5,true)
				break;
				case 6:
					global.flag[23]=0
					global.flag[25]=1
					obj_camera.follow=obj_playerEmory
					instance_destroy(oCutscene)
				break
			}
		break;
		
		case "moveBookShelf":
			switch _scene
			{
				case 0:
					global.flag[26]=1
					obj_playerEmory.visible = false
					obj_playerEmory.x=345
					obj_playerEmory.y=338
					if obj_moveBookShelf.image_index=obj_moveBookShelf.image_number-1
					{
						cutscene_end_action()	
					}
					else
					{
						cutscene_setSprite(obj_moveBookShelf,spr_moveBookShelf,0,21)	
					}
				break
				
				case 1:
					obj_playerEmory.visible = true
					obj_playerEmory.sprite_index=emory_l_walking
					cutscene_move_obj(obj_playerEmory,315,338,1.5,true)
				break;
				case 2:
					obj_moveBookShelf.cutscene = true
					global.flag[26]=0
					global.flag[40]=1
					instance_destroy(oCutscene)
				break;
			}
		break;
	}
}

function create_cutscene(_cutscene)
{
	if !instance_exists(oCutscene)
	{
		with instance_create_depth(x,y,-9999,oCutscene)
		{
			cutscene = _cutscene
		}
	}
}