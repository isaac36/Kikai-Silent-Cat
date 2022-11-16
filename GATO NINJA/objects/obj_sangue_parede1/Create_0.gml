/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
permanente =false;

image_speed = 1;

image_alpha=0.8;

image_angle = irandom_range(0,359);

depth=100;

spritevetor[0] = spr_sangue_parede1;
spritevetor[1] = spr_sangue_parede2;
spritevetor[2] = spr_sangue_parede3;
spritevetor[3] = spr_sangue_parede4;
spritevetor[4] = spr_sangue_parede5;
spritevetor[5] = spr_sangue_parede6;
spritevetor[6] = spr_sangue_parede7;
spritevetor[7] = spr_sangue_parede8;

sprite = spritevetor[irandom_range(0,7)];


index_final = sprite_get_number(sprite)-1;

sprite_index = sprite;




