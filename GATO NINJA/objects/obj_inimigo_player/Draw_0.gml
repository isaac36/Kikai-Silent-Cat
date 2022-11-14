/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();


if(modo=="luta"){

for(i=0;i<vidamax;i++){

draw_sprite(spr_barrinha_de_life_red,0,(x+i)-(vidamax/2),y-(sprite_height));

}


for(i=0;i<vida;i++){

draw_sprite(spr_barrinha_de_life,0,(x+i)-(vidamax/2),y-(sprite_height));

}

}


