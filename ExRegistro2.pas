Program ExRegistro2 ;
uses crt;
	type
	notas = array[1..4] of real;
	cad_aluno = record
  		nome: string;
  		nota: notas;
  		media: real;
  		end;
  		
  var 
	//Aluno: array of cad_aluno;
	//i, j, tam: integer; 
  //Aluno: array[1..tam] of cad_aluno;
  Aluno: array[1..5] of cad_aluno;
	i, j: integer;
	SOMA: REAL;
Begin
 writeln('Cadastro de Alunos');
 writeln;
 //writeln('Quantos aluno?');
 //readln(tam);
 writeln;
 //for i := 1 to tam do
 
 for i := 1 to 5 do
 begin
   //comandos
   SOMA := 0;
   writeln('Informe o nome do ', i:2, 'o aluno..:');
   readln(Aluno[i].nome);
   writeln;
 	 for j := 1 to 4 do
   begin
     //comandos
     writeln('Informe a ', j:2, 'a nota..: '); 
     readln(Aluno[i].nota[j]);
     SOMA := SOMA + ALUNO[I].NOTA[J];
     //writeln(soma:2:1);
     ALUNO[I].MEDIA := SOMA / 4;
     //writeln(aluno[i].media:2:1);
   end;
   writeln;	
 //end;
 end;
 writeln;
 
 //for i := 1 to tam do 
 for i := 1 to 5 do
 begin
   //comandos
   writeln('Nome do aluno ', i:2, 'o..: ', Aluno[i].nome);
   writeln;
   for j := 1 to 4 do
   begin
     //comandos
     writeln('Nota ', j, '.....: ', Aluno[i].nota[j]:2:1);
     writeln;
   end;
   writeln('Media do aluno ', i:2, '..: ', Aluno[i].media:2:1);
   writeln;
 //end; 
 end;
 
   //Aluno.media := (Aluno.n1 + Aluno.n2)/2;
 
 writeln('Tecle <ENTER> para encerrar: '); 
 readln;
  
End.