
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
if(cont==25){desapareca=true}

if(cont%6==0){sprite_index = spr_telabranca}else{sprite_index=spr_telavermelha};

cont++;


if(desapareca==true){

image_alpha = image_alpha - 0.1;

if(image_alpha<=0){instance_destroy()};

}