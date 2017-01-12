Program teste ;

var saida:char;

Begin

repeat

textcolor(black);
textbackground(white);
clrscr;

writeln('Teste');
delay(1500);

writeln('ESC - Sair');
saida:=readkey;

until(saida=#27) // #27 = ESC
  
End.
