if !instance_exists(obj_textBox)&&!instance_exists(oGameOverText)
{
	if fade
	{
		alpha -= .1
		if alpha < 0
		{
			instance_destroy(self)	
		}
	}
	if !fade
	{
		alpha = 1
	}
}