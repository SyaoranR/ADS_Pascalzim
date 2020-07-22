Program Vetor_ordenado ;
var 
v: array [1..8] of integer;
i, j, aux: integer;
Begin

  for i := 1 to 8 do
  begin
    //comandos  
    writeln('Vetor[',i,']: ');
    readln(v[i]);
  end;

 // faz duas repetições, não é matriz!
 for i := 1 to 8 do
 // repetição externa executa a primeira vez  		
 begin
   for j := 1 to 8 do 
   // repetição interna executa até j = 8  em seguida executa a externa i+1
   begin
     //comandos
     if v[j] > v[i] then 
     // verifica todos os elementos v[j] se é maior que v[i]
     begin
       //comandos
       aux := v[j];
       v[j] := v[i];
       v[i] := aux; 
     end;
   end;
 end;	              
 
  writeln;
  writeln('Vetor ordenado');
  writeln;

  for i := 1 to 8 do
    begin   
      //comando
      writeln('Vetor[',i,']: ', v[i]);
    end;   
	   
End.