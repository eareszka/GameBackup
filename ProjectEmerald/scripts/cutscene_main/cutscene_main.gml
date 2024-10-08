function cutscene_main(_cutscene,_scene)
{
	switch _cutscene
	{
		case "computerTalkDestiny":
			switch _scene
			{
				case 0:
					oMacintosh.image_index=11
					cutscene_timer(40,1)
				break
				
				case 1:
					oMacintosh.image_index=12
					if !instance_exists(obj_textBox){create_textbox("computerTalk7")}
				break
				
				case 2:
					oMacintosh.image_index=11
					obj_playerEmory.sprite_index=emory_r_walking
					cutscene_move_obj(obj_playerEmory,193,115,1.5,true)
				break
				
				case 3:
					obj_playerEmory.sprite_index=emory_b_idle
					if !instance_exists(obj_textBox){create_textbox("computerTalk8")}
					else
					{
						if obj_textBox.page=0{oMacintosh.image_index=13}
						if obj_textBox.page=1{oMacintosh.image_index=11}
						if obj_textBox.page=2{oMacintosh.image_index=11}
						if obj_textBox.page=3{oMacintosh.image_index=12}
						if obj_textBox.page=4{oMacintosh.image_index=11}
						if obj_textBox.page=5{oMacintosh.image_index=11}
					}
				break	
				
				case 4:
					obj_playerEmory.sprite_index=emory_f_idle
					instance_destroy(oCutscene)
				break
			}
		break
		
		case "evaReturn":
			switch _scene
			{
				case 0:
					obj_playerEmory.sprite_index=emory_l_idle
					obj_evaFollow.sprite_index=spr_eva_l_walking
					cutscene_move_obj(obj_evaFollow,57,336,1.5,true)
				break	
				case 1:
					global.flag[57]=0
					if !instance_exists(obj_textBox){create_textbox("Loki - yes")}
				break
				
				case 2:
					if !instance_exists(oSacredAnimalBackground)
					{
						instance_destroy(oCutscene)	
					}
				break
			}
		break
		
		case "anahCutscene1":
			switch _scene
			{
				case 0:
					obj_playerEmory.sprite_index=emory_r_idle
					inst_1378BA2F.image_index=1
					cutscene_timer(10,1)
				break
				
				case 1:
					inst_1378BA2F.image_index=1
					if !instance_exists(obj_npcAnna){instance_create_layer(703,130,"Emory",obj_npcAnna)}
					else{obj_npcAnna.walking=true cutscene_move_obj(obj_npcAnna,650,130,1,true)}
				break	
				
				case 2:
					inst_1378BA2F.image_index=0
					obj_npcAnna.image_speed=.25
					obj_npcAnna.walking=false
					obj_npcAnna.panicking=true
					if !instance_exists(obj_textBox){create_textbox("AnahTalk1")}
				break;
				
				case 3:
					obj_npcAnna.image_speed=1
					obj_npcAnna.walking=true
					obj_npcAnna.panicking=false
					if obj_npcAnna.x<obj_playerEmory.x{obj_playerEmory.sprite_index=emory_l_idle}
					cutscene_move_obj(obj_npcAnna,150,130,2.5,true)
				break
				
				case 4:
					instance_destroy(obj_npcAnna)
					instance_destroy(oCutscene)
				break
			}
		break
		
		case "nightcrawlerAttack":
			switch _scene
			{
				case 0:
					obj_playerEmory.sprite_index=emory_b_idle
					
					obj_evaDog.sprite_index=spr_eva_f_idle
					cutscene_move_obj(obj_camera,1620,450,1.5,true)
				break
				case 1:
					
					obj_evaDog.sprite_index=spr_eva_f_walking
					cutscene_move_obj(obj_evaDog,1610,405,.25,true)
				break
				case 2:
					
					obj_evaDog.sprite_index=spr_eva_f_idle
					
					inst_293ECBE6.image_index=2
					inst_767A26CE.image_index=2
					
					cutscene_timer(25,3)
				break
				case 3:
					inst_293ECBE6.image_index=3
					inst_767A26CE.image_index=3
					
					
					cutscene_timer(50,4)
				break
				
				case 4:
					inst_293ECBE6.image_index=1
					inst_767A26CE.image_index=2
					
					cutscene_timer(40,5)
				break
				
				case 5:
					inst_293ECBE6.walking=true
					inst_767A26CE.walking=true
					
					cutscene_move_obj(inst_293ECBE6,obj_playerEmory.x,obj_playerEmory.y,1,true)
					cutscene_move_obj(inst_767A26CE,obj_playerEmory.x,obj_playerEmory.y,1,true)
				break
				
				case 6:
					NewEncounter(
						choose(	
								[global.enemies.nightcrawler,global.enemies.nightcrawler],
						), 
						spr_battleBackground1,
						battle2,
						true,
						7,
						obj_nightCrawlerOverworld
					);
				break
				
				case 7:
					if !instance_exists(obj_nightCrawlerOverworld)
					{
						cutscene_end_action()
					}
					else
					{
						inst_293ECBE6.image_speed=0
						inst_767A26CE.image_speed=0
						obj_nightCrawlerOverworld.dead=true
					}
				break
				
				case 8:
					obj_evaDog.sprite_index=spr_eva_f_walking
					cutscene_move_obj(obj_evaDog,obj_playerEmory.x,obj_playerEmory.y,1,true)
				break;
				
				case 9:
					obj_evaDog.image_speed=0
					if !instance_exists(obj_textBox){create_textbox("EvaRescue")}
				break;
				
				case 10:
					if instance_exists(obj_evaDog){instance_destroy(obj_evaDog)}
					global.flag[57]=1
					instance_destroy(oCutscene)
				break;
			}
		break
		
		case "ladderFallCatacombsBottom":
			switch _scene
			{
				case 0:
					cutscene_setSprite(inst_63FF9EA3,spr_ladderCreate3,0,inst_63FF9EA3.image_number-1)	
					cutscene_setSprite(inst_63FF9EA3,spr_ladderCreate3,0,inst_63FF9EA3.image_number-1)	
					cutscene_timer(30,1)
				break
				
				case 1:
					global.flag[55]=1
					obj_camera.follow=obj_playerEmory
					instance_destroy(oCutscene)
				break
			}
		break
		
		case "ladderFallStatueSwitch":
			switch _scene
			{
				case 0:
					cutscene_timer(15,1)
				break
				
				case 1:
					inst_60358FA3.image_index=0
					cutscene_move_obj(obj_camera,2500,1295,4.5,true)
					cutscene_timer(150,2)
				break
				
				case 2:
					ShakeObject(inst_60358FA3,.25,30)
					cutscene_timer(30,3)
					inst_60358FA3.image_index=0
				break;
				
				case 3:
					show_debug_message(inst_60358FA3.image_index)
					inst_60358FA3.image_speed=1.75
					if inst_60358FA3.image_index>36
					{
						cutscene_end_action()	
					}
					else
					{
						inst_60358FA3.image_index+=.05
					}
				break;
				
				case 4:
					inst_60358FA3.image_index=inst_60358FA3.image_number-1
					cutscene_move_obj(obj_camera,1528,1357,4.5,false)
					cutscene_timer(130,5)
				break;
				
				case 5:
					inst_60358FA3.image_index=inst_60358FA3.image_number-1
					obj_camera.follow=obj_playerEmory
					instance_destroy(oCutscene)
				break;
			}
			
		break
			
		
		
		
		break
		
		
		case "createAmalbonemation":
			switch _scene
			{
				case 0:
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=0
					obj_playerEmory.sprite_index=emory_b_idle
					ShakeObject(obj_AmalbonemationOverworld,.5,600)
					cutscene_timer(30,1)
				break
				case 1:
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=0
					obj_playerEmory.sprite_index=emory_f_idle
					cutscene_move_obj(obj_camera,2556,267,1,false)
					cutscene_timer(80,2)
				break;
				case 2:
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=0
					cutscene_timer(30,3)
				break;
				case 3:
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=0
					obj_AmalbonemationOverworld.activate=true
					cutscene_timer(50,4)
				break
				case 4:
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=0
					if instance_exists(oShake){instance_destroy(oShake)}
					ObjFlash(obj_AmalbonemationOverworld,3,.2,255,255,255)
					obj_AmalbonemationOverworld.done=true
					obj_AmalbonemationOverworld.x+=8
					obj_AmalbonemationOverworld.y+=8
					cutscene_end_action()
				break
				case 5:
					obj_AmalbonemationOverworld.float=true
					if !instance_exists(obj_textBox){create_textbox("aboneTalk1")}
				break;
				
				case 6:
					if global.fin=1{if !instance_exists(obj_textBox){create_textbox("aboneTalk2")}}
					else{cutscene_end_action()}
				break
				
				
				case 7:
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=0
					if !instance_exists(oExclamationMark){instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)}
					obj_playerEmory.y-=.5
					cutscene_timer(5,8)
				break
				case 8:
					obj_AmalbonemationOverworld.float=false
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=0
					obj_AmalbonemationOverworld.depth=-16000
					obj_AmalbonemationOverworld.roll=true
					cutscene_move_obj(obj_AmalbonemationOverworld,obj_playerEmory.x+8,obj_playerEmory.y+25,2,true)
				break
				case 9:
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=0
					obj_AmalbonemationOverworld.roll=false
					NewEncounter(
						choose(	
								[global.enemies.amalbonemation],
						), 
						spr_battleBackground3,
						battle2,
						true,
						10,
						obj_AmalbonemationOverworld
					);
				break;
				case 10:
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=0
					obj_playerEmory.y+=5
					obj_AmalbonemationOverworld.y=obj_playerEmory.y+60
					cutscene_end_action()
				break;
				case 11:
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=0
					if !instance_exists(obj_AmalbonemationOverworld)
					{
						cutscene_end_action()
					}
					else
					{
						obj_AmalbonemationOverworld.dead=true
					}
				break;
				case 12:
					global.flag[49]=1
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=0
					cutscene_timer(80,13)
					cutscene_move_obj(obj_camera,2500,430,3,false)
				break;
				case 13:
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=0
					ShakeObject(inst_69AD4C08,.25,30)
					cutscene_timer(30,14)
				break;
				case 14:
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.activate=true
					inst_69AD4C08.image_speed=1.75
					if inst_69AD4C08.image_index>=26
					{
						inst_69AD4C08.image_index=26
						cutscene_end_action()
					}
					else
					{
					cutscene_setSprite(inst_69AD4C08,spr_ladderCreate1,0,27)}
				break;
				case 15:
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=26
					cutscene_timer(50,16)
					cutscene_move_obj(obj_camera,2700,430,4,false)
				break;
				case 16:
					inst_7CF91B9F.image_index=0
					inst_69AD4C08.image_index=26
					cutscene_timer(2,17)
				break;
				case 17:
					inst_69AD4C08.image_index=26
				
					inst_7CF91B9F.activate=true
					inst_7CF91B9F.image_speed=1.75
					if inst_7CF91B9F.image_index>=26
					{
						inst_7CF91B9F.image_index=26
						cutscene_timer(15,18)
					}
					else
					{
					cutscene_setSprite(inst_7CF91B9F,spr_ladderCreate1,0,27)}
				break;
				case 18:
					inst_69AD4C08.image_index=26
					inst_7CF91B9F.image_index=26
					obj_camera.follow=obj_playerEmory
					instance_destroy(oCutscene)
				break;
			
			}
		break
		
		case "magician":
			switch _scene
			{
				case 0:
					if !instance_exists(obj_textBox){create_textbox("rabbitTalk1")}
					obj_hotelTopDoorOpenClose.image_index=0
				break
				case 1:
					obj_playerEmory.sprite_index=emory_l_idle
					if !instance_exists(obj_magicianOverworld){instance_create_depth(117,130,-16000,obj_magicianOverworld)}
					else{obj_magicianOverworld.image_index=0}
					obj_hotelTopDoorOpenClose.image_index=1
					cutscene_timer(40,2)
				break
				case 2:
					obj_hotelTopDoorOpenClose.image_index=0
					obj_magicianOverworld.image_speed=.070
					instance_destroy(inst_3C41BDBF)
					cutscene_setSprite(obj_magicianOverworld,spr_magicianOverworld,1,3)
					if !instance_exists(obj_textBox){create_textbox("magicianTalk1")}
				break;
				case 3:
					obj_hotelTopDoorOpenClose.image_index=0
					obj_magicianOverworld.image_speed=.6
					cutscene_setSprite(obj_magicianOverworld,spr_magicianOverworld,3,7)
					if obj_magicianOverworld.image_index=6{cutscene_end_action()}
				break;
				case 4:
					if !instance_exists(obj_magicianHat){instance_create_depth(obj_magicianOverworld.x+22,obj_magicianOverworld.y+26,-16000,obj_magicianHat)}
					obj_magicianOverworld.image_index=7
					obj_hotelTopDoorOpenClose.image_index=0
					cutscene_end_action()
				break;
				case 5:
					obj_magicianOverworld.image_index=7
					obj_hotelTopDoorOpenClose.image_index=0
					cutscene_move_obj(obj_magicianHat,obj_playerEmory.x,obj_playerEmory.y,3,false)
					if(point_distance(obj_magicianHat.x,obj_magicianHat.y,obj_playerEmory.x,obj_playerEmory.y)<3){cutscene_end_action()}
				break;
				case 6:
					obj_magicianOverworld.image_index=7
					obj_hotelTopDoorOpenClose.image_index=0
					NewEncounter(
						choose(	
								[global.bosses.magician],
						), 
						spr_battleBackground4,
						battle2,
						true,
						7,
						obj_magicianOverworld
					);
				break
				case 7:
					if instance_exists(obj_magicianHat){instance_destroy(obj_magicianHat)}
					global.flag[46]=1
					obj_hotelTopDoorOpenClose.image_index=0
					if !instance_exists(obj_magicianOverworld)
					{
						instance_destroy(oCutscene)
					}
					else
					{
						obj_magicianOverworld.image_index=1
						obj_magicianOverworld.x=216
						obj_magicianOverworld.y=137
						obj_playerEmory.x=288
						obj_playerEmory.y=147
						obj_playerEmory.sprite_index=emory_l_idle
						obj_magicianOverworld.dead=true
					}
				break
			}
		break
		
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
					//if have not saved
					if global.flag[41]=0
					{
						oMacintosh.image_index=12
						if !instance_exists(obj_textBox){create_textbox("computerTalk5")}
					}
					else
					{
						instance_destroy(oCutscene)
					}	
				break
				
				case 9:
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
				case 0:
					cutscene_timer(1,1)
				break
				
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
					oMacintosh.image_index=6
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
					{cutscene_move_obj(obj_playerzBroke,695,135,1.5,false)}
				break
				
				case 1:
					oMacintosh.image_index=6
					obj_playerEmory.sprite_index = emory_r_idle
					if !instance_exists(obj_textBox)
					{
						create_textbox("FinTalk1")
					}
				break
				
				case 2:
					oMacintosh.image_index=6
					if !instance_exists(obj_textBox)
					{
						create_textbox("CoachTalk1")
					}
				break
				
				case 3:
					oMacintosh.image_index=6
					if !instance_exists(obj_textBox)
					{
						create_textbox("EmoryTalk2")
					}
				break
				
				case 4:
					oMacintosh.image_index=6
					oTheCoachOverworld.walk = true
					cutscene_move_obj(oTheCoachOverworld,704,135,1.5,true)	
				break;
				
				case 5:
					oMacintosh.image_index=6
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
					global.flag[2] = 1
					if !instance_exists(oTheCoachOverworld)
					{
						instance_destroy(oCutscene)	
					}
					else
					{
						oTheCoachOverworld.walk=false
						oTheCoachOverworld.dead=true
					}
					if instance_exists(oMacintosh){oMacintosh.image_index=6}
					if instance_exists(inst_3623BBF4){inst_3623BBF4.index = 2}
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
					obj_playerEmory.sprite_index=emory_f_idle
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
					global.flag[52]=1
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