/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(global.dialogo==false){





if(global.podedarpause==true)and(keyboard_check_pressed(vk_space))and(obj_gato.vida>0){

modo = "tela1";
global.pause=!global.pause;

};

if((global.podedarpause==false)or((instance_exists(obj_gato))and(obj_gato.vida<=0)))and(global.pause==true){global.pause=false};

if(!instance_exists(obj_gato)){instance_destroy();};





}
else{

//dialogo comanda

}



global.dialogo=false;