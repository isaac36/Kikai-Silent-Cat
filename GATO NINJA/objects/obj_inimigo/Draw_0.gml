/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

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