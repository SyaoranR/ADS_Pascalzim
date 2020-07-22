Program VetorAleatorioOrdenado ;
var 
v : array [1..8] of integer;
i, j, k, aux: integer;
Begin

  for i := 1 to 8 do
  begin
    //comandos  
    v[i] := 50 + random(70);  
    writeln('Vetor[',i,']: ', v[i]);
  end;
	
  // ele executa primeiro o interno, depois executa o restante vezes
  for i := 1 to 7 do
  begin
    // executa [i] vez depois executa todo [j] vez e volta a executar [i] seguinte
    k := i;
    aux := v[i];
    for j := i+1 to 8 do
    begin
      if v[j] < aux then
      begin
				k := j;
				aux := v[k];
      end;
    end;
    	v[k] := v[i];
    	v[i] := aux;
  end;
	  
  writeln;
  writeln('Vetor ordenado');
  writeln;
		
  for i := 1 to 8 do
  begin
    //comandos  
    writeln('Vetor[',i,']: ', v[i]);
  end; 
	  
End.