cont++;
if(cont>30){y=y+conty;conty=conty+0.7;}
if(place_meeting(x,y,obj_wall)){instance_destroy()}

if(dir==-1)image_angle = (conty*2);else{image_angle=-(conty*2)}


if(dir==0){sprite_index=invisible};

x = x + velocidade*dir;

if(dir==-1){sprite_index=spr_lanca;image_xscale=-1};
if(dir==1){sprite_index=spr_lanca;image_xscale=1};


if(player==1){target=player2.lenda}
if(player==2){target=player1.lenda}


if(place_meeting(x,y,target))and(!bateu)and(target.estado!=dash){
target.estado = solado; 
target.cont_animacao = 0;
if(dir=-1)target.lado="direita";
if(dir=1)target.lado="esquerda";
audio_play_sound(punch,0,0);


bateu=true;
}


