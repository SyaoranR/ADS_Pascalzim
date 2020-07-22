// -------------------------------------------------------------
// Este programa faz cadastro n jogadores e m jogos cada um.
// Al�m permitir consultas pelo i jogador com seus jogos e
// Autoria: Alessandro Fraga Gomes e Douglas Santos de Jesus
// Professor(a): Renata Tania Brito Morais
// -------------------------------------------------------------

Program GamersXPzim ;
uses crt;
type
	// "Vetores" de Jogos com seus dados
	nomeJogos = array[1..78] of String;
	difJogos = array [1..78] of integer;
	catJogos = array [1..78] of String;
	platJogos = array [1..78] of String;
	Jogadores = record
  		nomeJogador: string;
  		idade: integer;
  		habilidade: integer;
  		nomeJogo: nomeJogos;
  		dificuldade: difJogos;
  		categoria: catJogos;
  		plataforma: platJogos;
  		end;

Var

	// a e z ser�o os �ndices dos vetores de Jogadores e Jogos
	// respectivamente, y ser� usado nas consultas e exclus�es
	// cod ser� usado na escolha do que fazer na execu��o
	a, z, y, tamGamers, tamGames, cod: integer;
  jogador: array [1..78] of Jogadores;
	// jogador � um vetor de registros Jogadores
	nomeJogo: array [1..78] of nomeJogos;
	// nomeJogo � um vetor de nomeJogos	
	dificuldade: array [1..78] of difJogos;
	// dificuldade � um vetor de difJogos
	categoria: array [1..78] of catJogos;
	// categoria � um vetor de catJogos
	plataforma: array [1..78] of platJogos;
	// plataforma � um vetor de platJogos
	contGamer, contGame, contProg, listou, existe: String;
	// vari�veis para continuar a cadastrar jogadores e jogos 
	// contProg � para continuar programa ou n�o
	// listou para conferir se j� ocorreu a lista
	// existe para conferir se existe o elemento do �ndice

// Listar Jogadores e Jogos		
Procedure Listar();
	
//var		
  	
	Begin
		contGamer := 's';
		a := 0;
		z := 0;
		tamGamers := a + 1; 
		tamGames := z + 1;
		
		// Apesar de ser Pascal, parece que o Pzim � case sensitive!
		// cadastro inicial de jogador e jogo sempre realizado tipo 'repita'
		// writeln('Cadastro do Jogador');
		if (contGamer = 's') or (contGamer = 'S') then
		begin	
			// Inserindo os jogadores e seus dados
			for a := 1 to tamGamers do
			begin
				writeln('---------------------------------------------------------------------');
				writeln('-                      Cadastro dos Jogadores                       -');
				writeln('---------------------------------------------------------------------');
				writeln; 
				writeln('Nome do(a) ', a:2, 'o(a) jogador(a)..:');
				readln(jogador[a].nomeJogador);	
				writeln;
				writeln('Idade do(a) ', a:2, 'o(a) jogador(a)..:');
				readln(jogador[a].idade);	
				writeln;
				
				// Habilidade quanto maior = melhor
				writeln('Informe somente valores de 1 a 5 abaixo');
				writeln('Habilidade de 1 a 5 do(a) ', a:2, 'o(a) jogador(a)..:');
				readln(jogador[a].habilidade);
				
				contGame := 's';				
				
				// Apesar de ser Pascal, parece que o Pzim � case sensitive!				
				if (contGame = 's') or (contGame = 'S') then
				begin
					// Inserindo os jogos para este jogador
					for z := 1 to tamGames do
					begin   
						writeln('---------------------------------------------------------------------');
						writeln('-                         Cadastro do Jogos                         -');                
						writeln('---------------------------------------------------------------------');
						writeln; 
						writeln('Nome do ', z:2, 'o jogo..:');
						readln(jogador[a].nomeJogo[z]);
						writeln;
						
						// Dificuldade quanto maior = mais dif�cil
						writeln('Informe somente valores de 1 a 10 abaixo');	
						writeln('Dificuldade de 1 a 10 do ', z:2, 'o jogo..:');
						readln(jogador[a].dificuldade[z]);
						
						writeln;
						writeln('Informe "terror", "a��o", "aventura", "rpg" ou "luta"');
			      writeln('Categoria do ', z:2, 'o jogo..:');
						readln(jogador[a].categoria[z]);					
			      
						writeln;
						writeln('Informe "Playstation", "Nintendo", "Xbox" ou "PC"');
			      writeln('Plataforma  do ', z:2, 'o jogo..:');
						readln(jogador[a].plataforma[z]);	
						
						writeln;
						//Pergunta para continuar adicionando Jogos
		        writeln('---------------------------------------------------------------------');
						writeln('-   Cadastrar mais jogos para este(a) jogador(a)?                   -');
		        writeln('-   Informe valores "S" ou "s" para sim e "N" ou "n" para n�o       -');
		        writeln('---------------------------------------------------------------------');
		        readln(contGame);
		        tamGames := tamGames + 1;
		        
		        // Apesar de ser Pascal, parece que o Pzim � case sensitive!
						if (contGame <> 's') and (contGame <> 'S') then
			      begin
			      	tamGames := z;
			      end;
	      
					//fimpara					
					end;
				//fimse	
				end;
				
				writeln;
				//Pergunta para continuar adicionando Jogadores
	      writeln('---------------------------------------------------------------------');
				writeln('-   Cadastrar mais jogadores?                                       -');
	      writeln('-   Informe valores "S" ou "s" para sim e "N" ou "n" para n�o       -');
	      writeln('---------------------------------------------------------------------');
	      readln(contGamer);
	      tamGamers := tamGamers + 1;
	      
	      // Apesar de ser Pascal, parece que o Pzim � case sensitive!
				if (contGamer <> 's') and (contGamer <> 'S') then
	      begin
	      	tamGamers := a;
	      end;
	      
			//fimpara	
			end;
			listou := 's';
		//fimse	
		end;
				
		
	//fimprocedimento	
	End;

