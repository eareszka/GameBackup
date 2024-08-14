lighting_surface=-1

drawDaylight=true

timer=0

maxDarkness=.7

lightColor=c_black

darkness=0

enum phase
{
	sunrise=6,
	daytime=8.5,
	sunset=18,
	nighttime=22
}


function merge_number(_num1,_num2,_ammount)
{
	var _diff=_num1-_num2
	var _merged=_num1-(_diff*_ammount)
	
	return _merged
}