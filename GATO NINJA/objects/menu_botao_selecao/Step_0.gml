if(numero==0){sprite_index=quadrado_selecao_curupira}
if(numero==1){sprite_index=quadrado_selecao_saci}
if(numero==2){sprite_index=quadrado_selecao_boto}
if(numero==3){sprite_index=quadrado_selecao_lobisomem}
if(numero==4){sprite_index=quadrado_selecao_iara}
if(numero==5){sprite_index=quadrado_selecao_caipora}
image_xscale = 1.66;
image_yscale = 1.66;




if(numero==setup1.cursor){desenha1=true}else{desenha1=false}
if(numero==setup2.cursor){desenha2=true}else{desenha2=false}

if (anim_alpha >= 1 or anim_alpha <= 0) {anim_alpha_rate=anim_alpha_rate*-1;}

anim_alpha+=anim_alpha_rate;

