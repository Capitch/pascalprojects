Program CalculadoraAvancada;

var num1, num2, oper1, oper2, oper3, oper4:real;
    escolha:integer;

Begin

  writeln('==============================');
  writeln('     Calculadora Avançada     ');
  writeln('==============================');
  
  writeln('Digite 1 para somar');
  writeln('Digite 2 para subtrair');
  writeln('Digite 3 para multiplicar');
  writeln('Digite 4 para dividir');
  read(escolha);
    
  writeln('==============================');
  
  write('Digite o primeiro número: ');
  read(num1);
  
  write('Digite o segundo número: ');
  read(num2);                        
	
  oper1 := num1 + num2;
  oper2 := num1 - num2;
  oper3 := num1 * num2;
  oper4 := num1 / num2;
	
	writeln('==============================');
	
	if (escolha = 1) then
	  writeln('Soma: ',oper1:3:2)
	else
	  if (escolha = 2) then
		  writeln('Subtração: ',oper2:3:2)
		else
		  if (escolha = 3) then
			  writeln('Multiplicação: ',oper3:3:2)
			else
			  if (escolha = 4) then
				  writeln('Divisão: ',oper4:3:2);
					
	writeln('==============================');
	writeln('Pressione uma TECLA para sair');
	writeln('==============================');						  	  
  
	readln;
	                      
End.
