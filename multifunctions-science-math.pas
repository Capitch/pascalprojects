///--//
// Programa autoria de Miguel N.. Licensiado sobre a Apache License 2.0.

Program CalculadoraCientifica;
Uses Math;
const pi = 3.1416;
var tecla : integer;
    MAT_CALC, MAT_CALC_VOL_A, MAT_CALC_VOL_FINAL, MAT_VOL_FINAL, MAT_PYT_CALC, MAT_PYT_CALC_FINAL, MAT_SQR_FINAL, MAT_TRIG_sine, MAT_TRIG_cossine, MAT_TRIG_tangent, MAT_PHYSC_CALC_quicknessInKmPerHr : Real;
    MAT_SPH_raio, MAT_SPH_vol_FINAL, MAT_SUPER_raio, MAT_SUPER_FINAL, MAT_CIL_CALC_raio, MAT_CIL_CALC_FINAL, MAT_ARIT_CALC_FINAL, MAT_PYHS_CALC_FINAL, MAT_PHYS_CALC_quicknessInKmPerHr, MAT_PHYS_CALC_quicknessInMetersPerSec, MAT_PHYS_CALC_timeTakenInSeconds : real;
    MAT_lado1, MAT_lado2, MAT_VOL_baseLado1, MAT_VOL_baseLado2, MAT_VOL_Altura, MAT_PYT_cateto1, MAT_PYT_cateto2, MAT_PHYS_CALC_distInMetres, MAT_PHYS_timeTakenInSeconds : integer;
    MAT_TRIG_val1, MAT_SQR, MAT_SPH_diametro, MAT_SUPER_diametro, MAT_CIL_geratriz, MAT_CIL_diametro, MAT_ARIT_num1, MAT_ARIT_num2, MAT_PHYS_finalPos : integer;
    MAT_PHYS_initialPos, MAT_PHYS_dist, MAT_PHYS_timeTaken, ctrlVAR, usrchoice_LASTPROGRAM: integer;
		MAT_ARIT_OPER : char;
    repeater : string;
