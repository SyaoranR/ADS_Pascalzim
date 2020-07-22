Program Viagens ;
var 
// Parte A
m: array [1..3,1..3] of integer;
i, j: integer;
// * //

// Parte B
soma: integer;
// * //

// Parte C
Origem, Op1, Op2, Destino, s1, s2: integer;
// * //
Begin

	// Parte A

	for i := 1 to 3 do
	begin
  	//comandos
		for j := 1 to 3 do
  	begin
    	//comandos
    	if i = j then begin
        //comandos
       	m[i,j] := 0;
      end  else begin
        //comandos
        writeln('Matriz[',i,',',j,']: ');
  		  readln(m[i,j]);
      end;
  	end;  
  end;
  
  writeln('Origem: ');
  readln(i);
            
  writeln('Destino: ');
  readln(j);
		
	if i <> j then begin
    //comandos
    writeln('Distancia entre as localidades = ', m[i,j]);
  end;
 
  // Parte B
 
  soma := 0;
  while i <> 0 do begin
    //comandos
    writeln('Destino: ');
  	readln(j);
  	if ((i <> j) and (j <> 0)) then begin
     //comandos
     soma := soma + m[i,j];
   end;
   i := j;
  end;
 
 	// Parte C
 	
 	writeln('Origem: ');
  readln(Origem);
  writeln('Opcao 1: ');
  readln(Op1);
  writeln('Opcao 2: ');
  readln(Op2);
  writeln('Destino: ');
  readln(Destino);
  
  s1 := m[Origem,Op1] + m[Op1,Destino];
  s2 := m[Origem,Op2] + m[Op2,Destino];
 
 	if s1 > s2 then begin
    //comandos
    writeln('Melhor opcao = ', Origem, ' - ', Op2, ' - ', Destino);
    end  
		else if s1 < s2 then begin
         //comando 
		     writeln('Melhor opcao = ', Origem, ' - ', Op1, ' - ', Destino);
		end    
		else begin
         writeln('As duas opções consomem o mesmo tempo!');
         end;

End.