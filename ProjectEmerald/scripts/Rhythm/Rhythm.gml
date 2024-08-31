function RhythmCreate(_action,_targets)
{
	switch _action
	{
		case "attack":
			global.comboAmmount=0
			if is_array(_targets){_targets=_targets[0]}
			if _targets.perfect=true{perfectArrows(_targets)}
			else
			{
				createArrows(_targets)	
			}
		break;
		
		
		
		
		//attack
		case "attackOLD":	
			//for scatterrage
			if is_array(_targets){_targets=_targets[0]}
			
			global.comboAmmount=0
			//scripted arrows for perfect attack
			if _targets.perfect=true{perfectArrows(_targets)}
			else
			{
				
			var _arr = []
			
			//throwing arrow 
			if variable_struct_exists(_targets,"mirror") && _targets.mirror = true
			{
				ThrowArrow(_arr,_targets)	
			}
			else
			{
				//if variable_struct_exists(_targets,"arrowPath"){global.arrowPath=_targets.arrowPath}
				
				//checks to see if any effect on arrows
				if variable_struct_exists(_targets,"reverse") || variable_struct_exists(_targets,"hold")
				{
						//creates arrows
						for (var i = 0; i < _targets.arrows; i++)
						{
							var _ran = irandom_range(0,3)
							var _ran2 = irandom_range(0,99)
							arrow[i] = instance_create_depth(0,0,-10001,oRhythmArrow,global.arrowVar[_ran])
							
							//edits selected arrow
							if variable_struct_exists(_targets,"disappear"){if _targets.disappear=true{arrow[i].disappear=true arrow[i].alpha=0}}
							
							//changes x pos of each index
							if i > 0
							{
								switch _targets.frequency
								{
									case 1:
										if _ran2 < 15
										{
											arrow[i].x = arrow[i-1].x - 50
										}
										if _ran2 >= 15 && _ran2 < 50
										{
											arrow[i].x = arrow[i-1].x - 100
										}
										else
										{
											arrow[i].x = arrow[i-1].x - 75		
										}
									break;
									
									
									case 2:
										if _ran2 < 15
										{
											arrow[i].x = arrow[i-1].x - 35
										}
										if _ran2 >= 15 && _ran2 < 50
										{
											arrow[i].x = arrow[i-1].x - 65
										}
										else
										{
											arrow[i].x = arrow[i-1].x - 50	
										}
									break;
									
									
									case 3:
										if _ran2 < 15
										{
											arrow[i].x = arrow[i-1].x - 25
										}
										if _ran2 >= 15 && _ran2 < 50
										{
											arrow[i].x = arrow[i-1].x - 50
										}
										else
										{
											arrow[i].x = arrow[i-1].x - 30		
										}
									break;
									
									
									case 4:
										if _ran2 < 15
										{
											arrow[i].x = arrow[i-1].x - 25
										}
										if _ran2 >= 15 && _ran2 < 50
										{
											arrow[i].x = arrow[i-1].x - 33
										}
										else
										{
											arrow[i].x = arrow[i-1].x - 30	
										}
									break;
									
									//highest freq
									case 5:
										if _ran2 < 15
										{
											arrow[i].x = arrow[i-1].x - 25
										}
										if _ran2 >= 15 && _ran2 < 50
										{
											arrow[i].x = arrow[i-1].x - 25
										}
										else
										{
											arrow[i].x = arrow[i-1].x - 25		
										}
									break;
								}
							}
							array_push(_arr,arrow[i])
						}
				
					
						//edits created arrows
						for (var i = 0; i < array_length(_arr); i++)
						{					
							//changes speed of arrow based on ene spd
							arrow[i].xSpeed = _targets.spd
						
							//the lower the number, the more reversed
							if variable_struct_exists(_targets,"reverse") && _targets.reverse != false
							{
								var _ran3 = irandom_range(0,_targets.reverse)
								if _ran3 = 0
								{
									arrow[i].reverse = true	
							
									if variable_struct_exists(_targets,"hold")
									{
										array_last(_arr).reverse = false
									}
								}
							}
						}
						if variable_struct_exists(_targets,"hold") && _targets.hold != false
						{
							var _total_arrows = array_length(_arr);
							var _arrows_to_hold = _targets.hold;

							    // ensure we do not select more arrows than we have
							    if (_arrows_to_hold > _total_arrows)
							    {
							        _arrows_to_hold = _total_arrows;
							    }
							
								//if arrow number is 1 then hold is last index
								if _arrows_to_hold > 1
								{
									for (var i = 0; i < _arrows_to_hold; i++)
									{
										var _ran3 = irandom_range(0,_total_arrows-1)
								
										if arrow[_ran3].hold = false
										{
											arrow[_ran3].hold = true
										}
									}
								}
								else
								{
									array_last(_arr).hold = true
								}
						}
				}
				else
				{
				
					//without effect
					for (var i = 0; i < _targets.arrows; i++)
					{
						var _ran = irandom_range(0,3)
						var _ran2 = irandom_range(0,99)
						arrow[i] = instance_create_depth(0,0,-10001,oRhythmArrow,global.arrowVar[_ran])	
						
						//edits selected arrow
						if variable_struct_exists(_targets,"disappear"){if _targets.disappear=true{arrow[i].disappear=true arrow[i].alpha=0}}
							
						//changes x pos of each index
						if i > 0
						{
							switch _targets.frequency
							{
								case 1:
									if _ran2 < 15
									{
										arrow[i].x = arrow[i-1].x - 50
									}
									if _ran2 >= 15 && _ran2 < 50
									{
										arrow[i].x = arrow[i-1].x - 100
									}
									else
									{
										arrow[i].x = arrow[i-1].x - 75		
									}
								break;
									
									
								case 2:
									if _ran2 < 15
									{
										arrow[i].x = arrow[i-1].x - 35
									}
									if _ran2 >= 15 && _ran2 < 50
									{
										arrow[i].x = arrow[i-1].x - 65
									}
									else
									{
										arrow[i].x = arrow[i-1].x - 50	
									}
								break;
									
									
								case 3:
									if _ran2 < 15
									{
										arrow[i].x = arrow[i-1].x - 25
									}
									if _ran2 >= 15 && _ran2 < 50
									{
										arrow[i].x = arrow[i-1].x - 50
									}
									else
									{
										arrow[i].x = arrow[i-1].x - 30		
									}
								break;
									
									
								case 4:
									if _ran2 < 15
									{
										arrow[i].x = arrow[i-1].x - 25
									}
									if _ran2 >= 15 && _ran2 < 50
									{
										arrow[i].x = arrow[i-1].x - 33
									}
									else
									{
										arrow[i].x = arrow[i-1].x - 30	
									}
								break;
									
								//highest freq
								case 5:
									if _ran2 < 15
									{
										arrow[i].x = arrow[i-1].x - 25
									}
									if _ran2 >= 15 && _ran2 < 50
									{
										arrow[i].x = arrow[i-1].x - 25
									}
									else
									{
										arrow[i].x = arrow[i-1].x - 25		
									}
								break;
							}
						}
						array_push(_arr,arrow[i])
				
						//changes speed of arrow based on ene spd
						arrow[i].xSpeed = _targets.spd
					}
				}
				//creates visual
				if variable_struct_exists(_targets,"hold") && _targets.hold != false
				{
					with instance_create_depth(0,0,-10001,oRhythmBar1)
					{
						spd= _targets.spd
						xSpeed = array_first(_arr).xSpeed
						hold = true
						array_copy(arr,0,_arr,0,array_length(_arr))
					}
					with instance_create_depth(0,0,-10000,oRhythmVisual)	
					{
						xSpeed = array_first(_arr).xSpeed
						hold = true
						array_copy(arr,0,_arr,0,array_length(_arr))
					}
					instance_create_depth(0,0,-16000,obj_comboNumber,{dance: false})
				}
				else
				{
					with instance_create_depth(0,0,-10001,oRhythmBar1)
					{
						array_copy(arr,0,_arr,0,array_length(_arr))
					}
					with instance_create_depth(0,0,-10000,oRhythmVisual)	
					{
						array_copy(arr,0,_arr,0,array_length(_arr))
					}
					if array_length(_arr)>1{instance_create_depth(0,0,-16000,obj_comboNumber,{dance: false})}
				}
			}
			}
		break;
		
		
		
		
		
		
		
		//keyboard presses
		case 2:
			instance_create_depth(0,0,-10000,oRhythmVisual2)	
			instance_create_depth(0,0,-10001,oRhythmBar2)	
			var _num = irandom_range(0,2)
			switch _num
			{
				case 0:
					instance_create_depth(0, 0, -10001, oRhythmSpace);
					instance_create_depth(0, 0, -10001, oRhythmSpace2);
					instance_create_depth(0, 0, -10001, oRhythmSpace3);
					instance_create_depth(0, 0, -10001, oRhythmSpace4);
					instance_create_depth(0, 0, -10001, oRhythmSpace5);
					instance_create_depth(0, 0, -10001, oRhythmSpace6);
					instance_create_depth(0, 0, -10001, oRhythmSpace7);
					oRhythmSpace.x = 0
					oRhythmSpace2.x = -100
					oRhythmSpace3.x = -150
					oRhythmSpace4.x = -225
					oRhythmSpace5.x = -325
					oRhythmSpace6.x = -475
					oRhythmSpace7.x = -575
				break;
				case 1:
					instance_create_depth(0, 0, -10001, oRhythmSpace);
					instance_create_depth(0, 0, -10001, oRhythmSpace2);
					instance_create_depth(0, 0, -10001, oRhythmSpace3);
					instance_create_depth(0, 0, -10001, oRhythmSpace4);
					instance_create_depth(0, 0, -10001, oRhythmSpace5);
					instance_create_depth(0, 0, -10001, oRhythmSpace6);
					instance_create_depth(0, 0, -10001, oRhythmSpace7);
					oRhythmSpace.x = 0
					oRhythmSpace2.x = -50
					oRhythmSpace3.x = -100
					oRhythmSpace4.x = -175
					oRhythmSpace5.x = -275
					oRhythmSpace6.x = -375
					oRhythmSpace7.x = -425
				break
				case 2:
					instance_create_depth(0, 0, -10001, oRhythmSpace);
					instance_create_depth(0, 0, -10001, oRhythmSpace2);
					instance_create_depth(0, 0, -10001, oRhythmSpace3);
					instance_create_depth(0, 0, -10001, oRhythmSpace4);
					instance_create_depth(0, 0, -10001, oRhythmSpace5);
					instance_create_depth(0, 0, -10001, oRhythmSpace6);
					instance_create_depth(0, 0, -10001, oRhythmSpace7);
					oRhythmSpace.x = 0
					oRhythmSpace2.x = -50
					oRhythmSpace3.x = -100
					oRhythmSpace4.x = -175
					oRhythmSpace5.x = -275
					oRhythmSpace6.x = -375
					oRhythmSpace7.x = -425	
				break;
			}
		break;
		
		case "scatterRage":
			var _arr = []
			for (var i=0;i<array_length(_targets);i++)
			{
				space[i] = instance_create_depth(0,0,-10003,oRhythmSpace)
				var _ran2 = irandom_range(0,99)
				if i > 0
				{
					if _ran2 < 15
					{
						space[i].x = space[i-1].x - 30
					}
					if _ran2 >= 15 && _ran2 < 50
					{
						space[i].x = space[i-1].x - 60
					}
					else
					{
						space[i].x = space[i-1].x - 90
					}
				}
				space[i].xSpeed = 3
				array_push(_arr,space[i])
			}	
			with instance_create_depth(camera_get_view_x(view_camera[0])+180,camera_get_view_y(view_camera[0])+8,-10001,oRhythmBar6){array_copy(spaceArr,0,_arr,0,array_length(_arr))}
			instance_create_depth(0,0,-10000,oRhythmVisual6)			
		break
				
		
		
		
		
		
		
		//fin special
		case "finCreate":
		
		//ERROR
		//the var _num switch causes the oRhythmBar not able to detect each item
		//putting all in a switch causes the action to be complete before performed
		
			instance_create_depth(0,0,-10000,oRhythmVisual3)	
			instance_create_depth(0,0,-10001,oRhythmBar3)	
			instance_create_depth(0,0,-10001,oRhythmLine1)	
			instance_create_depth(0,0,-10001,oRhythmLine2)	
			instance_create_depth(0, 0, -10001, oRhythmItems1);
			instance_create_depth(0, 0, -10001, oRhythmItems2);
			instance_create_depth(0, 0, -10001, oRhythmItems3);
			instance_create_depth(0, 0, -10001, oRhythmItems4);
			oRhythmItems1.yPlace = 5
			oRhythmItems2.yPlace = 5
			oRhythmItems3.yPlace = 21
			oRhythmItems4.yPlace = 37
			oRhythmItems1.x = -350
			oRhythmItems2.x = -225
			oRhythmItems3.x = 384
			oRhythmItems4.x = 484
			//var _num = irandom_range(1,3)
			//switch _num
			//{
			//	case 0:
			//		instance_create_depth(0,0,-10001,oRhythmLine1)	
			//		instance_create_depth(0,0,-10001,oRhythmLine2)	
			//		instance_create_depth(0, 0, -10001, oRhythmItems1);
			//		instance_create_depth(0, 0, -10001, oRhythmItems2);
			//		instance_create_depth(0, 0, -10001, oRhythmItems3);
			//		instance_create_depth(0, 0, -10001, oRhythmItems4);
			//		oRhythmItems1.yPlace = 5
			//		oRhythmItems2.yPlace = 5
			//		oRhythmItems3.yPlace = 21
			//		oRhythmItems4.yPlace = 37
			//		oRhythmItems1.x = -350
			//		oRhythmItems2.x = -225
			//		oRhythmItems3.x = 384
			//		oRhythmItems4.x = 484
			//	break;
			//	case 1:
			//		instance_create_depth(0,0,-10001,oRhythmLine1)	
			//		instance_create_depth(0,0,-10001,oRhythmLine2)	
			//		instance_create_depth(0, 0, -10001, oRhythmItems1);
			//		instance_create_depth(0, 0, -10001, oRhythmItems2);
			//		instance_create_depth(0, 0, -10001, oRhythmItems3);
			//		instance_create_depth(0, 0, -10001, oRhythmItems4);
			//		oRhythmItems1.yPlace = 5
			//		oRhythmItems2.yPlace = 21
			//		oRhythmItems3.yPlace = 5
			//		oRhythmItems4.yPlace = 5
			//		oRhythmItems1.x = -350
			//		oRhythmItems2.x = -225
			//		oRhythmItems3.x = 384
			//		oRhythmItems4.x = 484
			//	break;
			//	case 2:
			//		instance_create_depth(0,0,-10001,oRhythmLine1)	
			//		instance_create_depth(0,0,-10001,oRhythmLine2)	
			//		instance_create_depth(0, 0, -10001, oRhythmItems1);
			//		instance_create_depth(0, 0, -10001, oRhythmItems2);
			//		instance_create_depth(0, 0, -10001, oRhythmItems3);
			//		instance_create_depth(0, 0, -10001, oRhythmItems4);
			//		oRhythmItems1.yPlace = 37
			//		oRhythmItems2.yPlace = 21
			//		oRhythmItems3.yPlace = 5
			//		oRhythmItems4.yPlace = 37
			//		oRhythmItems1.x = -200
			//		oRhythmItems2.x = -250
			//		oRhythmItems3.x = 484
			//		oRhythmItems4.x = 384
			//	break;
			//}
		break;
				
		
		
		
		
		
		
		//emorys special
		case "wrath":
			global.comboAmmount=1
			instance_create_depth(0,0,-10000,oRhythmVisual4)	
			instance_create_depth(0,0,-10001,oRhythmBar4)	
			instance_create_depth(0,0,-10001,obj_Rhythm4Space)
			instance_create_depth(0,0,-16000,obj_comboNumber,{dance: false})
		break;
		
		//summon boyToys 1
		case "summonBoyToys":
			instance_create_depth(0,0,-10000,oRhythmVisual5)	
			instance_create_depth(camera_get_view_x(view_camera[0])-50,camera_get_view_y(view_camera[0])+8,-10001,oRhythmBar5)	
			//makes sure we only have 1 boy toy on left and right
			if !instance_exists(oBattleUnitBoyToy){with instance_create_depth(camera_get_view_x(view_camera[0])+180,camera_get_view_y(view_camera[0])+10,oBattle.unitDepth,oRhythmUnitBoyToy) {xPos = choose(-80,-40,0,40,80) sprite_index = choose(spr_boyToy1,spr_boyToy2,spr_boyToy3)}}
			else{with instance_create_depth(camera_get_view_x(view_camera[0])+180,camera_get_view_y(view_camera[0])+10,oBattle.unitDepth,oRhythmUnitBoyToy2) {xPos = choose(-80,0,80) sprite_index = choose(spr_boyToy1,spr_boyToy2,spr_boyToy3)}}
		break;
		
		//summon boyToys 2
		case "summonBoyToys2":
			instance_create_depth(0,0,-10000,oRhythmVisual5)	
			instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+10,-10001,oRhythmBar5)	
			with instance_create_depth(camera_get_view_x(view_camera[0])+180,camera_get_view_y(view_camera[0])+10,oBattle.unitDepth,oRhythmUnitBoyToy) {xPos = choose(-40,40) sprite_index = choose(spr_boyToy1,spr_boyToy2,spr_boyToy3)}
			with instance_create_depth(camera_get_view_x(view_camera[0])+180,camera_get_view_y(view_camera[0])+10,oBattle.unitDepth,oRhythmUnitBoyToy2) {xPos = choose(-80,0,80) sprite_index = choose(spr_boyToy1,spr_boyToy2,spr_boyToy3)}
		break;
	}
}



