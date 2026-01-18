import 'dart:ffi';
import 'dart:io';

void main() {
  List<String> nameList = ['Anna', 'Joe', 'Michael', 'Serg'];
  print('Исходный список $nameList');
  nameList.add('Diana');
  print('Добавлен элемент $nameList');
  nameList.shuffle();
  print('Перемешан $nameList');
  bool findInList = nameList.contains('Anna');
  print('Анна есть? $findInList');
  

  }