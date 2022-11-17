// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function boss_golpefinal(){
	
	sprite_index=spr_boss_dash;
	
	if(place_meeting(x,y,obj_gato))and(obj_gato.estado==gato_hitkill){estado=estadomorto}
	
	if(!place_meeting(x,y,obj_oportunidade)){
	targeto=instance_create(x-(dir*sprite_width/2),y,obj_oportunidade);
	targeto.dono=id;
	targeto.dir=patrulhadir;
	targeto.lado = lado;
	targeto.target = obj_gato.y;
	targeto.tempo = 65;
	targeto.vida = false;
	targeto.image_xscale = 4;
	targeto.image_yscale = 4;
	targeto.distanciaExecucao = 200;
	
	
		}

}