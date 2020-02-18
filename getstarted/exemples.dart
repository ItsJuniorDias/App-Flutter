class Pessoa {
  String nome;
  int idade;
}

class Aluno {
  String nome;
  int matricula;
  bool status;
  
//  Aluno(String nome, int matricula) {
//   this.nome = nome;
//  this.matricula = matricula;
// }
  
  Aluno(this.nome, {this.matricula, this.status});
}

main() {
  Pessoa p1 = new Pessoa();
   p1.nome = 'Fulano';
  
  Pessoa p2 = new Pessoa()
   ..nome = 'Beltrano';
  
  Aluno a1 = Aluno('Ciclano', matricula: 123);
  print(a1.nome);
   
  Aluno a2 = Aluno('Batman', status: true );
  print(a2.nome);
  
  print(p1.nome);
  print(p2.nome);
}