function ThrowArrow(_arr,_targets)
{
	for (var i = 0; i < _targets.arrows; i++)
	{
		var _ran = irandom_range(0,3)
		arrow[i] = instance_create_depth(-30,0,_targets.depth,oRhythmArrow,global.arrowVar[_ran])		//changes x pos of each index
		arrow[0].dontShow = true
		if i > 0
		{
			arrow[i].n = arrow[i-1].n - 100
			array_push(_arr,arrow[i])
		}		
	}
	
	for (var i = 0; i < array_length(_arr)+1; i++)
	{					
		arrow[i].throwArrow = true		
		//changes speed of arrow based on power of ene
		arrow[i].movement_speed = _targets.spd
						
		//the lower the number, the more reversed
		if variable_struct_exists(_targets,"reverse") && _targets.reverse != false
		{
			var _ran3 = irandom_range(0,_targets.reverse)
			if _ran3 = 0
			{
				arrow[i].reverse = true	
							
				if variable_struct_exists(_targets,"hold") && _targets.hold != false
				{
					array_last(_arr).reverse = false
				}
			}
		}
	}
	
	with instance_create_depth(0,0,-10001,oRhythmBar1)
	{
		targets = _targets
		mirror = true
		array_copy(arr,0,_arr,0,array_length(_arr))
	}
	with instance_create_depth(0,0,-10000,oRhythmVisual)	
	{
		array_copy(arr,0,_arr,0,array_length(_arr))
	}		
}