// Consultar jogador e seus jogos na lista 
Procedure Consultar();
	Begin      				
		writeln('---------------------------------------------------------------------');
		writeln('-  Informe n�meros de 1 at� o n�mero de cadastros de jogadores      -');
		writeln('-  Informe qual jogador(a) deseja consultar                         -');
		writeln('---------------------------------------------------------------------');
		readln(y);
		a := y;
		if (y <= tamgamers) then
		begin
		  existe := 's';
		end;
		writeln;
		if (listou <> 's') or (existe <> 's') then
		begin
		  writeln('Jogador(a) na posi��o ', a:2, ' non ecxiste!');
			writeln;
		end else 
		begin	
			writeln;
			// Chamando a fun��o e passando o par�metro para organizarJogadores
			writeln('---------------------------------------------------------------------');
		  writeln('-                          Jogador(a)                               -');
		  writeln('---------------------------------------------------------------------');
	    writeln('Jogador(a) ', a:2);
			writeln('Nome do(a) jogador(a) ', a:2, 'o(a)..: ', jogador[a].nomeJogador);
	    writeln;   
	    writeln('Idade do(a) jogador(a) ', a:2, 'o(a)..: ', jogador[a].idade);
	    writeln;
	    writeln('Habilidade do(a) jogador(a) ', a:2, 'o(a)..: ', jogador[a].habilidade);
	    for z := 1 to tamGames do
		    begin
		    	// Chamando a fun��o e passando o par�metro para organizarJogos
		    	writeln('------------------------------------------------------------------');
					writeln('-                        Jogo                                    -');
					writeln('------------------------------------------------------------------');
					writeln('Jogo ', z:2);
					writeln('Nome do jogo ', z:2, 'o..: ', jogador[a].nomeJogo[z]);
			    writeln;   
			    writeln('Dificuldade do jogo ', z:2, 'o..: ', jogador[a].dificuldade[z]);
			    writeln;
			    writeln('Categoria do jogo ', z:2, 'o..: ', jogador[a].categoria[z]);
			    writeln;  
					writeln('Plataforma do jogo ', z:2, 'o..: ', jogador[a].plataforma[z]);
			    writeln;    
		    //fimpara
				end;
		  //fimpara
		//fimse
		end;
	//fimProcedimento	
	End; 
	
