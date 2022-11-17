// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function boss_agarrao(){
	
	if(cont_animacao<=25){invuneravel=true;}

		sprite_index = img_agarrao1;
	
		proporcao = sprite_get_number(sprite_index)/35;
	
		image_index = floor((proporcao*cont_animacao));
		
		if(cont_animacao>=35){
			
	image_index=sprite_get_number(sprite_index)-1;	
			
			
	//oportunidade para assassinar
	if(!place_meeting(x,y,obj_oportunidade)){
	targeto=instance_create(x-(dir*sprite_width/2),y,obj_oportunidade_parcial);
	targeto.dono=id;
	targeto.dir=patrulhadir;
	targeto.lado = lado;
	targeto.target = obj_gato.y;
	targeto.tempo = 65;
	targeto.vida = 100;
	targeto.image_xscale = 4;
	targeto.image_yscale = 4;
	targeto.distanciaExecucao = 200;
	
	
		}
		}
	cont_animacao++;
	
	if(cont_animacao<25)and(place_meeting(x,y,obj_gato))and(!obj_gato.invuneravel){estado=boss_agarrao2;cont_animacao=0;}
	
	if(cont_animacao>=100){atacou=false;estado=andando;cont_animacao=0;modo="luta"};
	
	if(place_meeting(x,y,hitbox_gato))and(cont_animacao>25){atacou=false;estado=solado;cont_animacao=0;};

}