/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(IA_luta==IA_boss1)and(estado!=estadomorto){

for(i=0;i<vidamax;i++){

draw_sprite_ext(spr_barrinha_de_life_red,0,i+(640-(vidamax/2)),670,1,8,0,c_white,1);

}


for(i=0;i<vida;i++){

draw_sprite_ext(spr_barrinha_de_life,0,i+(640-(vidamax/2)),670,1,8,0,c_white,1);

}
}