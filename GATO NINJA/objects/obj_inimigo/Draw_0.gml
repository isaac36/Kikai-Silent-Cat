/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
movimento_pendular = movimento_pendular + velocidade_pendular;

if(movimento_pendular>10){velocidade_pendular-=0.2};
if(movimento_pendular<-10){velocidade_pendular+=0.2};


if(velocidade_pendular>2){velocidade_pendular=2}
if(velocidade_pendular<-2){velocidade_pendular=-2}







if(modo=="patrulha")and(img_parado=spr_inimigo_parado)and(distance_to_object(obj_gato)<500){
draw_set_alpha((0.01*(movimento_pendular+10)/2)+0.25);
draw_circle(x, y, 300, true);
draw_circle(x, y, 299, true);
draw_sprite_ext(spr_cone_visao,0,x,y-sprite_height+25,dir,1,0,c_white,(0.01*(movimento_pendular+10)/2)+0.45);
draw_set_alpha(1);

}






draw_self();


if(modo=="luta")and(IA_luta!=IA_boss1){
	


for(i=0;i<vidamax;i++){

draw_sprite_ext(spr_barrinha_de_life_red,0,(x+i)-(vidamax/2),y-80,1,1,0,c_white,1);

}


for(i=0;i<vida;i++){

draw_sprite_ext(spr_barrinha_de_life,0,(x+i)-(vidamax/2),y-80,1,1,0,c_white,1);

}

}

/*
draw_text(x,y-150,"modo: "+string(modo));
draw_text(x,y-170,"estado: "+string(script_get_name(estado)));
*/