Begin
		 repeat
		 Writeln('Bem-vindo á calculadora aritmética cientifica');
     Writeln('===========MATEMÁTICA===================');
     Writeln('As opções disponíveis são as seguintes: ');
     Writeln(' 1) Calcular a área do quadrado; ');
     Writeln(' 2) Calcular o volume do cubo; ');
     Writeln(' 3) Calcular a hipotenusa partir dos quadrados dos catetos (Teorema de Pitágoras)  ');
     Writeln(' 4) Calcular o seno, tangente e cosseno de um número (Trigonometria) ');
     Writeln(' 5) Devolver o valor de PI ');
     Writeln(' 6) Devolver a raiz quadrada de um número ');
     Writeln(' 7) Caclular o volume de uma esfera ');
     Writeln(' 8) Calcular a área da superficie esférica ');
     Writeln(' 9) Calcular a área total de um cilindro ');
     Writeln(' 10) Cálculos aritméticos simples (Divisão, subtraccção, multiplicação e soma)' );
     Writeln(' =============FÍSICA======================');
     Writeln(' 11) Determinar o deslocamento escalar (pos. em segundos) ');
     Writeln(' 12) Determinar a rapidez média de um objeto ');
     Writeln(' 13) Calcular o valor da força resultante num corpo ');
     Writeln('Depois de apresentadas estas opções, escolha uma: ');
     Readln(tecla); // impossível usar readkey, tipos de dados seriam incompatíveis
          
     case tecla of 
     		1:
     			Begin
     			  clrscr;
     				Writeln('1 - Calcular a área do quadrado.');
						Delay(2000);
						Writeln('Introduza o primeiro lado: ');
						Read(MAT_lado1);
						Writeln('Introduza o segundo lado: ');
						Read(MAT_lado2);
						
						MAT_CALC := MAT_lado1 * MAT_lado2;
						
						Writeln('Área do quadrado: ', MAT_CALC:0:0, '.');
					End;
				2:
					Begin
					  clrscr;
						Writeln('2 - Calcular o volume do cubo.');
						Delay(2000);
						Writeln('Introduza o primeiro lado da base: ');
						Read(MAT_VOL_baseLado1);
						Writeln('Introduza o segundo lado da base: ');
						Read(MAT_VOL_baseLado2);
						Writeln('Introduza a altura do cubo: ');
						Read(MAT_VOL_Altura);
						
						MAT_CALC_VOL_A := MAT_VOL_baseLado1 * MAT_VOL_baseLado2; // calcular a área da base
						MAT_VOL_FINAL := MAT_CALC_VOL_A * MAT_VOL_Altura; // multiplicar a área da base pela altura
						
						Writeln('Volume do cubo: ', MAT_VOL_FINAL:0:0, 'cm3.');
						Delay(2000);
					End;
				3:
					Begin
						clrscr;
						Writeln('3 - Calcular a hipotenusa partir dos quadrados dos catetos (Teorema de Pitágoras).');
						Delay(2000);
						Writeln('Introduza o primeiro cateto: ');
						Read(MAT_PYT_cateto1);
						Writeln('Introduza o segundo cateto: ');
						Read(MAT_PYT_cateto2);
						
						MAT_PYT_CALC := pow(MAT_PYT_cateto1, 2) + pow(MAT_PYT_cateto2, 2);
						MAT_PYT_CALC_FINAL := sqrt(MAT_PYT_CALC);
						
						Writeln('Hipotenusa do triângulo: ', MAT_PYT_CALC_FINAL:0:0, 'cm.');
						Delay(2000);
					End;
			 4:
			 	 Begin
				 	 clrscr;
					 Writeln('4 - Calcular o seno, tangente e cosseno de um número (Trigonometria).');
					 Delay(2000);
					 Writeln('Introduza um número para o qual calcular os valores trigonométricos: ');
					 Read(MAT_TRIG_val1);
					
					 MAT_TRIG_sine := sin(MAT_TRIG_val1);
					 MAT_TRIG_cossine := cos(MAT_TRIG_val1);
					 MAT_TRIG_tangent := tan(MAT_TRIG_VAL1);
					
					 Writeln('Seno de ', MAT_TRIG_val1, ': ', MAT_TRIG_sine, '.');
					 Writeln('Cosseno de ', MAT_TRIG_val1, ': ', MAT_TRIG_cossine, '.');
					 Writeln('Tangente de ', MAT_TRIG_val1, ': ', MAT_TRIG_tangent, '.');
					 Delay(2000);
				 End;
			 5:
			 	 Begin
					 clrscr;
					 Writeln('5 - Devolver o valor de PI.');
					 Delay(2000);
					 Writeln('O valor de Pi é ', pi, '.');
					 Delay(2000);
				 End;
			 6:
			 	 Begin
					 clrscr;
					 Writeln('6 - Devolver a raiz quadrada de um número.');
					 Delay(2000);
					 Writeln('Introduza um número: ');
					 Read(MAT_SQR);
					 MAT_SQR_FINAL := sqrt(MAT_SQR);
					 
					 Writeln('A raiz quadrada de ', MAT_SQR, ' é de ', MAT_SQR_FINAL:0:0, '.');
					 Delay(2000);
				 End;
			 7:
			   Begin
				 	 clrscr;
					 Writeln('7 - Calcular o volume de uma esfera.');
					 Delay(2000);
					 Writeln('Introduza o diametro da esfera: ');
					 Read(MAT_SPH_diametro);
					 
					 MAT_SPH_raio := MAT_SPH_diametro / 2;
					 
					 MAT_SPH_vol_FINAL := 4 / 3 * pi * pow(MAT_SPH_raio, 3);
					 Writeln('O volume da esfera é de ', MAT_SPH_vol_FINAL:0:0, 'cm3.');
					 delay(2000);
				 End;
			 8:
			 	 Begin
					 clrscr;
					 Writeln('8 - Calcular a área da superficie esférica.');
					 Delay(2000);
					 
					 Writeln('Introduza o diametro da esfera: ');
					 Read(MAT_SUPER_diametro);
					 MAT_SUPER_raio := MAT_SUPER_diametro / 2;
					 
					 MAT_SUPER_FINAL := 4 * pi * sqr(MAT_SUPER_raio);
					 Writeln('A área da superficie esférica é de ', MAT_SUPER_FINAL:0:0, 'cm2.');
					 Delay(2000);
				 End;
			 9:
			 	 Begin
					 clrscr;
					 Writeln('9 - Calcular a área total de um cilindro.');
					 Delay(2000);
					 Writeln('Por favor introduza a geratriz do cilindro: ');
					 Read(MAT_CIL_geratriz);
					 Writeln('Por favor introduza o diâmetro da base do cilindro: ');
					 Read(MAT_CIL_diametro);
					 
					 MAT_CIL_CALC_raio := MAT_CIL_diametro / 2;
					 MAT_CIL_CALC_FINAL := 2 * pi * MAT_CIL_CALC_raio * MAT_CIL_geratriz + 2 * pi * sqr(MAT_CIL_CALC_raio);
					 
					 Writeln('A área total do cilindro é de ', MAT_CIL_CALC_FINAL:0:0, 'cm2.');
					 Delay(2000);
				 End;
			10:
			   Begin
				 	 Repeat
					 clrscr;
					 Writeln('10 - Cálculos aritméticos simples (Divisão, subtraccção, multiplicação e soma)');
					 Delay(2000);
					 Writeln('Introduza um número: ');
					 Read(MAT_ARIT_num1);
					 Writeln('Introduza o operador desejado: ');
					 Read(MAT_ARIT_OPER);
					 Writeln('Introduza o segundo número: ');
					 Read(MAT_ARIT_num2);            
					 
					 
					 case MAT_ARIT_OPER of
					 		'+':
							 		Begin
									 MAT_ARIT_CALC_FINAL := MAT_ARIT_num1 + MAT_ARIT_num2;
									 Writeln('Valor da soma desejada: ', MAT_ARIT_CALC_FINAL);
									 Delay(2000);
									End;
							'-':
									Begin
									 MAT_ARIT_CALC_FINAL := MAT_ARIT_num1 + MAT_ARIT_num2;
									 Writeln('Valor da subtracção desejada: ', MAT_ARIT_CALC_FINAL);
									 delay(2000);
									End;
							'*':
									Begin
									 MAT_ARIT_CALC_FINAL := MAT_ARIT_num1 * MAT_ARIT_num2;
									 Writeln('Valor da multiplicação desejada: ', MAT_ARIT_CALC_FINAL);
									 delay(2000);
									End;
							'/':
									Begin
									 MAT_ARIT_CALC_FINAL := MAT_ARIT_num1 / MAT_ARIT_num2;
									 Writeln('Valor da divisão desejada: ', MAT_ARIT_CALC_FINAL);
								   delay(2000);
									End
					    else
							  Begin
								 ctrlVAR := 1;
								 Writeln('Indroduziu um operador inválido! Por favor tente novamente.');
								End;
					 Delay(2000);
					 
					 End;
					 
					 until(ctrlVAR = 1);			 
					 clrscr;
				End;
			11:
			   Begin
			     clrscr;
			     Writeln('11 - Determinar o deslocamento escalar (pos. em segundos).');
			     Delay(2000);
			     Writeln('Introduza a posição final: ');
			     Read(MAT_PHYS_finalPos);
			     Writeln('Introduza a posição inicial: ');
			     Read(MAT_PHYS_initialPos);
			     
			     MAT_PYHS_CALC_FINAL := MAT_PHYS_finalPos - MAT_PHYS_initialPos;
			     Writeln('O deslocamento final é de ', MAT_PYHS_CALC_FINAL:0:0, 'm.');
			   End;           
			12:
			   Begin
			     clrscr;
			     Writeln('12 - Determinar a rapidez média de um veículo.');
			     Delay(2000);
			     Writeln('Introduza a distância percorrida pelo objeto, em quilometros (dispense do "km"): ');
					 Read(MAT_PHYS_dist);
					 Writeln('Introduza o tempo que esse objeto demorou a percorrer os ', MAT_PHYS_dist, 'km (em horas, dispense de "hr" ou "h"): ');
					 Read(MAT_PHYS_timeTaken);
					 
					 MAT_PHYS_CALC_distInMetres := MAT_PHYS_dist * 1000;
					 MAT_PHYS_CALC_timeTakenInSeconds := MAT_PHYS_timeTaken * 60 * 60;
					 
					 MAT_PHYS_CALC_quicknessInKmPerHr := MAT_PHYS_dist / MAT_PHYS_timeTaken;  
			     MAT_PHYS_CALC_quicknessInMetersPerSec :=  MAT_PHYS_CALC_distInMetres / MAT_PHYS_timeTakenInSeconds;
			     
			     Writeln('Rapidez média do objeto: ', MAT_PHYSC_CALC_quicknessInKmPerHr, 'km/h OU ', MAT_PHYS_CALC_quicknessInMetersPerSec, 'm/s. ');
			   End;
		else
			Begin
				Writeln('Erro! Introduziu uma opção invalida! Tente novamente.');
				Delay(2000);
			End;
		End;
		clrscr;
		Writeln('Repetir? 1 - SIM | 2 - NAO');
		repeater := readkey;
		
		if(repeater = '2') then
			Begin
				Writeln('Interrompendo...');
				halt(0);
			End;
			
		until(repeater <> '2');
		Readkey;
End.
