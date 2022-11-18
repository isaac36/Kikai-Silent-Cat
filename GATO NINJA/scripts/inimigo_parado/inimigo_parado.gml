// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function inimigo_parado(){
	
	if(estado==solado){modo="luta"};
		
	img_andando = spr_inimigo_andando;
	
if(instance_exists(obj_gato)){vargato = instance_nearest(x,y,obj_gato)}else{vargato=-1}




if(place_meeting(x+abs(velocidadeX),y,obj_wall))or(place_meeting(x+abs(velocidadeX),y,obj_patrulhavolta)){patrulhadir=-1;}
if(place_meeting(x-abs(velocidadeX),y,obj_wall))or(place_meeting(x-abs(velocidadeX),y,obj_patrulhavolta)){patrulhadir=1;}






if(vargato!=-1){
if(place_meeting(x+20*patrulhadir,y,vargato))and(vargato.estado!=gato_escondido){modo="luta";estado=inimigo_HEY;cont_animacao=0};
}


if(contIA%10==0){
	
	gato = instance_nearest(x,y,obj_gato);
	
	
	if(distance_to_object(gato)<300){
		//pe
	target=instance_create(x,y-sprite_height+15,obj_inimigo_visao);
	target.dono=id;
	target.dir=patrulhadir;
	target.lado = lado;
	target.target = gato.y;
	
	
	
		//cabeca
	target=instance_create(x,y-sprite_height+15,obj_inimigo_visao);
	target.dono=id;
	target.dir=patrulhadir;
	target.lado = lado;
	target.target = gato.y-(gato.sprite_height)+30;
	
	}
	}
	
	//oportunidade para assassinar
	if(!place_meeting(x,y,obj_oportunidade)){
	targeto=instance_create(x-(dir*sprite_width/2),y,obj_oportunidade);
	targeto.dono=id;
	targeto.dir=patrulhadir;
	targeto.lado = lado;
	targeto.target = gato.y;
	}

contIA++;





}