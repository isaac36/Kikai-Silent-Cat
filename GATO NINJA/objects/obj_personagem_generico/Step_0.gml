
if(global.pause==true){
	
	if(salvei==false){
	
	Save_sprite_index = sprite_index;
	Save_image_index = image_index;
	SaveAlarm0 = alarm[0];
	SaveAlarm1 = alarm[1];
	SaveAlarm2 = alarm[2];
	SaveAlarm3 = alarm[3];
	SaveAlarm4 = alarm[4];
	SaveAlarm5 = alarm[5];
	SaveAlarm6 = alarm[6];
	SaveAlarm7 = alarm[7];
	SaveAlarm8 = alarm[8];
	SaveAlarm9 = alarm[9];
	SaveAlarm10 = alarm[10];
	SaveAlarm11 = alarm[11];
	
	salvei=true;
	
	}
	
	sprite_index = Save_sprite_index;
	image_index = Save_image_index;
    alarm[0] = SaveAlarm0;
	alarm[1] = SaveAlarm1;
	alarm[2] = SaveAlarm2;
	alarm[3] = SaveAlarm3;
	alarm[4] = SaveAlarm4;
	alarm[5] = SaveAlarm5;
	alarm[6] = SaveAlarm6;
	alarm[7] = SaveAlarm7;
	alarm[8] = SaveAlarm8;
	alarm[9] = SaveAlarm9;
	alarm[10] = SaveAlarm10;
	alarm[11] = SaveAlarm11;

	
	exit;


}


salvei=false;

// CRIACOES DE VARIAVEIS-ATALHOS PARA OS BOTOES
mask_index = mascara;

if(!instance_exists(obj_PAUSE)){instance_create(x,y,obj_PAUSE)};

//if(keyboard_check_pressed(vk_escape)){game_restart();}

if(keyboard_check(BOTAO_ESQUERDA_SETUP)){BOTAO_ESQUERDA = true;}else{BOTAO_ESQUERDA = false;}
if(keyboard_check(BOTAO_DIREITA_SETUP)){BOTAO_DIREITA = true;}else {BOTAO_DIREITA = false;}
if(keyboard_check(BOTAO_CIMA_SETUP)){BOTAO_CIMA = true;}else {BOTAO_CIMA = false;}
if(keyboard_check(BOTAO_BAIXO_SETUP)){BOTAO_BAIXO = true;}else {BOTAO_BAIXO = false;}
if(keyboard_check_pressed(BOTAO_PULO_SETUP)){BOTAO_PULO = true;}else {BOTAO_PULO = false;}
if(keyboard_check_pressed(BOTAO_DASH_SETUP)){BOTAO_DASH = true;}else {BOTAO_DASH = false;}
if(keyboard_check_pressed(BOTAO_ATAQUE_SETUP)){BOTAO_ATAQUE = true;}else {BOTAO_ATAQUE = false;}
if(keyboard_check(BOTAO_ATAQUE2_SETUP)){BOTAO_ATAQUE2 = true;}else {BOTAO_ATAQUE2 = false;}
if(keyboard_check(BOTAO_ESPECIAL_SETUP)){BOTAO_ESPECIAL = true;}else {BOTAO_ESPECIAL = false;}




if(modo!=false)and(obj_gato.estado!=obj_gato.estadomorto){

if(Hey_aviso==false)and(place_meeting(x,y,obj_HEY))and(modo=="patrulha"){Hey_aviso=true;modo="luta";};

if(modo=="patrulha"){velocidadePersonagem=1}else{velocidadePersonagem=3};








if(modo=="patrulha"){script_execute(IA_patrulha);}
else
if(modo=="luta"){script_execute(IA_luta);}


};








velocidadeXadd=0;


plataforma = instance_nearest(x,y+(velocidadeY),obj_plataforma);

//ESTADO

invuneravel=false;



script_execute(estado);
if(img_parado=spr_gato_parado){
	
	

	
if(place_meeting(x,y,obj_oportunidade))and(img_parado==spr_gato_parado){alvo=instance_nearest(x,y,obj_oportunidade).dono;}else{alvo=-1;}
if(abs(distanciaDoAlvo)<=distanciaExecucao)and(alvo!=-1)and(BOTAO_ATAQUE2)and(estado!=gato_hitkill)and(assassinatoCD==false){ultimoalvo=alvo;estado=gato_assassinato;cont_animacao=0;descer=true;alarm[2]=20;assassinatoCD=true;alarm[10]=40;distanciaExecucao = 9999990;}

}

