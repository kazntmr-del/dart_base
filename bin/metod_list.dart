import 'dart:ffi';
import 'dart:io';

void main() {
  Map<String, int> stock = {'iphone': 1000, 'macbook': 2000, 'ipad': 500};
  String recClient = ' Iphone ';
  String cleanRecClient = recClient.trim();
  String cleanRecClientLower = cleanRecClient.toLowerCase();
  
  print('$cleanRecClientLower');

  if (stock.containsKey(cleanRecClientLower)){
    var price = stock[cleanRecClientLower];
    print('Price of $cleanRecClientLower to $price');}
  else{
    print('Sorry, no product');
  }
  } 

  