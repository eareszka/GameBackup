event_inherited();


if greyOut
{
	regularBlend=false
	if r>75{r-=15}
	if g>75{g-=15}
	if b>75{b-=15}
}
else
{	
	if r<255{r+=15}
	if g<255{g+=15}
	if b<255{b+=15}
	
	if r>=255&&g>=255&&b>=255{regularBlend=true}
}

if !regularBlend{image_blend=make_color_rgb(r,g,b)}
else{image_blend=c_white}