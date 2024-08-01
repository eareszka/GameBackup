/// @desc Menu - Makes a menu, options provided in the form [["name", function, argument], [...]]
function MainMenu(_x,_y,_options,_description = -1, _width = undefined, _height = undefined)
{
	with (instance_create_depth(_x,_y,-99999,oMainMenu))
	{
		options = _options;	
		description = _description;
		var _optionsCount = array_length(_options)
		visibleOptionsMax = _optionsCount;
		
		//Set up size
		xmargin = 11;
		ymargin = 15
		draw_set_font(fnM5x7);
		heightLine = 12;
		
		//Auto width
		if (_width == undefined)
		{
			width = 2;
			if (_description != -1) width = max(width,string_width(_description));
			for (var i = 0; i < _optionsCount; i++)
			{
				width = max(width, string_width(_options[i][0]));
			}
			widthFull = width + xmargin * 2;
		} else widthFull = _width;
		
		//Auto height
		if (_height == undefined)
		{
			height = heightLine * (_optionsCount + !(description == -1));
			heightFull = height + ymargin * 2;
		} 
		else 
		{
			heightFull = _height;	
			//scrolling?
			if (heightLine * (_optionsCount + !(description == -1)) > _height - (ymargin * 2))
			{
				scrolling = true;
				visibleOptionsMax = (_height - ymargin * 2) div heightLine;
			}
		}
	}
}

function Menu(_x,_y,_options,_description = -1, _width = undefined, _height = undefined, _user=noone)
{
	with (instance_create_depth(_x,_y,-99999,oMenu))
	{
		options = _options;	
		description = _description;
		user=_user
		var _optionsCount = array_length(_options)
		visibleOptionsMax = _optionsCount;
		
		//Set up size
		xmargin = 10;
		ymargin = 15
		draw_set_font(fnM5x7);
		heightLine = 12;
		widthline = 42;
		
		//Auto width
		if (_width == undefined)
		{
			width = 2;
			if (_description != -1) width = max(width,string_width(_description));
			for (var i = 0; i < _optionsCount; i++)
			{
				width = max(width, string_width(_options[i][0]));
			}
			widthFull = width + xmargin * 2;
		} else widthFull = _width;
		
		//Auto height
		if (_height == undefined)
		{
			height = heightLine * (_optionsCount + !(description == -1));
			heightFull = height + ymargin * 2;
		} 
		else 
		{
			heightFull = _height;	
			//scrolling?
			if (heightLine * (_optionsCount + !(description == -1)) > _height - (ymargin * 2))
			{
				scrolling = true;
				visibleOptionsMax = (_height - ymargin * 2) div heightLine;
			}
		}
	}
}

function SubMenu(_options)
{
	//store old options in array and increase submenu level
	optionsAbove[subMenuLevel] = options
	subMenuLevel++;
	options = _options;
	hover = 0;
}

function MenuGoBack()
{
	subMenuLevel--;
	options = optionsAbove[subMenuLevel];
	hover = 0
	if instance_exists(oBattle){oBattle.battleFlavorText(oBattle.enemyUnits,oBattle.flavorText)}
	if instance_exists(obj_battleMenu){obj_battleMenu.active=true oMenu.hover=0}
}

