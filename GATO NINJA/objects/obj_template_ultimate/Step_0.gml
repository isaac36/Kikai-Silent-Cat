image_xscale=30;
image_yscale=30;


if(player==1){target=player2.lenda}
if(player==2){target=player1.lenda}


if(place_meeting(x,y,target))and(!bateu)and(target.estado!=dash){
	
	




instance_create(x,y,obj_screenshake);
if(descer){target.descer=true;target.alarm[2]=5;}
target.cont_animacao=0;
target.estado=solado;
target.soladovelx=velx;
target.soladovely=vely;
target.veldir=veldir;
target.soladotempo = soladotempo;
if(velxReal!=false){target.velocidadeX=velxReal;}









audio_play_sound(punch,0,0);





bateu=true;

instance_create(x,y-16,obj_template_bola_explosao);
}





//movimento

velocidadeY=velocidade;
y=y-velocidadeY;


if(cont==1000){instance_destroy()}