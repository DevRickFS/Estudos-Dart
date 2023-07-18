// Coletar o valor do lado de um quadrado, calcular sua área e apresentar o resultado

import 'dart:convert';
import 'dart:io';

double calcArea(double lado, double lado2) => lado * lado2;
String lerConsole(String message){
  print(message);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double lerConsoleDouble(message){
    var lado1 = double.tryParse(lerConsole("Digite o primeiro lado: "));
    return lado1?? 0.0;
}


void main (){
  double lado1 = lerConsoleDouble("Digite o primeiro lado: ");
  double lado2 = lerConsoleDouble("Digite o segundo lado para efetuar o calculo: ");
  double result = calcArea(lado1, lado2);
  print("O quadrado tem área igual a $result");
}
