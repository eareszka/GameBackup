// @param text_id
function scr_game_text(_text_id)
{
	switch(_text_id)
	{	
		/****
		NPC's
		****/
		case "Lexus":
		if global.items.annasFlashLight = false
		{
			scr_name("Lexus")
			scr_text("Welcome back home")
			scr_text("I think your sister has something to ask you in the other room")
		}
		else
		{
			scr_name("Lexus")
			scr_text("Our dog Loki has been acting strange lately")
			scr_text("I have no idea what's wrong with him")
			scr_text("But anytime anyone approches him he just growls violently")
			scr_text("I guess he doesn't like any of us anymore :(")
		}
		break
		
		
		case "Anna":
			if global.quest.dogTreat.available = false
			{
				if global.flag[43]=0
				{
					scr_name("Anna")
					scr_text("Ugh, i'm so annoyed")
					scr_text("I left my new shoes over at my friends house last night")
					scr_text("And I just bought them yesterday")
					scr_text("Can you please go get them for me?")	
					scr_option("Yes", "Anna - yes")
					scr_option("No", "Anna - no")
					break
				}
				if global.flag[43]=1
				{
					scr_name("Anna")
					scr_text("Please bring my shoes back.")
					break;
				}
				if global.flag[43]=2
				{
					scr_name("Anna")
					scr_text("Thank you. I knew I left them over there last night.")
					scr_text("Wait before you go I need one more favor")
					scr_text("Can you give this toy to our dog 'Loki' that I bought for him?")
					scr_text("I would give it to him but i'm just way too lazy.")
					scr_option("Sure", "Anna - yes2")
					scr_option("No", "Anna - no2")
					break;
				}
			}
			else
			{
				scr_name("Anna")
				scr_text("Oh, hi again Emory")
				break
			}
				
			case "Anna - yes":
				global.flag[43]=1
				scr_name("Anna")
				scr_text("Ok thanks")
				scr_text("Just please find them for me")
			break
			
			case "Anna - no":
				scr_name("Anna")
				scr_text("Shoo than")
			break
				
			case "Anna - yes2":
				global.flag[43]=1
				scr_name("Anna")
				scr_text("Ok thanks")
				scr_text("*Emory recieved Dog Toy*")
				global.quest.dogTreat.available = true
			break
			
			case "Anna - no2":
				scr_name("Anna")
				scr_text("Oh ok, well at least I got my shoes")
			break
			
			
		case "ShopOwner1":
			scr_name("Shop Owner")
			scr_text("Hello, welcome to my store!")
		break
		
		case "ShopOwner2":
			scr_name("Shop Owner")
			scr_text("You can't afford this item.")
		break
		
		case "ShopOwner3":
			scr_name("Shop Owner")
			scr_text("You can't hold any more than 5 of this item.")
		break
		
		case "ShopOwner4":
			scr_name("Shop Owner")
			scr_text("Thank you for your purchase!")
			scr_text("Anything else?")
		break
		
		case "ShopOwner5":
			scr_name("Shop Owner")
			scr_text("You already own this item.")
		break
		
		
		case "DrugOwner1":
			scr_name("Pharmacist")
			scr_text("Hello, what do you need?")
		break
		
		case "Loki":
			scr_name("Loki")
			scr_text("*sniff*, *sniff*")
			if global.quest.dogTreat.available = true
			{
				scr_name("")
				scr_text("Give Loki Dog Treat?")
				scr_option("Yes", "Loki - yes")
				scr_option("No", "Loki - no")
			}
			else
			{
				scr_text("*whimper*")	
			}
		break
		
		case "Loki - yes":
			scr_name("")
			audio_stop_sound(home1)
			instance_create_layer(obj_playerEmory.x,obj_playerEmory.y,"overworldInteraction",oSacredAnimalBackground)
			audio_play_sound(sacredAnimalSong,1,false)
			scr_text("*Filled with joy Loki let out a bark*")
			scr_text("*His bark echoed around the world*")
			scr_text("*Now wherever you go the presence of Loki lingers on*")
			scr_text("*Sound of Sacred Dog collected*")
			global.sacredAnimals.dog = true;
			
			
		break
		
		case "Loki - no":
			scr_name("Loki")
			scr_text("*whimper*")
		break
		
		case "Nurse":
			scr_name("Nurse")
			scr_text("I can heal your party")
			scr_option("Yes", "Nurse - yes")
			scr_option("No", "Nurse - no")
		break
			case "Nurse - yes":
				scr_name("Nurse")
				scr_text("And.... there you go..")
				scr_text("Be safe")
				global.EcurrentHP = 20+global.hpAdd
				global.FcurrentHP = round(50+(global.hpAdd*1.2))
				global.BcurrentHP = round(10+(global.hpAdd*.5))
				global.JcurrentHP = round(100+(global.hpAdd*1.5))
			break	
			case "Nurse - no":
				instance_destroy(obj_textBox)	
			break
				
				
		case "collector1":
			if global.quest.helicopter.available=false
			{
				if global.quest.crown.available=false
				{
				    scr_name("Richard");
				    scr_text("Greetings");
				    scr_text("I am a renowned ancient artifact collector.");
				    scr_text("I'm searching for the Jeweled Crown of an ancient king,");
					scr_text("but my search has stalled.")
				    scr_text("If you find it, let me know.");
				}
				else
				{
				    scr_name("Richard");
				    scr_text("Hello, world renowned ancient artifact collector here!");
				    scr_text("I know that you have it");
				    scr_text("The Jeweled Crown of an ancient king,");
					scr_text("Please can I have it?")
					scr_option("What's in it for me?", "collector1 - yes")
					scr_option("No", "collector1 - no")
				}
			}
			else
			{
				scr_name("Richard");
				scr_text("Ta ta now! And don't tell anyone I folded so easily");	
			}
		break;
		
					case "collector1 - yes":
						scr_name("Richard")
						scr_text("Oh. ummm")
						scr_text("Well..")
						scr_text("I own an old helicopter here at this airport")
						scr_text("Ever since I bought a jet I havent flown it so much")
						scr_text("Maybe that would be a good exchange for that crown?")
						scr_option("Yes", "collector2 - yes")
						scr_option("No", "collector2 - no")
					break	
					case "collector1 - no":
						instance_destroy(obj_textBox)	
					break
					
					case "collector2 - yes":
						scr_name("Richard")
						scr_text("Ok perfcet!")
						scr_text("The helicopter is sitting at gate B")
						scr_text("Pleasure doing business with you!")
						global.quest.helicopter.available=true
						global.quest.crown=false
						scr_text("*Helicopter keys have been added to quest inventory*")
					break	
					case "collector2 - no":
						scr_text("Fine, be like that...")
					break

	
		/**********
		Basic NPC's
		**********/		
		case "ConstructionWorker1":
			scr_name("Tim")
			scr_text("Road is closed due to a fallen power line")
			scr_text("Kinda sucks considering this is the only way to enter or leave town.")
		break
		
		case "Murph":
			scr_name("Murph")
			scr_text("Walking on the sidewalk seems safe")
			scr_text("No pest want to attack me here!")
		break
		
		case "Avery":
			scr_name("Avery")
			scr_text("I heard that resting in a bed helps with memory")
			scr_text("Like.. literal memory, such as creating a save state,")
			scr_text("Just thought you should know.")
		break
		
		case "Mark":
			scr_name("Mark")
			scr_text("Across the river leads to an abandoned cemetery")
			scr_text("I heard deep underneath it lies a priceless treasure")
			scr_text("Too bad there doesn't seem a way to get across however.")
		break
		
		case "Addie":
			scr_name("Addie")
			scr_text("I hate living here")
			scr_text("I just want to live in the tropical city of Saratoga")
			scr_text("But you have to go through the mountains to get there.")
		break
		
		case "JakeJohn":
			scr_name("Jake John")
			scr_text("Rumors is a fammed Magician is staying at the hotel here")
			scr_text("But the guy doesn't even do anything cool,")
			scr_text("He just makes his bunny do all the work.")
		break
		
		case "Allanx":
			scr_name("Allanx")
			scr_text("They say the graveyard over there is actually much larger than it appears to be.")
			scr_text("Not sure what that means, but I'm too scared to go find out myself.")
		break
		
		case "Fin1":
		if global.flag[6] < 1
		{
			scr_name("Fin")
			scr_text("Hey can you help me out,")
			scr_text("My *cough* *cough* 'farm', has been invaded by huge insects.")
			scr_text("I've called several exterminators to put an end to all of this.")
			scr_text("But all have turned away at the sight of the mess out there.")
			scr_text("Please will you just find a way to get rid of them?")
			scr_option("Yes", "Fin1 - yes")
			scr_option("No", "Fin1 - no")
		break
		}
		else
		{
			scr_name("Fin")
			scr_text("Just come back when you're finished.")
		break
		}
			case "Fin1 - yes":
				scr_name("Fin")
				scr_text("Wait really?")
				scr_text("I can't thank you enough")
				scr_text("Here take this Insecticide")
				scr_text("Good luck.")
				scr_text("*Emory received Insecticide*")
				global.inventory[5][1] += 1
				global.flag[6] = 1
			break
		
			case "Fin1 - no":
				scr_name("Fin")
				scr_text("Ok that's fine.")
			break
		
		case "Fin2":
			scr_name("Fin")
			scr_text("Woah you got rid of everything.")
			scr_text("Sick man")
			scr_text("You seem like a busy person, so I think you could use some help...")
			scr_text("Wait what?!")
			scr_text("Sacred animals? Disapearing Roosters?!")
			scr_text("Sounds like something I want to be apart of")
			scr_text("So count me in!")
			global.fin = 1
		break
		
		
		case "Broke1":
			scr_name("Broke")
			scr_text("Help Help!")
			scr_text("My cat 'Beck' is missing!")
			scr_text("I've checked all over town but to no avail")
			scr_option("Is there anywhere you havent checked yet?", "Broke1 - yes")
			scr_option("good luck with that..", "Broke1 - no")
		break
			case "Broke1 - yes":
				scr_name("Broke")
				scr_text("well... I havent checked the swamp to the south of here")
				scr_text("but no way I am doing that, the place is littered with all kinds of gross creatures")
				scr_option("What if you tag along with us?", "Broke1 - yes2")
				scr_option("oh ok, good luck", "Broke1 - no")
			break
				case "Broke1 - yes2":
					scr_name("Broke")
					scr_text("Wait really! Ok, but before we go we will probably need swimming fins")
					scr_text("The water in the swamp is really murky")
					global.broke=1
				break;
			case "Broke1 - no":
				scr_name("Broke")
				scr_text("bruh, ok..")
			break;
		
		case "Joseph":
			scr_name("Joseph")
			scr_text("Oh hi Emory")
			scr_text("We can't even play outside anymore like we use to")
			scr_text("Everytime we approch the pond I get attacked by giant frogs!")
		break
		
		
		case "Meg":
			scr_name("Meg")
			scr_text("I will never go near the pond again")
			scr_text("Last time I did I saw a massive frog about 3 feet in size!")
		break
		
		case "Rebecca":
			if global.flag[43]=0||global.flag[43]=2
			{
				scr_name("Rebecca")
				scr_text("My siblings are too scared to go outside")
				scr_text("They sound like a bunch of sissys! I'm not scared of giant frogs!")
			}
			else
			{
				scr_name("Rebecca")
				scr_text("Oh... hi Annas brother... i'm not hiding anything I promise")
				scr_option("Where are Annas shoes.", "Rebecca - yes")
			}
		break
			
			case "Rebecca - yes":
				scr_name("Rebecca")
				scr_text("Ok fine. You can have them but only for 1$")
				scr_option("uh ok..", "Rebecca - yes2")
			break;
			
			case "Rebecca - yes2":
				if global.my_Money>=1
				{
					global.my_Money-=1
					scr_name("Rebecca")
					scr_text("Ok thanks")	
					scr_text("*Emory got Annas shoes back*")	
					global.flag[43]=2
				}
				else
				{
					scr_name("Rebecca")
					scr_text("Dang you're poor,")	
					scr_text("Well not I feel bad.")	
					scr_text("Just take the shoes back.")	
					scr_text("*Emory got Annas shoes back*")	
					global.flag[43]=2
				}
			break;
		
		case "Jacob":
			scr_name("Jacob")
			scr_text("I just got attacked by a plant...")
			scr_text("How the hell does that even happen.")
		break
		
		/*****
		Bosses
		*****/
		case "BrownsTownCaveBoss":
			scr_name("???")
			scr_text("What are you doing in here?... OH!")
			scr_text("It's you")
			scr_text("You squished my son. Now I will squish YOU!")
			scr_option("Attack", "BrownsTownCaveBoss - Engage")
			scr_option("Run", "BrownsTownCaveBoss - Flee")		
		break
		
		case "BrownsTownCaveBoss - Engage":
			audio_stop_sound(bossEncounter1)
			audio_stop_sound(cave1)
			obj_brownstownCaveBoss.encounter = 1
			instance_destroy(obj_textBox)
			instance_destroy(obj_textBox)
		break
		
		case "BrownsTownCaveBoss - Flee":
			audio_stop_sound(bossEncounter1)
			instance_destroy(obj_textBox)
		break;
			
		case "CatacombsBoss":
				scr_name("???")
				scr_text("What is a human doing all the way down here?!")
				scr_text("For hundreds of years i've guarded this tomb")
				scr_text("Holding onto my last piece of royality")
				scr_text("My crown")
				scr_option("Attack", "CatacombsBoss - Engage")
				scr_option("Run", "CatacombsBoss - Flee")
				
		break
			case "CatacombsBoss - Engage":
				audio_stop_sound(bossEncounter1)
				audio_stop_sound(cave2)
				obj_catacombsBoss.encounter = 1
				instance_destroy(obj_textBox)
			break
			case "CatacombsBoss - Flee":
				audio_stop_sound(bossEncounter1)
				instance_destroy(obj_textBox)
			break;
			
		case "SwampBoss":
			scr_name("???")
			scr_text("*Hisssss*")
			scr_option("Attack", "SwampBoss - Engage")
			scr_option("Run", "SwampBoss - Flee")	
		break
			case "SwampBoss - Engage":
				audio_stop_sound(bossEncounter1)
				obj_sacredSnakeBoss.encounter = 1
				instance_destroy(obj_textBox)
			break
			case "SwampBoss - Flee":
				audio_stop_sound(bossEncounter1)
				instance_destroy(obj_textBox)
			break;
			
	
		/***********
		Interactions
		***********/
		case "SaveProgress":
			scr_name("")
			scr_text("Rest and save all progress?")
			scr_option("Yes", "SaveProgress - yes")
			scr_option("No", "SaveProgress - no")
		break
			case "SaveProgress - yes":
				scr_name("")
				global.flag[41]=1
				global.EcurrentHP = 20+global.hpAdd
				global.FcurrentHP = round(50+(global.hpAdd*1.2))
				global.BcurrentHP = round(10+(global.hpAdd*.5))
				global.JcurrentHP = round(100+(global.hpAdd*1.5))
				saveGame()
				scr_text("Game Saved And Fully Rested!")
				
			break
			case "SaveProgress - no":
				instance_destroy(obj_textBox)
			break;
			
			
			
		case "SaveProgress2":
			scr_name("")
			scr_text("This bed doesn't look so comfy")
			scr_text("Rest and save all progress?")
			scr_option("Yes", "SaveProgress2 - yes")
			scr_option("No", "SaveProgress2 - no")
		break
			case "SaveProgress2 - yes":
				scr_name("")
				if global.EcurrentHP<round((20+global.hpAdd)/2){global.EcurrentHP = round((20+global.hpAdd)/2)}
				if global.FcurrentHP<round(50+(global.hpAdd*1.2)/2){global.FcurrentHP = round(50+(global.hpAdd*1.2)/2)}
				if global.BcurrentHP<round(10+(global.hpAdd*.5)/2){global.BcurrentHP = round(10+(global.hpAdd*.5)/2)}
				if global.JcurrentHP<round(100+(global.hpAdd*1.5)/2){global.JcurrentHP = round(100+(global.hpAdd*1.5)/2)}
				saveGame()
				scr_text("Game Saved But Barley Rested.")
				
			break
			case "SaveProgress2 - no":
				instance_destroy(obj_textBox)
			break;
			
		case "BedUsed":
			scr_name("")
			scr_text("This bed is being used")
		break
			
		case "EmoryNoFlashlight":
			scr_name("Emory")
			scr_text("It is far too dark in here...")
			scr_text("I will need a light source to progress")
		break
				
		
		
		case "KnockHouse":
			scr_name("")
			scr_text("No one answered")
		break
				
		
		
		case "KnockStore":
			scr_name("")
			scr_text("They must be closed")
		break
				
		
		
		case "KnockAnna":
			scr_name("")
			scr_text("Your sister is asleep")
		break
				
		
		
		case "FixBridge":
			if global.quest.bridge.available = true
			{
				scr_name("")
				scr_text("The bridge appears to be broken")
				scr_text("Use the piece of lumber you found to fix the bridge?")
				scr_option("Yes", "FixBridge - yes")
				scr_option("No", "FixBridge - no")
			}
			else
			{
				scr_name("")
				scr_text("The bridge appears to be broken")
				
			}		
		break
			case "FixBridge - yes":
				instance_destroy(obj_textBox)
				instance_destroy(inst_7D579654)
				global.flag[3] = 1
			break
			case "FixBridge - no":
				instance_destroy(obj_textBox)
			break
				
		
			
		case "GiveLumber":
			scr_name("")
			scr_text("Their is a pile of lumber here Collect it?")
			scr_option("Yes", "GiveLumber - yes")
			scr_option("No", "GiveLumber - no")
		break
			case "GiveLumber - yes":
				instance_destroy(obj_LumberPile)
				instance_destroy(obj_collisionLumberPile)
				instance_destroy(obj_textBox)
				instance_destroy(inst_63CF5CC6)
				global.quest.bridge.available = true
			break
			case "GiveLumber - no":
				instance_destroy(obj_textBox)
			break
					
		
		
		case "IntroDialogue":
			scr_name("")
			scr_text("200 years have passed since an asteroid wiped out half of the planet. Whatever was left of civilization escaped the fiery horrors of the great impact. However, when all hope seemed lost, the new world emerged from the ashes of the old one. Civilization sprawled across the last continent, yet beneath the veneer of progress, shadows lingered, whispers of forgotten terrors echoing through the rebuilt cities. Generations have passed, and though humanity thrives once more, there are those who fear another catastrophe...")
		break
			
			
			
		case "EmeraldCollect":
			scr_name("")
			scr_text("*Emory collected the gemstone that fell from the sky*")
			scr_text("*The Essence Emerald has been added to quest inventory*")
		break
		
		
		
		case "FarmKeyCollect":
			scr_name("")
			scr_text("The Horned Beetle vanished leaving a small key")
			scr_text("*Farm Key has been added to quest inventory*")
		break
				
		
		
		case "CrownCollect":
			scr_name("")
			scr_text("The Ancient King turned to dust")
			scr_text("Leaving only a valuable looking crown")
			scr_text("*Crown has been added to quest inventory*")
		break

		case "SacredRooster":
			scr_name("")
			scr_text("Approaching the rooster caused it to start vanishing")
			scr_text("However the presence of the animal lingered on.")
			scr_text("*Soul of Sacred Rooster collected*")
			global.sacredAnimals.rooster = true
		break
				
		
		
		case "Helicopter":
			if global.quest.helicopter.available = false
			{
				scr_name("")
				scr_text("You don't have the keys to fly it")
			}
			else
			{
				scr_name("")
				scr_text("Take the helicopter into the mountains?")
				scr_option("Yes", "Helicopter - yes")
				scr_option("No", "Helicopter - no")
			}
		break
			case "Helicopter - yes":
				create_cutscene("helicopterRide")
				instance_destroy(obj_textBox)
			break;
			
			case "Helicopter - no":
				instance_destroy(obj_textBox)
			break;
		
		
		
		case "GameOver":
			scr_name("")
			scr_text("It seems as if you got reckless")
			scr_text("But you can not give up yet")
			scr_text("Continue?")
			scr_option("Yes", "GameOver - yes")
			scr_option("No", "GameOver - no")
		break
			case "GameOver - yes":
				audio_stop_sound(gameOver1)
				instance_destroy(oGameOverText)
				instance_create_depth(0,0,-9999,oFadeIn)
				loadGame()
			break	
			case "GameOver - no":
				game_end()
			break
			
		case "DestroyGrave1":
		if global.sacredAnimals.dog	= false
		{
			scr_name("")
			scr_text("Engraved in the stone it states-")
			scr_text("'The sound of a sacred dog leads the way...'")
		}
		else
		{
			scr_name("")
			scr_text("Engraved in the stone it states-")
			scr_text("'The sound of a sacred dog leads the way...'")	
			scr_text("As the sound of Loki kept echoing")	
			scr_text("The gravestone started shaking")
			global.flag[7] = 1
		}	
		break
		
		case "DestroyGrave2":
		if global.sacredAnimals.dog	= false
		{
			scr_name("")
			scr_text("Engraved in the stone it states-")
			scr_text("'The sound of a sacred dog leads the way...'")
		}
		else
		{
			scr_name("")
			scr_text("Engraved in the stone it states-")
			scr_text("'The sound of a sacred dog leads the way...'")	
			scr_text("As the sound of Loki kept echoing")	
			scr_text("The gravestone started shaking")
			global.flag[8] = 1
		}	
		break
		
		case "FallenTree1":
			scr_name("")
			scr_text("This tree looks very weak.")
			obj_fallenTree.talkAmmount = 1
		break
		
		case "FallenTree2":
			scr_name("")
			scr_text("This tree looks like it could fall at any moment.")
			obj_fallenTree.talkAmmount = 2
		break
		
		case "FallenTree3":
			scr_name("")
			scr_text("This tree looks like a simple shove would push it over.")
			obj_fallenTree.talkAmmount = 3
		break
		
		case "FallenTree4":
			scr_name("")
			scr_text("Push the tree?")
			scr_option("Yes", "FallenTree4 - yes")
			scr_option("No", "FallenTree4 - no")
		break
			case "FallenTree4 - yes":
				global.flag[9] = 1
				instance_destroy(obj_textBox)
			break	
			case "FallenTree4 - no":
				instance_destroy(obj_textBox)
			break
		
		case "SacredAnimalsMenu":
			scr_name("")
			scr_text("This gemstone contains the essence soul of the sacred 12")
		break	
			
		//text used during boss fights
		
		case "HornedBeetleText1":
			scr_name("Horned Beetle")
			scr_text("You seem to be stronger then the rest,")
			scr_text("but let's see if you can HOLD your nerve!")
		break
		
		case "AncientKingText1":
			scr_name("Ancient King")
			scr_text("Ah, welcome")
			scr_text("I haven't seen a human down here in centuries.")
			scr_text("Did you get lost, or are you here to entertain me?")
		break
		
		case "AncientKingText2":
			scr_name("Ancient King")
			scr_text("What's this?")
			scr_text("I see you possess an animal essence!")
			scr_text("Unfortunate for you, I must now rip it from your very being.")
		break
		
		case "AncientKingText3":
			scr_name("Ancient King")
			scr_text("How about a trade now..")
			scr_text("You give me that animal essence!")
			scr_text("And I give you my cofin to rot in for eternity!")
		break;
		
		case "AncientKingText4":
			scr_name("Ancient King")
			scr_text("guh...")
			scr_text("no...")
			scr_text("it doesn't matter")
			scr_text("all you have done is assist in my death...")
			scr_text("for this world will end violently soon haha...")
		break;
		
		case "AncientKingText5":
			if global.fin=1
			{
				scr_name("Fin")
				scr_text("What are you talking about?")
			}
			else
			{
				scr_name("Emory")
				scr_text("What are you talking about?")
			}
		break
		
		case "AncientKingText6":
			scr_name("Ancient King")
			scr_text("the-")
			scr_text("12-")
			scr_text("only they can save your pathetic species")
		break
		
		
		case "TheCoachText1":
			scr_name("Coach")
			scr_text("Time for some backstroke!")
		break;
		
		case "TheCoachText2":
			scr_name("Coach")
			scr_text("You want to keep throwing hands with me huh?")
			scr_text("well well, lets see if you can catch these!")
		break;
		
		//Cutscene
		case "EmoryTalk1":
			scr_name("Emory")
			scr_text("?!")
			scr_text("Is - is that a worm?")
			scr_text("How is it so large?")
		break	
		
		case "FinTalk1":
			scr_name("Fin")
			scr_text("Oh.. sorry to interupt")
			scr_text("We were just leaving.")
		break
		
		case "CoachTalk1":
			scr_name("The Coach")
			scr_text("Who the hell are you?!")
			scr_text("And what are you doing up here?")
			scr_text("You kids are going to learn real quick-")
			scr_text("not to go poking around in random places!")
		break
		
		case "EmoryTalk2":
			scr_name("Emory")
			scr_text("oh boy..")
		break	
		
		case "EmoryTalk3":
			scr_name("Emory")
			scr_text("It's getting late, I should head back home.")
		break	
		
		case "HornedBeetleTalk1":
			scr_name("???")
			scr_text("Oh another exterminator, HAH!")
		break
		
		case "HornedBeetleTalk2":
			scr_name("Horned Beetle")
			scr_text("On the other side of this fence is one of the sacred 12")
			scr_text("But it's all mine now!")
			scr_text("Take it from me, if you dare...")
		break
		
		//sign
		case "sign1":
			scr_name("")
			scr_text("'Coming soon Freefarm, land of the sacred OX!'")
		break	
		
		case "sign2":
			scr_name("")
			scr_text("'Sources of light holds the key, twist them, and the hidden door you'll see.'")
		break
		
		case "sign3":
			scr_name("")
			scr_text("'Gather what you can lift and place it on the stone plate, for only then will the path ahead be seen.'")
		break
		
		case "sign4":
			scr_name("")
			scr_text("To open the door, you must step in rhythm, for the pad that glows unlocks the way.")
		break
		
		//bottled water
		case "item0":
			scr_name("")
			scr_text("You opened the chest")
			scr_text(string(global.inventory[0][0].name)+" was found")
		break
		
		//crackers
		case "item1":
			scr_name("")
			scr_text("You opened the chest")
			scr_text(string(global.inventory[1][0].name)+" was found")
		break	
		
		//edibles
		case "item2":
			scr_name("")
			scr_text("You opened the chest")
			scr_text(string(global.inventory[2][0].name)+" was found")
		break	
		
		//aed
		case "item3":
			scr_name("")
			scr_text("You opened the chest")
			scr_text(string(global.inventory[3][0].name)+" was found")
		break	
		
		//almondwater
		case "item4":
			scr_name("")
			scr_text("You opened the chest")
			scr_text(string(global.inventory[4][0].name)+" was found")
		break	
		
		//insecticide
		case "item5":
			scr_name("")
			scr_text("You opened the chest")
			scr_text(string(global.inventory[5][0].name)+" was found")
		break	
		
		//firestarter
		case "item6":
			scr_name("")
			scr_text("You opened the chest")
			scr_text(string(global.inventory[6][0].name)+" was found")
		break	
		
		//buttered noodles
		case "item7":
			scr_name("")
			scr_text("You opened the chest")
			scr_text(string(global.inventory[7][0].name)+" was found")
		break
		
		//icicle
		case "item8":
			scr_name("")
			scr_text("You opened the chest")
			scr_text(string(global.inventory[8][0].name)+" was found")
		break	
		
		//deer meat
		case "item9":
			scr_name("")
			scr_text("You opened the chest")
			scr_text(string(global.inventory[9][0].name)+" was found")
		break	
		
		//funny fungi
		case "item10":
			scr_name("")
			scr_text("You opened the chest")
			scr_text(string(global.inventory[10][0].name)+" was found")
		break	
		
		
		//tutorial
		case "AttackTutorial":
			scr_name("")
			scr_text("For a successful attack, press the correct arrow key when the arrows reach the middle bar!")
		break
		
		//warp
		case "OutHouseWarp":
			scr_name("")
			scr_text("This outhouse will take you to the beginning of the swamp.")	
			scr_text("Take the trip?")			
			scr_option("Yes", "OutHouseWarp - yes")
			scr_option("No", "OutHouseWarp - no")
		break
			case "OutHouseWarp - yes":
				obj_playerEmory.x = 1439;
				obj_playerEmory.y = 1505;
				obj_playerEmory.face = DOWN
				instance_destroy(obj_textBox)
			break	
			case "OutHouseWarp - no":
				instance_destroy(obj_textBox)
			break
		break	
		
		/******************************************************************************************
		FUCK IT FROM THIS POINT ON ALL TEXT WILL JUST BE ADDED ON TOP IN HOPE OF NO DUBLICATE CASES
		******************************************************************************************/
		case "bomber1":
			scr_name("???")
			scr_text("HEYYY")
		break
		
		case "bomber1-1":
			scr_name("???")
			scr_text("Hey!")
			scr_text("You two down there.")
		break
		
		case "bomber1-2":
			scr_name("Sawyer")
			scr_text("Theres no point in going down there the only way out is blocked off")
		break
		
		case "bomber2":
			scr_name("Sawyer")
			scr_text("Ever since the mountain has been starting to erupt many rocks have been tumbeling down.")
		break
			case "bomber2 - yes":
				scr_name("Sawyer")
				scr_text("Eh perfect, oh yeah I forgot to mention the bomb has 3 minutes to detonate so you will have to hurry down mate")
				scr_text("You better hurry, oh! and watch for falling rocks.")
				global.flag[23]=1
				global.flag[26]=1
			break
			
			case "bomber2 - no":
				scr_name("Sawyer")
				scr_text("Well that's fine.")
			break
			
		case "bomber2-1":
			scr_name("Sawyer")	
			scr_text("However this bomb should be able to clear anything! Pretty neat eh?")
			scr_text("Since you're in such a hurry to go down there why don't you drop this off at that boulder eh?")
			scr_option("Sure mate", "bomber2 - yes")
			scr_option("Nah i'm good", "bomber2 - no")
		break
		
		case "bomber2-2":
			scr_name("Sawyer")	
			scr_text("Times ticking bud.")
		break
		
		case "wormJRtalk1":
			scr_name("???")	
			scr_text("That gemstone, it will be all mine!")
			scr_text("Enjoy your last moments in the light; soon, you'll be swallowed by the dirt from which I came.")
		break
		
		case "computerTalk1":
		    scr_name("???")    
		    scr_text("Oh, off to chase falling rocks, are we?")
		break
		case "computerTalk2":
		    scr_name("???")    
		    scr_text("A green gemstone drops from the sky, and you don't even bat an eye?")
		break
		case "computerTalk3":
			scr_name("McIntosh Computer") 
		    scr_text("That's where I come in, to do all the thinking.")
		    scr_text("Let's see what we've got here...")
		break;
		case "computerTalk4":
			scr_name("McIntosh Computer") 
		    scr_text("Hmm odd.")
		    scr_text("Scanned every database known to man, and still no hits.")
		    scr_text("But hey, there's an old tale about something similar happening up north before the great impact.")
		    scr_text("Guess that little adventure didn't end well, huh?")
		    scr_text("Maybe figure out what that gemstone's all about.")
		    scr_text("Or, who knows, we might repeat history. Wouldn't that be fun?")
		    scr_text("Anyway, I'm here if you need more brilliant insights ;)") 
		break
		
		case "computerTalk5":
			scr_name("McIntosh Computer") 
			scr_text("Maybe finding a way to leave town would be a good way to start. It's not like this place has much to offer anyway.")
		break;
	}
}