function MenuChangeHP(_user,_item, _amount)
{
	//instance_create_depth(0,0,-9999-1,oBattleEffect,{sprite_index : _item.effectSprite})
	if variable_struct_exists(_item,"heal")
	{
		switch _user
		{
			case 0:
				if global.EcurrentHP > 0
				global.EcurrentHP = clamp(global.EcurrentHP + _amount, 0, 20+global.hpAdd);
				with instance_create_depth(obj_playerEmory.x+10,obj_playerEmory.y+15,obj_playerEmory.layer,oBattleEffect)
				{
					sprite_index = sAttackHeal
				}
				RemoveItemFromInventory(_item, 1)
			break;
			case 1:
				if global.FcurrentHP > 0
				global.FcurrentHP = clamp(global.FcurrentHP + _amount, 0, round(50+(global.hpAdd*1.2)));
				with instance_create_depth(obj_playerFinn.x+10,obj_playerFinn.y+15,obj_playerFinn.layer,oBattleEffect)
				{
					sprite_index = sAttackHeal
				}
				RemoveItemFromInventory(_item, 1)
			break;
			case 2:
				if global.BcurrentHP > 0
				global.BcurrentHP = clamp(global.BcurrentHP + _amount, 0, round(10+(global.hpAdd*.5)));
				with instance_create_depth(obj_playerBroke.x+10,obj_playerBroke.y+15,obj_playerBroke.layer,oBattleEffect)
				{
					sprite_index = sAttackHeal
				}
				RemoveItemFromInventory(_item, 1)
			break;
			case 3:
				if global.JcurrentHP > 0
				global.JcurrentHP = clamp(global.JcurrentHP + _amount, 0, round(100+(global.hpAdd*1.5)));
				with instance_create_depth(obj_playerJen.x+10,obj_playerJen.y+15,obj_playerJen.layer,oBattleEffect)
				{
					sprite_index = sAttackHeal
				}
				RemoveItemFromInventory(_item, 1)
			break;
		}
	}
	if variable_struct_exists(_item,"gainMp")
	{
		switch _user
		{
			case 0:
				global.EcurrentMP = clamp(global.EcurrentMP + _amount, 0, 20+global.mpAdd);
				with instance_create_depth(obj_playerEmory.x+10,obj_playerEmory.y+15,obj_playerEmory.layer,oBattleEffect)
				{
					sprite_index = sAttackHeal
				}
				RemoveItemFromInventory(_item, 1)
			break;
			case 1:
				
			break;
			case 2:
				global.BcurrentMP = clamp(global.BcurrentMP + _amount, 0, round(10+(global.mpAdd*2)));
				with instance_create_depth(obj_playerBroke.x+10,obj_playerBroke.y+15,obj_playerBroke.layer,oBattleEffect)
				{
					sprite_index = sAttackHeal
				}
				RemoveItemFromInventory(_item, 1)
			break;
			case 3:
				global.JcurrentMP = clamp(global.JcurrentMP + _amount, 0, round(50+(global.mpAdd*1.8)));
				with instance_create_depth(obj_playerJen.x+10,obj_playerJen.y+15,obj_playerJen.layer,oBattleEffect)
				{
					sprite_index = sAttackHeal
				}
				RemoveItemFromInventory(_item, 1)
			break;
		}
	}
}

