/*
Criar uma estrutura hierárquica que contenha as seguintes classes: Veiculo (classe abstrata), Bicicleta e Automóvel.
*/
import 'dart:io';

abstract class Veiculo {
  late String fabricante;
  Veiculo(this.fabricante);
}

class Bicicleta extends Veiculo {
  late String marca;
  Bicicleta(this.marca, String fabricante) : super(fabricante);
}

class Automovel extends Veiculo {
  late String marca, veiculo;
  Automovel(this.marca, this.veiculo, String fabricante) : super(fabricante);
}

void main() {
  String nome;
  Bicicleta bicicleta = Bicicleta("caloi", "caloi");
  Automovel auto = Automovel("Yamaha", "moto", "Yamaha");
  print("voce vai andar com o que?");
  nome = stdin.readLineSync()!;
  if (nome == auto.veiculo) {
    print("voce vai de moto");
  } else if (nome == "bicicleta") {
    print("voce vai de bicicleta");
  } else {
    print("a opção não existe, vai a pé.");
  }
}


