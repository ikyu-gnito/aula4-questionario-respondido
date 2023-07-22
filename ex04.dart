/*
Crie um programa para uma Locadora de jogos, que deverá conter a classe Jogo(Gênero e nome) e dizer se foi alugado ou não.
*/
import 'dart:io';

class Jogo {
  late String nome, genero;
  int estoque = 1;

  Jogo(this.nome, this.genero);
  void alugar() {
    this.estoque--;
  }
}

void main() 
{
  Jogo jogo = Jogo("Dark Souls", "RPG");
  Jogo jogo1 = Jogo("Battefield", "FPS");

  if (jogo.estoque <= 0)
  {
    print("ja era, o ${jogo.nome} já foi alugado");
  } 
  else 
  {
    print("o ${jogo.nome} ainda não foi alugado, voce quer?");
  }

  jogo1.alugar();

  if (jogo1.estoque <= 0) 
  {
    print("ora ora, o ${jogo1.nome} ja foi alugado little friend");
  } 
  else 
  {
    print("o ${jogo1.nome} ainda está disponivel, mas pra voce nao");
  }
}