// -------------------------------------------------------------
// Este programa mostra um exemplo de potenciacao.
// -------------------------------------------------------------

Program Ex_Procedimentos0;
 Var i, base, exp, pot: integer;

 // Função de potencia    
 Function potencia(base, exp: integer): integer;
  Begin
   if (exp = 0) then begin
   	 potencia := 1;			     		                     
   end;
   pot := base;
   i := 1; 
   writeln('exp = ', exp);        
  
   while (i < exp) do begin
   	  pot := pot * base;
	  writeln('i = ', i);   
	  writeln('base = ', base);   
	  writeln('pot = ', pot);
		i := i + 1;
	  potencia := pot;			    
   end;
  End;

 // Corpo do programa principal
 Begin  
  writeln('Começa aqui!');
  writeln(potencia(2,2));
  writeln(potencia(2,8));
  //readkey;
 End.
