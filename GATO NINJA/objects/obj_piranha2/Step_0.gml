if (dirpiranha == "direita"){
hspeed= piranha_speed;
image_xscale = 1;}

if (dirpiranha == "esquerda"){
hspeed= -piranha_speed;
image_xscale = -1;}

if(x >= room_width+16){
dirpiranha = "esquerda";
}

if(x < 0){
dirpiranha = "direita";
}


if(place_meeting(x,y,obj_hitbox)){
	
instance_destroy();}



if(place_meeting(x,y,obj_personagem_generico))and(pode==true){

target = instance_nearest(x,y,obj_personagem_generico);
if(target.CD_armadilha==false)and(target.estado!=dash)and(target.vida>0)and(target.estado!=win){
	
if(target.x<x){veldir=-1}else{veldir=1}
	
audio_play_sound(punch,0,0);
target.cont_animacao=0;
target.estado=solado;
target.soladovelx=velx;
target.soladovely=vely;
target.veldir=veldir;
target.CD_armadilha = true;target.alarm[3]=30;
pode=false;
alarm[0]=30;


}
}



