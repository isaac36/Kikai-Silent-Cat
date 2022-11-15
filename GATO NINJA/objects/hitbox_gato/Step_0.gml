/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



if(instance_exists(obj_template))and(global.setinhas==-1){visible = true;}else{visible=false;}

if(lado=="esquerda")and(image_xscale>0){image_xscale=-image_xscale};
if(tempo<=0)instance_destroy();

target=instance_nearest(x,y,target_padrao);


x = dono.x+posX;
y = dono.y+posY;


if(target.estado!=target.estadomorto)and(place_meeting(x,y,target))and(bateu==0)and(target.invuneravel==false)and(player!=target.player){

audio_play_sound(punch,0,0);

instance_create(x,y,obj_screenshake);
if(descer){target.descer=true;target.alarm[2]=5;}
target.cont_animacao=0;
target.soladovelx=velx;
target.soladovely=vely;
target.veldir=veldir;
target.soladotempo = soladotempo;
if(velxReal!=false){target.velocidadeX=velxReal;}
target.velocidadeRotacao=velocidadeRotacao;
if(target.vida>0)target.estado=estado;
target.vida -= vida;
audio_play_sound(somHit,0,0);


//efeito
targetEfeito = instance_create(

(target.x+x)/2
,((y-(sprite_height/2))+(target.y-target.sprite_height/2))/2
,efeito)
;


targetEfeito.dono = id;
targetEfeito.target = target;
if(efeitoAngulo!=false){
targetEfeito.image_angle = efeitoAngulo;
}


if(sangue==true){
dono.ultimosanguehit = instance_create(x,y-sprite_height/2,efeitoSangue);
dono.ultimosanguehit.image_xscale = veldir;
dono.ultimosangueparede = instance_create(x,y-(sprite_height/2),obj_sangue_parede1);

}

if(telavermelha == true){
telavermelha = instance_create(x,y,obj_tela_vermela);
telavermelha.dono = dono;
dono.ultimosanguehit.image_blend = make_color_rgb(0,0,0);
}


bateu=1;
}

tempo--;



