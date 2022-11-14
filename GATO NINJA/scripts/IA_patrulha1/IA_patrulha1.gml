
function IA_patrulha1(){

velocidadeX = patrulhadir*2;

if(place_meeting(x+velocidadeX,y,obj_wall))or(place_meeting(x+velocidadeX,y,obj_patrulhavolta)){patrulhadir*=-1}


if(place_meeting(x+20*patrulhadir,y,obj_gato)){if(alarm[11]==-1)alarm[11]=2};


if(patrulhadir==1){lado="direita"}else{lado="esquerda";}



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
