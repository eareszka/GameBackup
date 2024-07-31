if(self.x <= (1152+1100)+start)
{
	self.x += 10
}
else
{
	self.x = start
}	


self.image_index = 1

//depth
if y < obj_playerEmory.y+5
{
	depth = obj_playerEmory.depth+10
}
else
{
	depth = obj_playerEmory.depth-10
}