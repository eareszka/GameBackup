// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShopBuy(_price,_itemIndex,_ammount)
{
	//can afford
	if global.my_Money >= _price
	{
		//can fit in inv
		if global.inventory[_itemIndex][1] + _ammount > 5
		{
			create_textbox("ShopOwner3")
			instance_destroy(oShopMenuCount)
			oShopMenu.hover = 0
			return
		}
		//successful buy
		else
		{
			global.my_Money -= _price
			global.inventory[_itemIndex][1] += _ammount
			create_textbox("ShopOwner4")
			instance_destroy(oShopMenuCount)
			oShopMenu.hover = 0
			return
		}
	}
	else
	{
		create_textbox("ShopOwner2")
		instance_destroy(oShopMenuCount)
		oShopMenu.hover = 0
		return
	}
}

function ShopConfirm(_questItem,_itemPrice)
{
	if global.my_Money >= _itemPrice
	{
		if _questItem.available = true
		{
			create_textbox("ShopOwner5")
			instance_destroy(oShopMenuCount)	
		}
		else
		{	
			global.my_Money -= _itemPrice
			_questItem.available = true
			create_textbox("ShopOwner4")
			instance_destroy(oShopMenuCount)
			oShopMenu.hover = 0
			return	
		}		
	}
	else
	{
		create_textbox("ShopOwner2")
		instance_destroy(oShopMenuCount)
		oShopMenu.hover = 0
		return
	}
}