if(global.pause==true){
	
	if(salvei==false){
	
	Save_sprite_index = sprite_index;
	Save_image_index = image_index;
	SaveAlarm0 = alarm[0];
	SaveAlarm1 = alarm[1];
	SaveAlarm2 = alarm[2];
	SaveAlarm3 = alarm[3];
	SaveAlarm4 = alarm[4];
	SaveAlarm5 = alarm[5];
	SaveAlarm6 = alarm[6];
	SaveAlarm7 = alarm[7];
	SaveAlarm8 = alarm[8];
	SaveAlarm9 = alarm[9];
	SaveAlarm10 = alarm[10];
	SaveAlarm11 = alarm[11];
	
	salvei=true;
	
	}
	
	sprite_index = Save_sprite_index;
	image_index = Save_image_index;
    alarm[0] = SaveAlarm0;
	alarm[1] = SaveAlarm1;
	alarm[2] = SaveAlarm2;
	alarm[3] = SaveAlarm3;
	alarm[4] = SaveAlarm4;
	alarm[5] = SaveAlarm5;
	alarm[6] = SaveAlarm6;
	alarm[7] = SaveAlarm7;
	alarm[8] = SaveAlarm8;
	alarm[9] = SaveAlarm9;
	alarm[10] = SaveAlarm10;
	alarm[11] = SaveAlarm11;

	
	exit;


}


salvei=false;

//

/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



if(instance_exists(obj_template))and(global.setinhas==-1){visible = true;}else{visible=false;}

if(lado=="esquerda")and(image_xscale>0){image_xscale=-image_xscale};
if(tempo<=0)instance_destroy();


if(instance_exists(target_padrao)){
target=instance_nearest(x,y,target_padrao);
}else{target=-1}

x = dono.x+posX;
y = dono.y+posY;


if(target!=-1)and(place_meeting(x,y,target))and(target.estado!=target.estadomorto)and(bateu==0)and(target.invuneravel==false)and(player!=target.player){



instance_create(x,y,obj_screenshake);
if(descer){target.descer=true;target.alarm[2]=5;}
if(target.IA_luta!=IA_boss1)target.cont_animacao=0;
target.soladovelx=velx;
target.soladovely=vely;
target.veldir=veldir;
target.soladotempo = soladotempo;
if(velxReal!=false){target.velocidadeX=velxReal;}
target.velocidadeRotacao=velocidadeRotacao;
if(target.vida>0)and(target.IA_luta!=IA_boss1)target.estado=estado;
target.vida -= vida;

audio_play_sound(corte_som,0,0);

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


if(sangue==true){//and(!((room==Room5))){
dono.ultimosanguehit = instance_create(x,y-sprite_height/2,efeitoSangue);
dono.ultimosanguehit.image_xscale = veldir;
dono.ultimosangueparede = instance_create(x,y-(sprite_height/2),obj_sangue_parede1);

}

if(telavermelha == true){//and(!((room==Room5))){
telavermelha = instance_create(x,y,obj_tela_vermela);
telavermelha.dono = dono;
cabecavoando = 0;//irandom_range(0,1);//MUDEISSO
if(target.img_parado==spr_inimigo_parado)and(cabecavoando==0){target.estadomorto = inimigo1_decepado;
		cabeca = instance_create(x,y-sprite_height+30,obj_cabeca_cortada);
		cabeca.velangulo = irandom_range(-25,25);
		cabeca.velx = irandom_range(-7,7);
		cabeca.velV = irandom_range(-16,-2);
	}


//if((!((room==Room5)))){
dono.ultimosanguehit.image_blend = make_color_rgb(0,0,0);
//}
}


bateu=1;
}

tempo--;



