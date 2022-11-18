/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(distance_to_object(obj_gato)<4){
	
	if(obj_gato.BOTAO_ATAQUE2)and(obj_gato.chavea>0){
	obj_gato.chavea--;instance_destroy();
	}else if(obj_gato.BOTAO_ATAQUE2)and(obj_gato.chaveb>0){
	obj_gato.chaveb--;instance_destroy();
	}
	
	
	
	
	}
	
	