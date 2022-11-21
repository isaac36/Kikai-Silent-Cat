/// @description Insert description here
// You can write your code in this editor




velV=velV+grav;


if (place_meeting(x, y + velV, obj_wall))
{
while(!place_meeting(x,y+sign(velV),obj_wall)){

y=y+sign(velV);


}
velV=0;
}






if (!place_meeting(x+velx, y, obj_wall))
{
}

else
{
velx= 0;
}





if(velx>0){velx=velx-0.05}
if(velx<0){velx=velx+0.05}

if(velx>1)and(velx<-1){velx=0;}





x += velx;
y += velV;




















//COR
	velocidademorte = 0.4;
	corMorte = 50;

	
	image_blend = make_color_rgb(morteR,morteG,morteB);
	
	morteR = morteR - velocidademorte;
	morteG = morteG - velocidademorte;
	morteB = morteB - velocidademorte;
	
	if(morteR<corMorte){morteR=corMorte}
	if(morteG<corMorte){morteG=corMorte}
	if(morteB<corMorte){morteB=corMorte}