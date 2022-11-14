
event_inherited();

ultimoalvo = -1;

distanciaExecucao = 999998;//-1 que o alvo

if(!instance_exists(obj_tela_escura)){instance_create(x,y,obj_tela_escura);}

distanciaDoAlvo = 999999;//+1 que o alvo

mascara = spr_gato_colisao_mask;
debug=false;

ultimosangueparede = -1;
ultimosanguehit = -1;

antinerciaBase = 0.6;
depth = 0;



img_parado = spr_gato_parado;
img_caido = spr_gato;
img_impulso = spr_gato;
img_dash = spr_gato_dash;
img_solado = spr_gato_solado;
img_pulando = spr_gato_pulando;
img_caindo = spr_gato_caindo;
img_andando = spr_gato_andando;
img_escorar = spr_gato_escalando;
img_escorando = spr_gato_escorando;
img_jogado = spr_gato;




img_ataque_leve = spr_gato;
img_ataque_leve2 = spr_gato;
img_ataque_leve_cima = spr_gato;
img_ataque_leve_baixo = spr_gato;

img_ataque_forte = spr_gato;
img_ataque_forte_cima = spr_gato;
img_ataque_forte_baixo = spr_gato;

img_ataque_especial = spr_gato;
img_ataque_especial_baixo = spr_gato;
img_ataque_especial_cima = spr_gato;



img_ataque_leve_ar = spr_gato;
img_ataque_leve_cima_ar = spr_gato;
img_ataque_leve_baixo_ar = spr_gato;

img_ataque_forte_ar = spr_gato;
img_ataque_forte_baixo_ar = spr_gato;

img_ataque_especial_ar = spr_gato;
img_ataque_especial_baixo_ar = spr_gato;
img_ataque_especial_cima_ar = spr_gato;

img_win = spr_gato;



















BOTAO_ESQUERDA_SETUP = ord("A");
BOTAO_DIREITA_SETUP = ord("D");
BOTAO_CIMA_SETUP = ord("W");
BOTAO_BAIXO_SETUP = ord("S");

BOTAO_PULO_SETUP = ord("J");
BOTAO_DASH_SETUP = ord("I");
BOTAO_ATAQUE_SETUP = ord("U");
BOTAO_ATAQUE2_SETUP = ord("K");
BOTAO_ESPECIAL_SETUP = ord("Y");



























leve = gato_ataque;
leve2 = gato_ataque2;

//
leve3 = gato_ataque3;
leve4 = gato_ataque;





leve_baixo = gato_ataque;
leve_cima = gato_ataque;

leve_ar = gato_ataque;
leve_baixo_ar = gato_ataque;
leve_cima_ar = gato_ataque;



//fortes

forte = gato_ataque;
forte_baixo = gato_ataque;
forte_cima = gato_ataque;

forte_ar = gato_ataque;
forte_baixo_ar = gato_ataque;


//especiais

especial = gato_ataque;
especial_baixo = gato_ataque;
especial_cima = gato_ataque;

especial_ar = gato_ataque;
especial_baixo_ar = gato_ataque;
especial_cima_ar = gato_ataque;

