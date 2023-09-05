import 'dart:convert';
import 'dart:io';

String lerString(String texto){
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);

  return (line == null) ? "" : line;
}

double lerDouble(String texto){
  String retorno = lerString(texto);

  if (retorno == ""){
    return 0.0;
  }
  return double.parse(retorno);
}

String classificaImc(double imc, String nome){
  switch (imc) {
    case == 0:
      return "Impossível calcular o IMC com os dados informados.";
    
    case < 16:
      return "$nome, sua classificação é: Magreza Grave, com IMC: $imc";

    case < 17:
      return "$nome, sua classificação é: Magreza Moderada, com IMC: $imc";
    
    case < 18.5:
      return "$nome, sua classificação é: Magreza Leve, com IMC: $imc";
    
    case < 25:
      return "$nome, sua classificação é: Saudável, com IMC: $imc";
    
    case < 30:
      return "$nome, sua classificação é: Sobrepeso, com IMC: $imc";

    case < 35:
      return "$nome, sua classificação é: Obesidade Grau 1, com IMC: $imc";

    case < 40:
      return "$nome, sua classificação é:Obesidade Grau 2 (severa), com IMC: $imc";

    default:
      return "$nome, sua classificação é: Obesidade Grau 3 (mórbida), com IMC: $imc";
  }
}