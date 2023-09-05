import 'package:test/test.dart';
import 'package:minha_calculadora/pessoa.dart';

void main() {
  test('Calculo do ICM', () {
    var pessoa = Pessoa("Gabriel", 61, 1.79);
    expect(pessoa.calculaImc(), equals(19.038107424861895));
  });

  test('Calculo do ICM com peso e altura zerados', () {
    var pessoaPesoNulo = Pessoa("Gabriel", 0, 1.79);
    var pessoaAlturaNula = Pessoa("Gabriel", 61, 0);
    expect(pessoaPesoNulo.calculaImc(), equals(0));
    expect(pessoaAlturaNula.calculaImc(), equals(0));
  });
}
