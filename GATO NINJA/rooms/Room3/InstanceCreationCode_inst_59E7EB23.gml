comeco = 0;
fim = 4;

fala[0]="...";
face[0]=spr_gato;
lado[0]=1;
animacao[0] = atendendo_telefone;//false se nao tem

fala[1]="Oi";
face[1]=spr_gato;
lado[1]=1;
animacao[1] = atendendo_telefone2;//false se nao tem

fala[2]="MANCHO SAI DESSA PORRA DE PRISAO AI MAN NAAAM!!!!";
face[2]=spr_tijolao;
lado[2]=-1;
animacao[2] = atendendo_telefone2;//false se nao tem


fala[3]="Certo";
face[3]=spr_gato;
lado[3]=1;
animacao[3] = atendendo_telefone2;//false se nao tem


fala[4]="...";
face[4]=spr_gato;
lado[4]=1;
animacao[4] = atendendo_telefone3;//false se nao tem







if(animacao[cont_dialogo]==false){pode_passar=true}else{pode_passar=false}