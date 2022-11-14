if(keyboard_check_pressed(BOTAO_ESQUERDA_SETUP)){BOTAO_ESQUERDA=true}else{BOTAO_ESQUERDA=false};
if(keyboard_check_pressed(BOTAO_DIREITA_SETUP)){BOTAO_DIREITA=true}else{BOTAO_DIREITA=false};
if(keyboard_check_pressed(BOTAO_CIMA_SETUP)){BOTAO_CIMA=true}else{BOTAO_CIMA=false};
if(keyboard_check_pressed(BOTAO_BAIXO_SETUP)){BOTAO_BAIXO=true}else{BOTAO_BAIXO=false};

if(keyboard_check_pressed(BOTAO_PULO_SETUP)){BOTAO_PULO=true}else{BOTAO_PULO=false};
if(keyboard_check_pressed(BOTAO_DASH_SETUP)){BOTAO_DASH=true}else{BOTAO_DASH=false};
if(keyboard_check_released(BOTAO_ATAQUE_SETUP)){BOTAO_ATAQUE=true}else{BOTAO_ATAQUE=false};
if(keyboard_check_released(BOTAO_ATAQUE2_SETUP)){BOTAO_ATAQUE2=true}else{BOTAO_ATAQUE2=false};



if(instance_exists(lenda)){
if(!lenda==false){


x=lenda.x;
y=lenda.y;



lenda.BOTAO_ESQUERDA_SETUP = BOTAO_ESQUERDA_SETUP;
lenda.BOTAO_DIREITA_SETUP = BOTAO_DIREITA_SETUP;
lenda.BOTAO_CIMA_SETUP = BOTAO_CIMA_SETUP;
lenda.BOTAO_BAIXO_SETUP = BOTAO_BAIXO_SETUP;

lenda.BOTAO_PULO_SETUP = BOTAO_PULO_SETUP;
lenda.BOTAO_DASH_SETUP = BOTAO_DASH_SETUP;
lenda.BOTAO_ATAQUE_SETUP = BOTAO_ATAQUE_SETUP;
lenda.BOTAO_ATAQUE2_SETUP = BOTAO_ATAQUE2_SETUP;
lenda.BOTAO_ESPECIAL_SETUP = BOTAO_ESPECIAL_SETUP;

lenda.hitbox_inimiga = obj_hitbox_p1;
lenda.hitbox = obj_hitbox_p2;
lenda.player = 2;
}}

