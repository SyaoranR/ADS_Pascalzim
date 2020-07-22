Program Matriz_Aleatoria ;
var 
m: array [1..4, 1..4] of integer;
i, j, k, l, aux: integer;
Begin

	for i := 1 to 4 do
	  begin
	  for j := 1 to 4 do
  	 	begin
		    //comandos
	  		m[i,j] := random(50);  
  	    writeln('Matriz[',i,',',j,']: ', m[i,j]);
  		end;
    end;
	
	for i := 1 to 4 do
 	  begin                                
 	  for j := 1 to 4 do
      begin
    	for k := 1 to 4 do
    	  begin
    	  for l:= 1 to 4 do      
    	    begin
    	  	//comandos
      	  if m[k,l] > m[i,j] then 
			 			begin
         		  //comandos
         		  aux := m[k,l];
         		  m[k,l] := m[i,j];
			        m[i,j] := aux; 
      		  end;
       		end;
		     end;
    	end;
   	end;
	              
	writeln;
	writeln('Matriz ordenada');
  writeln;

	for i := 1 to 4 do
    begin   
	  for j:= 1 to 4 do
		  begin
		    //comando
	      writeln('Matriz[',i,',',j,']: ', m[i,j]);
	    end;
    end;   
	   
End.