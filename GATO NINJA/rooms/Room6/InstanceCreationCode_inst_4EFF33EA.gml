comeco=0;
fim=2;

fala[0]="...";
face[0]=spr_tijolao;
lado[0]=-1;
animacao[0] = atendendo_telefone;

fala[1]="A chave deste portão está com o chefe da segurança. Dê um jeito nele.";
face[1]=spr_tijolao;
lado[1]=-1;
animacao[1] = atendendo_telefone2;

fala[2]="...";
face[2]=spr_tijolao;
lado[2]=-1;
animacao[2] = atendendo_telefone3;

if(global.chefaoMorto1==true){instance_destroy()};