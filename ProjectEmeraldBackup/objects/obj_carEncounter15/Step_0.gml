if(self.x >= (0-1100)-start)
{
	self.x -= 10
}
else
{
	self.x = start
}	

image_index = 0

//depth
if y < obj_playerEmory.y+5
{
	depth = obj_playerEmory.depth+10
}
else
{
	depth = obj_playerEmory.depth-10
}