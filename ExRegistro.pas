Program ExRegistro ;
	type
	cad_aluno = record
  		nome: string;
  		n1: real;
  		n2: real;
  		media: real;
  		end;
  		
  var Aluno: cad_aluno;

Begin
 writeln('Cadastro de Aluno');
 writeln;
 writeln('Informe o nome..............: '); 
 writeln;
 readln(Aluno.nome);
 writeln;

 writeln('Informe a primeira nota..: '); 
 writeln;
 readln(Aluno.n1);
 writeln('Informe a segunda nota..: '); 
 writeln;
 readln(Aluno.n2);
 writeln;
 
 Aluno.media := (Aluno.n1 + Aluno.n2)/2;
 
 writeln('Nome..: ' , Aluno.nome);
 writeln('Nota 1.: ' , Aluno.n1 :2:2);
 writeln('Nota 2.: ' , Aluno.n2 :2:2);
 writeln('Media.: ', Aluno.media :2:2);
 writeln;
 writeln('Tecle <ENTER> para encerrar: '); 
 readln;
  
End.