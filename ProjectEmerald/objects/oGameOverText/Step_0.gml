if backgroundAlpha<1
{
	backgroundAlpha+=.01	
}
else
{
	if !instance_exists(obj_textBox)
	{
		create_textbox("GameOver")
	}
}

if instance_exists(obj_partyStatMenu){instance_destroy(obj_partyStatMenu)}