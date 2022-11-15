//IA
IA_luta = IA_luta1;
IA_patrulha = IA_patrulha1;
modo=false;
patrulhadir = 1;
contIA = 0;
paciencia =0;
Hey_aviso = false;

assassinatoCD=false;
alvo = -1;
contpoeiraas = 0;
atacando = false;
mascara = spr_quadrado;

invuneravel = false;
player=-1;

padrao= c_white;
croma1= c_red;
croma2= c_yellow;
croma3= c_lime;
croma4= c_aqua;

croma=padrao;


preparando = true;
antinerciaBase = 0.3;
aceleracaoX = 1;
velocidadeXFINAL = 0;
velocidadeY = 0;
dir = 0;
dirV=0;
estado = caindo; 
chao = false;
pulo = 0;
lado = "direita";
contdash = 0;
dashforce = 0;
dashVelMinima = 8;


img_morto = spr_inimigo_morto;
pode_dash_ar = true;
altura_pulo = 12;
pode_dash = true;
dash_CD = 40;
pode_ataque2 = true;
cont_animacao = 0;
gravidade = 1;
limiteGBASE = 8;
tendencia = 2;
contG = 0;
vida = 100;
vidamax = 0;
hitbox_inimiga = -1;
hitbox = -1;
CD_armadilha = false;
plataforma = -1;
sim = false;
meu = false;
outro = false;
descer = false;
combo = 0;
pode_forte_ar = true;
velocidadeXadd=0;
velxReal=false;
ale = 0;
chargeforce=0;
velocidadeRotacao=0;


CD_baixo_ataque = false;
CD_cima_ataque = false;
CD_lado_ataque = false;
CD_baixo_ataque_forte = false;
CD_especial = true;





img_parado = spr_parado;
img_caido = spr_quadrado;
img_impulso = spr_quadrado;
img_dash = spr_dash;
img_solado = spr_quadrado;
img_pulando = spr_pulando;
img_caindo = spr_caindo;
img_andando = spr_andando;
img_escorar = spr_quadrado;
img_jogado = spr_template_jogado;




img_ataque_leve = spr_template_fraco1;
img_ataque_leve2 = spr_template_fraco2;
img_ataque_leve_cima = spr_template_fraco_cima;
img_ataque_leve_baixo = spr_template_fraco_baixo;

img_ataque_forte = spr_template_forte;
img_ataque_forte_cima = spr_template_forte_cima;
img_ataque_forte_baixo = spr_template_forte_baixo;

img_ataque_especial = spr_template_especial;
img_ataque_especial_baixo = spr_template_especial_baixo;
img_ataque_especial_cima = spr_template_especial_cima;



img_ataque_leve_ar = spr_template_ar_fraco;
img_ataque_leve_cima_ar = spr_template_ar_fraco_cima;
img_ataque_leve_baixo_ar = spr_template_ar_fraco_baixo;

img_ataque_forte_ar = spr_template_ar_forte;
img_ataque_forte_baixo_ar = spr_template_ar_forte_baixo;

img_ataque_especial_ar = spr_template_ar_especial;
img_ataque_especial_baixo_ar = spr_template_ar_especial_baixo;
img_ataque_especial_cima_ar = spr_template_ar_especial_cima;




img_win = spr_quadrado;

retrato1 = quadrado_selecao;
retrato2 = quadrado_selecao;

nome="personagem";


BOTAO_ESQUERDA = -1;
BOTAO_DIREITA = -1;
BOTAO_CIMA = -1;
BOTAO_BAIXO = -1;

BOTAO_PULO = -1;
BOTAO_DASH = -1;
BOTAO_ATAQUE = -1;
BOTAO_ATAQUE2 = -1;

BOTAO_ESQUERDA_SETUP = -1;
BOTAO_DIREITA_SETUP = -1;
BOTAO_CIMA_SETUP = -1;
BOTAO_BAIXO_SETUP = -1;

BOTAO_PULO_SETUP = -1;
BOTAO_DASH_SETUP = -1;
BOTAO_ATAQUE_SETUP = -1;
BOTAO_ATAQUE2_SETUP = -1;
BOTAO_ESPECIAL_SETUP = -1;





//movimentos

dash = dash_pra_frente;

//leves

leve = template_leve;
leve2 = template_leve2;
leve3 = template_leve3;
leve4 = template_leve4;





leve_baixo = template_leve_baixo;
leve_cima = template_leve_cima;

leve_ar = template_ar_leve_;
leve_baixo_ar = template_ar_leve_baixo;
leve_cima_ar = template_ar_leve_cima;



//fortes

forte = template_forte;
forte_baixo = template_forte_baixo;
forte_cima = template_forte_cima;

forte_ar = template_ar_forte;
forte_baixo_ar = template_ar_forte_baixo;


//especiais

especial = template_especial;
especial_baixo = template_especial_baixo;
especial_cima = template_ultimate2;

especial_ar = template_ar_leve_;
especial_baixo_ar = template_ar_leve_baixo;
especial_cima_ar = template_ar_leve_cima;


estadomorto = morto;






velocidadePersonagem = 4;

velocidadeX = velocidadePersonagem;

//estado solado
soladovelx = 0;
soladovely = 0;
veldir = 0;
soladotempo = 15;
//

escalaX = image_xscale;
escalaY = image_yscale;