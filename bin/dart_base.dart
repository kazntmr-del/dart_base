import 'dart:io';

void main() {
  stdout.write('Какое количество упаковок нужно?  '); 
  String? input = stdin.readLineSync();
  int? neededForPet = int.tryParse(input ?? '');

  if (neededForPet == null) {
    print('Пожалуйста, введите числовое значение!');
    return;
  }

  // neededForPet - сколько нужно пользователю
  // boxes - имеющиейся коробки
   // curtrenBoxes - ctqxfc rjhj,jr
    // allBoxes - имеющиейся коробки packaging - упаковки корма
  int packaging = neededForPet; 
  int allBoxes = 0;
  List<int> boxes = [50, 20, 10, 1];

  for (int box in boxes) {
    int curtrentBoxes = packaging ~/ box; // Сколько монет этого номинала берем
    allBoxes += curtrentBoxes;             // Добавляем их в общую копилку
    packaging %= box;                    // Остаток через оператор % (так элегантнее!)
    
    if (curtrentBoxes > 0) {
      print('Берем коробки по $box: $curtrentBoxes шт. Осталось: $packaging');
    }
  }

  print('Минимальное количество коробок: $allBoxes');
}