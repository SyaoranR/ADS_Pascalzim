Program VetorParImpar ;
var 
vet_a, vet_b, vet_r: array [1..8] of real;
i, j, k: integer;
Begin
  
  // informando dois vetores em um só para
  for i := 1 to 8 do
  begin
    //comandos  
    writeln('Vetor A[',i,']: ');
    readln(vet_a[i]);
    writeln('Vetor B[',i,']: ');
    readln(vet_b[i]);
  end;
	
  // aternando a leitura dos índices [j] e [k]
  j := 8;
  k := 4;
	
  for i := 1 to 8 do
  begin
    //comandos
    writeln('Vetor A[',i,']: ', vet_a[i]:4:2);
    writeln('Vetor B[',j,']: ', vet_b[j]:4:2);
    vet_r[k] := vet_a[i] * vet_b[j];
    writeln('Vetor K[',k,']: ', vet_r[k]:4:2); 
    if i mod 2 = 0 then
    // preenchendo os valores pares do meio para o começo
    begin       
      k := k - i;
    end   
    else
    // preenchendo os valores ímpares do meio para o fim 
    begin                       
      k := k + i;
    end; 
    // decrescendo [j] para não usar passo -1        
    j := j - 1;
    end;
	   
End.