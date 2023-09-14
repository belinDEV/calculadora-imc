import 'dart:io';

class Pessoa {
  double altura;
  double peso;

  Pessoa(this.altura, this.peso);

  double calcularIMC() {
    return peso / (altura * altura);
  }
}

void main() {
  print('Calculadora de IMC');
  print('Digite sua altura em metros : ');
  double altura = double.parse(stdin.readLineSync()!);

  print('Digite seu peso em quilogramas  ');
  double peso = double.parse(stdin.readLineSync()!);

  Pessoa pessoa = Pessoa(altura, peso);
  double imc = pessoa.calcularIMC();

  print('Seu IMC é: $imc');

  if (imc < 18.5) {
    print('Você está abaixo do peso.');
  } else if (imc < 24.9) {
    print('Seu peso está normal.');
  } else if (imc < 29.9) {
    print('Você está com sobrepeso.');
  } else if (imc < 34.9) {
    print('Você tem obesidade grau 1.');
  } else if (imc < 39.9) {
    print('Você tem obesidade grau 2.');
  } else {
    print('Você tem obesidade grau 3 (obesidade mórbida).');
  }
}
