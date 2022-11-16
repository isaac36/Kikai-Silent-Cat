
if(global.pause==true){
	
	if(salvei==false){
	
	Save_sprite_index = sprite_index;
	Save_image_index = image_index;
	
	salvei=true;
	
	}
	
	sprite_index = Save_sprite_index;
	image_index = Save_image_index;

	
	exit;


}


salvei=false;


/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(cont>=nImagens){instance_destroy()}
image_index=cont;


if(dono!=-1)and(instance_exists(dono))and(target!=-1)and(instance_exists(target)){
	x=(dono.x+target.x)/2;
	y=((dono.y-(dono.sprite_height/2))+(target.y-target.sprite_height/2))/2;
	}
	
cont++;