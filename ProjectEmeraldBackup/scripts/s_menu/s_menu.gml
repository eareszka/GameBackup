function Scripts_menu(_x, _y, _options, _description = -1)
{
	with (instance_create_depth(_x, _y, -999, oMenu))
	{
		options = _options;
		description = _description;
		optionCount = array_length(_options)
		hovermMarker = "";
		
		//sets up size
		margin = 12;
		draw_set_font(fnM5x7)
		
		width = 1;
		if (_description != -1) width = max(width,string_width(_description));
		for (var i = 0; i < optionCount; i++)
		{
			width = max(width, string_width(_options[i][0]));
		}
		width += string_width(hovermMarker);
		
		heightLine = 17;
		height = heightLine * (optionCount + !(description == -1));
		
		widthFull = width + margin * 2;
		heightFull = height + margin * 2;
	}
}
		