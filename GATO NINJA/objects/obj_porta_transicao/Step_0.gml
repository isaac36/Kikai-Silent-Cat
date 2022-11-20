/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(room==Intro)or(room==Menu){instance_destroy()}

if(cont==30){instance_destroy()};

image_index=cont;

cont=cont+contvel;
	
	
if(instance_exists(obj_gato)){
x = obj_gato.x;
y = obj_gato.y;
}