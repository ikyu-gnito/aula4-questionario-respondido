/*
Escreva uma classe cujos objetos representam alunos matriculados em uma disciplina. Cada objeto
dessa classe deve guardar os seguintes dados do aluno: matrícula, nome, 2 notas de prova e 1 nota de
trabalho. Escreva os seguintes métodos para esta classe:
  media calcula a média final do aluno (cada prova tem peso 2,5 e o trabalho tem peso 2)
  final calcula quanto o aluno precisa para a prova final (retorna zero se ele não for para a final)
*/

class alunos {
  late String matricula;
  late String nome;
  late double nota1, nota2, trabalho;

  double media() {
    double media = 0;
    media = (this.nota1 * 2.5) + (this.nota2 * 2.5) + (this.trabalho * 2) / 7;
    return media; 
  }

  double notaFinal()
  {
    if (media() >= 6)
    {
      return 0;
    }
    else
    {
      return 6-media();
    }
  }
}