function DanceRhythm(_targets)
{
	global.comboAmmount=0
	createArrows(_targets,true)	
}




function perfectArrows(_targets)
{
	switch _targets.name
	{
		case "Ancient King":
			switch global.perfect
			{
				case 0:
					var _arr = []
					var _ammount=3
					for (var i = 0; i < _ammount+1; i++)
					{
						arrow[i] = instance_create_depth(0,0,-10001,oRhythmArrow)
						arrow[i].xSpeed=3
						array_push(_arr,arrow[i])
					}
					for (var i = 0; i < _ammount+1; i++)
					{
						//subimg
						arrow[0].subimg=3
						arrow[1].subimg=3
						arrow[2].subimg=2
						arrow[3].subimg=2
						
						//distance
						if i > 0
						{
							arrow[i].x = arrow[i-1].x - 50
						}
					}
					oBattle.perfectCurse=true
					with instance_create_depth(0,0,-10001,oRhythmBar1)
					{
						perfect=true
						array_copy(arr,0,_arr,0,array_length(_arr))
					}
					with instance_create_depth(0,0,-10000,oRhythmVisual)	
					{
						array_copy(arr,0,_arr,0,array_length(_arr))
					}
					if array_length(_arr)>1{instance_create_depth(0,0,-16000,obj_comboNumber,{dance: false})}
				break;
				
				case 1:
					var _arr = []
					var _ammount=5
					for (var i = 0; i < _ammount+1; i++)
					{
						arrow[i] = instance_create_depth(0,0,-10001,oRhythmArrow)
						arrow[i].xSpeed=3
						array_push(_arr,arrow[i])
					}
					for (var i = 0; i < _ammount+1; i++)
					{
						//subimg
						arrow[0].subimg=3
						arrow[1].subimg=3
						arrow[2].subimg=2
						arrow[3].subimg=2
						arrow[4].subimg=1
						arrow[5].subimg=0
						
						//distance
						if i > 0
						{
							arrow[i].x = arrow[i-1].x - 50
						}
					}
					oBattle.perfectCurse=true
					with instance_create_depth(0,0,-10001,oRhythmBar1)
					{
						perfect=true
						array_copy(arr,0,_arr,0,array_length(_arr))
					}
					with instance_create_depth(0,0,-10000,oRhythmVisual)	
					{
						array_copy(arr,0,_arr,0,array_length(_arr))
					}
					if array_length(_arr)>1{instance_create_depth(0,0,-16000,obj_comboNumber,{dance: false})}	
				
				break;
				
				case 2:
					var _arr = []
					var _ammount=7
					for (var i = 0; i < _ammount+1; i++)
					{
						arrow[i] = instance_create_depth(0,0,-10001,oRhythmArrow)
						arrow[i].xSpeed=3
						array_push(_arr,arrow[i])
					}
					for (var i = 0; i < _ammount+1; i++)
					{
						//subimg
						arrow[0].subimg=3
						arrow[1].subimg=3
						arrow[2].subimg=2
						arrow[3].subimg=2
						arrow[4].subimg=1
						arrow[5].subimg=0
						arrow[6].subimg=1
						arrow[7].subimg=0
						
						//distance
						if i > 0
						{
							arrow[i].x = arrow[i-1].x - 50
						}
					}
					oBattle.perfectCurse=true
					with instance_create_depth(0,0,-10001,oRhythmBar1)
					{
						perfect=true
						array_copy(arr,0,_arr,0,array_length(_arr))
					}
					with instance_create_depth(0,0,-10000,oRhythmVisual)	
					{
						array_copy(arr,0,_arr,0,array_length(_arr))
					}
					if array_length(_arr)>1{instance_create_depth(0,0,-16000,obj_comboNumber,{dance: false})}	
				break;	
			}
		break;
	}
}


