import 'package:minha_calculadora/pessoa.dart';
import 'package:minha_calculadora/utils.dart';

void main(List<String> arguments) {
  print("Bem-vindo (a) calculadora de IMC\n");
  
  var pessoa = Pessoa(lerString("\nDigite o seu nome: "), lerDouble("\nDigite seu peso (kg): "), lerDouble("\nDigite sua altura (m):"));

  print(classificaImc(pessoa.calculaImc(), pessoa.getNome()));

}
