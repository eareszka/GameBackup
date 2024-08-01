draw_text_color(x+50,y,string(hit),c_white,c_white,c_white,c_white,1);

/******************
HOLD ARROW TUTORIAL
*****************/
if instance_exists(oRhythmArrow)
{
	if hold && array_last(arr).x>-10 && global.flag[11]=0
	{
		tutorialAlpha+=.1
		draw_text_color(x+100,x+17,"Hold",c_yellow,c_yellow,c_yellow,c_yellow,tutorialAlpha)
	}
}