

image_xscale=veldir;


if(player==1){target=player2.lenda}
if(player==2){target=player1.lenda}


if(place_meeting(x,y,target))and(!bateu)and(target.estado!=dash){
	
	




instance_create(x,y,obj_screenshake);
if(descer){target.descer=true;target.alarm[2]=5;}
target.cont_animacao=0;
target.estado=estado;
target.soladovelx=velx;
target.soladovely=vely;
target.veldir=veldir;
target.soladotempo = soladotempo;
if(velxReal!=false){target.velocidadeX=velxReal;}
target.velocidadeRotacao=velocidadeRotacao;









audio_play_sound(punch,0,0);





bateu=true;

instance_create(x,y,obj_template_bola_explosao);
instance_destroy();
}





//movimento

velocidadeX=veldir*velocidade;
x=x+velocidadeX;

cont++;
if(cont==100){instance_create(x,y,obj_template_bola_explosao);instance_destroy()}