
class Pessoa{
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome, double peso, double altura){
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getNome(){
    return _nome;
  }

  double calculaImc(){
    if (_peso <= 0){
      print("\nNão há peso nulo ou negativo.");
    }else if (_altura <= 0){
      print("\nNão há altura nula ou negativa");
    }else{
      return _peso / (_altura * _altura);
    }

    return 0.0;
  }

}