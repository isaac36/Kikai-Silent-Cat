/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(cont_dialogo<comeco){cont_dialogo=comeco;}
//if(cont_dialogo>fim){global.pause=false;instance_destroy();obj_gato.velocidadeX=0;velocidadeY=0;obj_gato.estado=parado;exit}

if(place_meeting(x,y,obj_gato)){comecou=true};

if(comecou==true){
	
	
obj_PAUSE.modo = "dialogo";
global.dialogo=true;
global.pause=true;






if(keyboard_check_pressed(setupGATO.BOTAO_ATAQUE_SETUP))and(pode_passar){cont_cena=0;cont_dialogo++;if(animacao[cont_dialogo]==false){pode_passar=true;}else{pode_passar=false}};

if(animacao[cont_dialogo]!=false){


script_execute(animacao[cont_dialogo]);


}



}




if(cont_dialogo>fim){global.pause=false;instance_destroy();obj_gato.velocidadeX=0;velocidadeY=0;obj_gato.estado=parado;exit}