if(estado==leve)or(estado==leve2)or(estado==leve3)or(estado==leve4){atacando=true;}else{atacando=false;}

if!((estado==forte_cima)or(estado==forte)or(estado==forte_baixo)){chargeforce=0;}

angulo = image_angle;
image_angle = 0;













if(vidamax<vida)vidamax = vida;
if(vida<=0)and(estado!=estadomorto)and(estado!=solado)and(estado!=solado2)and(estado!=solado3){cont_animacao=0;image_angle = 0; estado=estadomorto};













// Mudar variáveis de acordo com o lado


if(lado==1){lado="direita"}
if(lado==0){lado="direita"}
if(lado==-1){lado="esquerda"}
if (lado=="direita"){image_xscale = escalaX;dir=1}
if (lado=="esquerda"){image_xscale = -escalaX;dir=-1}
image_yscale = escalaY;


if(estado==pulando2)and(sprite_index==spr_gato_escorando_pulando){image_xscale=-image_xscale;}
















// GRAVIDADE

limiteG = limiteGBASE;
if(estado==escorar){limiteG=tendencia};


contG = contG + 1;
if(contG)==2 {contG=0};


if(velocidadeY<=limiteG)and(contG==0) {velocidadeY = velocidadeY + gravidade;}
if(velocidadeY>limiteG)and(!keyboard_check(BOTAO_BAIXO_SETUP)){velocidadeY=limiteG};














//VelocidadeX

if((velocidadeX>velocidadePersonagem)or(velocidadeX<(-velocidadePersonagem)))
{
	velocidadeXadd=0;
}

antinercia = antinerciaBase;
if(estado=solado2)antinercia = 0.1;


velocidadeX = velocidadeX + velocidadeXadd;

if(velocidadeX>0){velocidadeX-=antinercia;if(velocidadeX<0){velocidadeX=0;}}
if(velocidadeX<0){velocidadeX+=antinercia;if(velocidadeX>0){velocidadeX=0;}}

VelocidadeXFINAL = velocidadeX;// A velocidadeXFINAL será add no x final se ele nao receber zero das colisoes abaixo




















//COLISOES HORIZONTAIS 






















if(place_meeting(x+VelocidadeXFINAL,y,obj_wall)){

while(!place_meeting(x+sign(VelocidadeXFINAL),y,obj_wall)) {
x += sign(VelocidadeXFINAL);
}

/*if(estado == caindo)&&(place_meeting(x+(dir),y,obj_wall_escalavel)){

estado = escorar;cont_animacao=0;

}*/

VelocidadeXFINAL = 0;// velocidadeXFINAL ZERADA

}









//COLISOES VERTICAIS 

if(place_meeting(x,y+velocidadeY,obj_wall)){

while(!place_meeting(x,y+sign(velocidadeY),obj_wall)) {
y += sign(velocidadeY);
}
velocidadeY = 0;// velocidadeY ZERADA

}










//COLISOES DIAGONAIS 

if(place_meeting(x+VelocidadeXFINAL,y+velocidadeY,obj_wall)){

while(!place_meeting(x+sign(VelocidadeXFINAL),y+velocidadeY,obj_wall)) {

x += sign(VelocidadeXFINAL);
}
VelocidadeXFINAL = 0;

}











//CHECAGEM E COLISAO DE PLATAFORMAS

plataforma = instance_nearest(x,y+(velocidadeY),obj_plataforma);


if(!descer)and(place_meeting(x,y+velocidadeY,plataforma))and(plataforma!=-1)and(plataforma.y>=y){


while(!place_meeting(x,y+1,plataforma)) {

y += 1;

}

sim = true;
velocidadeY = 0;
chao=true;

}





if((place_meeting(x,y+1,obj_wall))or((place_meeting(x,y+1,obj_plataforma))and(!descer)and(velocidadeY==0)and(plataforma.y>=y))){chao=true;}else{chao=false;}
	










image_angle = angulo;




if(instance_exists(plataforma))and(plataforma!=-1){
plataforma.sim=true;
}
// MOVIMENTACAO FINAL

y=floor(y);

y = y + velocidadeY;
x = x + VelocidadeXFINAL;