Procedure Exibir();
	Begin
	  // Imprimindo os jogadores	  
	  for a := 1 to tamGamers do
	  begin
	  	// Chamando a fun��o e passando o par�metro para organizarJogadores
	  	writeln('---------------------------------------------------------------------');
	    writeln('-                          Jogador(a)                               -');
	  	writeln('---------------------------------------------------------------------');
	    writeln('Jogador(a) ', a:2);
			writeln('Nome do(a) jogador(a) ', a:2, 'o(a)..: ', jogador[a].nomeJogador);
	    writeln;   
	    writeln('Idade do(a) jogador(a) ', a:2, 'o(a)..: ', jogador[a].idade);
	    writeln;
	    writeln('Habilidade do(a) jogador(a) ', a:2, 'o(a)..: ', jogador[a].habilidade);
	    writeln;    
				    
	    // Imprimindo os jogos de cada jogador
			for z := 1 to tamGames do
	    begin
	    	// Chamando a fun��o e passando o par�metro para organizarJogos
	    	writeln('------------------------------------------------------------------');
				writeln('-                        Jogo                                    -');
				writeln('------------------------------------------------------------------');
				writeln('Jogo ', z:2);
				writeln('Nome do jogo ', z:2, 'o..: ', jogador[a].nomeJogo[z]);
		    writeln;   
		    writeln('Dificuldade do jogo ', z:2, 'o..: ', jogador[a].dificuldade[z]);
		    writeln;
		    writeln('Categoria do jogo ', z:2, 'o..: ', jogador[a].categoria[z]);
		    writeln;  
				writeln('Plataforma do jogo ', z:2, 'o..: ', jogador[a].plataforma[z]);
		    writeln;    
	    //fimpara
			end;
	  //fimpara
		end;
	End;	 	

Begin
 writeln('//-----------------------------------------------------------------------\\');
 writeln('//-      Este programa faz cadastro n jogadores e m jogos cada um.      -\\');
 writeln('//-      Al�m permitir consultas pelo i jogador com seus jogos.         -\\');
 writeln('//-      Autoria: Alessandro Fraga Gomes e Douglas Santos de Jesus      -\\');
 writeln('//-      Professor(a): Renata Tania Brito Morais                        -\\');
 writeln('//-----------------------------------------------------------------------\\'); 
 contProg := 's';
 writeln('------------------------------------------------------------------------');
 writeln('-                        O que deseja fazer?                           -');
 writeln('- Aconselha-se listar primeiro, consultar e exibir depois de preencher -');
 writeln('------------------------------------------------------------------------');
 while (contProg = 'S') or (contProg = 's') do 
	 Begin
		 writeln('--------------------------------------------------');
		 writeln('-            Lista de a��es                      -');
		 writeln('-                                                -');
		 writeln('-            (1)Listar                           -');
		 writeln('-            (2)Exibir                           -');
		 writeln('-            (3)Consultar                        -');
     writeln('-            ()N�o implementado                  -');
     writeln('-                                                -');
     writeln('--------------------------------------------------');
     writeln('------------------------------------------------------------------------');
 		 writeln('-                        O que deseja fazer?                           -');
     writeln('------------------------------------------------------------------------');
		 readln(cod);
		 Case cod of 
		 			1 : Begin
								writeln('--------------------------------------------------');
								writeln('-            (1)Listar                           -');
								writeln('-         Listar s� uma vez                      -');
								writeln('-     Risco de apagar listas anteriores          -');
								writeln('--------------------------------------------------');
								if (listou <> 's') then
								begin
									// Chamando o procedimento
						 			Listar();
						 			writeln;
						 		end else
						 		begin
						 		  writeln('Lista j� existe!');
						 		  writeln;
						 		end;
						 	End;
					2 : Begin
								writeln('--------------------------------------------------');
								writeln('-            (2)Exibir                           -');
								writeln('--------------------------------------------------');
								// Chamando o procedimento
								if (listou = 's') then begin
						 			Exibir();
						 			writeln;
								end 						 		
         				else 
								begin
								  writeln('Non exciste Lista!');
								  writeln;
								end;
						 	End;
					3 : Begin
								writeln('--------------------------------------------------');
								writeln('-            (3)Consultar                        -');
								writeln('--------------------------------------------------');
								// Chamando o procedimento
								Consultar();
								writeln;
							End;
					Else writeln('--------------------------------------------------'); 
               writeln('-            ()N�o implementado                  -');
							 writeln('--------------------------------------------------');
		 End;	     		 		 
		 writeln('------------------------------------------------------------------');
		 writeln('-   Continuar? "S" ou "N"                                        -');
     //writeln('-   Informe valores "S" ou "s" para sim e "N" ou "n" para n�o    -');
     writeln('------------------------------------------------------------------');
	   readln(contProg);            
	 End;          
 // Sair do programa
 writeln('Tecle <ENTER> para encerrar: '); 
 readln;  
End.