
function IA_patrulha1(){
	

	img_andando = spr_inimigo_andando;
	
if(instance_exists(obj_gato)){vargato = instance_nearest(x,y,obj_gato)}else{vargato=-1}




if(place_meeting(x+patrulhadir*10,y,obj_wall))or(place_meeting(x+patrulhadir*10,y,obj_patrulhavolta)){patrulhadir=-patrulhadir};




if(vargato!=-1){
if(place_meeting(x+20*patrulhadir,y,vargato))and(vargato.estado!=gato_escondido){modo="luta";estado=inimigo_HEY;cont_animacao=0};
}







if(patrulhadir==1){BOTAO_DIREITA=true;}else
if(patrulhadir==-1){BOTAO_ESQUERDA=true;};

if(contIA%10==0){
	
	gato = instance_nearest(x,y,obj_gato);
	
	
	if(distance_to_object(gato)<300){
		//pe
	target=instance_create(x,y-sprite_height+25,obj_inimigo_visao);
	target.dono=id;
	target.dir=patrulhadir;
	target.lado = lado;
	target.target = gato.y;
	
	
	
		//cabeca
	target=instance_create(x,y-sprite_height+25,obj_inimigo_visao);
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