function createArrows(_targets,_dance=false)
{
	var _arr = []
	for (var i = 0; i < _targets.arrows; i++)
	{
		var _ran = irandom_range(0,3)
		var _ran2 = irandom_range(0,99)
		if !_dance{arrow[i] = instance_create_depth(oBattle.x-250,oBattle.y+8,-16000,oRhythmArrow,{img: _ran})}
		if _dance{arrow[i] = instance_create_depth(obj_camera.x-450,obj_camera.y-112,-16000,oRhythmArrow,{img: _ran})}
		
		//changes x pos of each index 
		if i > 0
		{
			switch _targets.frequency
			{
				case 1:
					if _ran2 < 15
					{
						arrow[i].x = arrow[i-1].x - 50
					}
					if _ran2 >= 15 && _ran2 < 50
					{
						arrow[i].x = arrow[i-1].x - 100
					}
					else
					{
						arrow[i].x = arrow[i-1].x - 75		
					}
				break;
									
									
				case 2:
					if _ran2 < 15
					{
						arrow[i].x = arrow[i-1].x - 35
					}
					if _ran2 >= 15 && _ran2 < 50
					{
						arrow[i].x = arrow[i-1].x - 65
					}
					else
					{
						arrow[i].x = arrow[i-1].x - 50	
					}
				break;
									
									
				case 3:
					if _ran2 < 15
					{
						arrow[i].x = arrow[i-1].x - 25
					}
					if _ran2 >= 15 && _ran2 < 50
					{
						arrow[i].x = arrow[i-1].x - 50
					}
					else
					{
						arrow[i].x = arrow[i-1].x - 30		
					}
				break;
									
									
				case 4:
					if _ran2 < 15
					{
						arrow[i].x = arrow[i-1].x - 25
					}
					if _ran2 >= 15 && _ran2 < 50
					{
						arrow[i].x = arrow[i-1].x - 33
					}
					else
					{
						arrow[i].x = arrow[i-1].x - 30	
					}
				break;
									
				//highest freq
				case 5:
					if _ran2 < 15
					{
						arrow[i].x = arrow[i-1].x - 25
					}
					if _ran2 >= 15 && _ran2 < 50
					{
						arrow[i].x = arrow[i-1].x - 25
					}
					else
					{
						arrow[i].x = arrow[i-1].x - 25		
					}
				break;
			}
		}
		array_push(_arr,arrow[i])
	}	
	editArrows(_arr,_targets,_dance)
}