function CreateMainMenu(_menu,_showItems)
{
	if (!instance_exists(oMainMenu)) // If a menu isn't already up and we're not doing something already
	{
	    // Compile the action menu
	    var _menuOptions = [];
	    var _subMenus = {};
		//var _subMenus2 = {};

	    // Add inventory to action list
	    var _inventoryActions = [];
	    for (var i = 0; i < array_length(global.inventory); i++)
	    {
	        // If we have any of this item left we want to add them to the action list
	        if (global.inventory[i][1] > 0)
	        {
	            var _itemAction = global.inventory[i][0];
	            _itemAction.count = global.inventory[i][1];
	            array_push(_inventoryActions, _itemAction); 
	        }
	    }
		if _showItems = true
			var _actionList = array_union(_menu,_inventoryActions)
		else
			var _actionList = _menu

	    for (var i = 0; i < array_length(_actionList); i++)
	    {
	        var _action = _actionList[i];
	        var _available = true;
	        // Add item count to option name if necessary
	        var _nameAndCount = _action.name;
	        if (_action.subMenu == "Inventory") 
	            _nameAndCount += string(" x{0}", _action.count); 
	        // Add top level action
	        if (_action.subMenu == -1) 
	            array_push(_menuOptions, [_nameAndCount, initOption, [_action], _available]);
	        else 
	        {
	            // Create or add to a submenu
	            if (is_undefined(_subMenus[$ _action.subMenu]))
	            {
	                variable_struct_set(_subMenus, _action.subMenu, [[_nameAndCount, initOption, [_action], _available]]);
	            }               
	            else
	            {
	                array_push(_subMenus[$ _action.subMenu],[_nameAndCount, initOption, [_action], _available]);
	            }
	        }
	    }

	    // Turn submenus into an array
	    var _subMenusArray = variable_struct_get_names(_subMenus);
	    for (var i = 0; i < array_length(_subMenusArray); i++)
	    {
	        // Sort submenu if needed
	        //(here)

	        // Add back option at end of each submenu
	        array_push( _subMenus[$ _subMenusArray[i]] , ["Return", MenuGoBack, -1, true]);
	        // Add submenu into main menu
	        array_push(_menuOptions, [_subMenusArray[i], SubMenu, [_subMenus[$ _subMenusArray[i]]], true]);
	    }

	    array_sort(_menuOptions, function(_a, _b)
	    {
	        var _Priority = function(_option)
	        {
	            if (_option[0] == "Return") return 99;
	            if (_option[0] == "Inventory") return 50;
	            if (_option[0] == "Quest") return 30;
	            if (_option[0] == "Quit") return -10;
				
	            return 0;
	        }
	        return _Priority(_b) - _Priority(_a);
	    });

	    //MainMenu(10, 10, _menuOptions, , 85, 115);
		MainMenu(5, 5, _menuOptions, , 90, 115);
	}
	else
	{
	
	}
}

function CreateShopMenu(_menu)
{
	if (!instance_exists(oShopMenu)) // If a menu isn't already up and we're not doing something already
	{
		var _menuOptions = []
		
		for (var i = 0; i < array_length(_menu); i++)
		{		
		    var _option = _menu[i];
			
		    var _nameAndCount = _option.name;
			
			var _price = _option.price
			

		    array_push(_menuOptions, [_nameAndCount, initOption, [_option], _price]);
		}

		array_sort(_menuOptions, function(_a, _b)
		{
		    var _Priority = function(_option)
		    {
		        if (_option[0] == "Return") return 99;
		        return 0;
		    }
		    return _Priority(_b) - _Priority(_a);
		});

		//MainMenu(10, 10, _menuOptions, , 85, 115);
		ShopMenu(5, 5, _menuOptions, , 130, undefined);
	}
	else
	{
	
	}
}

function initOption(_option)
{
	if _option.subMenu = "Inventory"
	{
		with instance_create_depth(0,0,-9999,oItemMenu)
		{
			item = _option	
		}
	}
	else
	{
		_option.menuFunc(_option)
	}
}

function ShopMenu(_x,_y,_options,_description = -1, _width = undefined, _height = undefined)
{
	with (instance_create_depth(_x,_y,-99999,oShopMenu))
	{
		options = _options;	
		description = _description;
		var _optionsCount = array_length(_options)
		visibleOptionsMax = _optionsCount;
		
		//Set up size
		xmargin = 10;
		ymargin = 15
		draw_set_font(fnM5x7);
		heightLine = 12;
		widthline = 42;
		
		//Auto width
		if (_width == undefined)
		{
			width = 2;
			if (_description != -1) width = max(width,string_width(_description));
			for (var i = 0; i < _optionsCount; i++)
			{
				width = max(width, string_width(_options[i][0]));
			}
			widthFull = width + xmargin * 2;
		} else widthFull = _width;
		
		//Auto height
		if (_height == undefined)
		{
			height = heightLine * (_optionsCount + !(description == -1));
			heightFull = height + ymargin;
		} 
		else 
		{
			heightFull = _height;	
			//scrolling?
			if (heightLine * (_optionsCount + !(description == -1)) > _height - (ymargin * 2))
			{
				scrolling = true;
				visibleOptionsMax = (_height - ymargin * 2) div heightLine;
			}
		}
	}
}