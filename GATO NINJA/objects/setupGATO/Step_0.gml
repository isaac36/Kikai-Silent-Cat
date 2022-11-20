/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(!instance_exists(loop_controlador)){instance_create(x,y,loop_controlador)}

if(modoleve){
if(instance_exists(obj_controla_luz)){instance_destroy(obj_controla_luz)}
if(instance_exists(obj_luz)){instance_destroy(obj_luz)}
}


if(modo==1){





if(room==Menu){limiteMenu=2};

if(apertou==false){
	
if(keyboard_check_pressed(BOTAO_CIMA_SETUP)){cursorMenu--};
if(keyboard_check_pressed(BOTAO_BAIXO_SETUP)){cursorMenu++};
	
	

if(cursorMenu<0){cursorMenu=0}
if(cursorMenu>limiteMenu){cursorMenu=limiteMenu}
}









}