function editArrows(_arr,_targets,_dance)
{
	for (var i = 0; i < array_length(_arr); i++)
	{	
		//fixes repeating arrow problem
		if i > 0
		{
			if arrow[i-1].img!=3
			{
				arrow[i].img=arrow[i-1].img+1
			}
			else
			{
				arrow[i].img=0	
			}
		}
		
		//changes speed of arrow based on ene spd
		arrow[i].xSpeed = 4
		
		//disappear arrows
		if variable_struct_exists(_targets,"disappear"){if _targets.disappear=true{arrow[i].disappear=true arrow[i].image_alpha=0}}
		
		
		//the lower the number, the more reversed
		if variable_struct_exists(_targets,"reverse") && _targets.reverse != false
		{
			var _ran3 = irandom_range(0,_targets.reverse)
			if _ran3 = 0
			{
				arrow[i].reverse = true	
							
				if variable_struct_exists(_targets,"hold")
				{
					array_last(_arr).reverse = false
				}
			}
		}
	}
	if array_length(_arr)>1{instance_create_depth(0,0,-16000,obj_comboNumber,{dance: _dance})}
	with instance_create_depth(_targets.x,_targets.y,-15000,obj_RhythmArrowAttackBar,{target: _targets, dance: _dance})
	{
		array_copy(arrows,0,_arr,0,array_length(_arr))
	}
}