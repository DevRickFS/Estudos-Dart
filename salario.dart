
import 'dart:convert';
import 'dart:io';

double lerSalario(String message){
  print(message);
  var line = stdin.readLineSync(encoding: utf8);
  var numero = double.tryParse(line ?? "");
  return numero ?? 0.0;
}

double aumentoSalario(double percent, double salario){
  var result = ((percent / 100) + 1) * salario;
  return result;
}
void main(){
  lerSalario("Informe o salario a ser aumentado: ");
  double novoSalario = aumentoSalario(15, 1500);
  print("O novo Salario do Funcionario será: RS $novoSalario");
}