import 'dart:io';
import 'dart:math';

void main() {
//  1- Напишите код с циклом while, который выведет на экран список языков с нумерацией.
//    ['go', ‘java', ‘dart’, ‘sql’,  'php', 'python', 'javascript', 'ruby'];
// пример:
//   0 go
//   1 java
//   2 php
//   3 python
//   4 javascript
//   5 ruby
  int index = 0;

  List<String> languages = [
    'go',
    'java',
    'dart',
    'sql',
    'php',
    'python',
    'javascript',
    'ruby'
  ];
  while (index < languages.length) {
    print("$index ${languages[index]}");
    index++;
  }

  //  2.  c помощью цикла do while нужно перебрать все языки в списке, и когда код доходит до “python”,
  //цикл должен быть прерван.['go', ‘java', ‘dart’, ‘sql’,  'php', 'python', 'javascript', 'ruby'];
  index = 0;
  do {
    print("$index ${languages[index]}");
    index++;
  } while (index < languages.length && languages[index - 1] != 'python');

  // 3. У вас есть список имён. <используйте цикл do while>:
  //    names = ('Максат','Лязат','Данияр','Айбек','Атай','Салават','Адинай','Жоомарт','Алымбек','Эрмек','Дастан','Бекмамат','Аслан',)
  //    Выведите на экран всё имена которые лежат на чётных числах.

  List<String> names = [
    'Максат',
    'Лязат',
    'Данияр',
    'Айбек',
    'Атай',
    'Салават',
    'Адинай',
    'Жоомарт',
    'Алымбек',
    'Эрмек',
    'Дастан',
    'Бекмамат',
    'Аслан'
  ];

  index = 0;
  do {
    if (index.isEven) {
      print(names[index]);
    }
    index++;
  } while (index < names.length);

// 4. У вас всё тот же список имён. <используйте цикл  while>:
//     names = ('Максат','Лязат','Данияр','Айбек','Атай','Салават','Адинай','Жоомарт','Алымбек','Эрмек','Дастан','Бекмамат','Аслан',)
//      Выведите каждое 2 имя.
  index = 1;
  while (index < names.length) {
    print(names[index]);
    index += 2;
  }

//    3.  список: [Мавпродош, Лорнектиф, Древерол, Фиригарпиг, Клодобродыч.]
// Ваша задача такова: повторите код, который будет спрашивать у пользователя его ник и
// либо пускать  (выведется сообщение «Ты – свой. Приветствую, любезный {НИК_ПОСЕТИТЕЛЯ}!»),
// либо нет (в этом случае будет такой текст: «Тут ничего нет. Еще есть вопросы?»).

  List<String> userName = [
    "aktan",
    "Лорнектиф",
    "Древерол",
    "Фиригарпиг",
    "Клодобродыч"
  ];

  do {
    print("Введите свой ник:");
    String inputUser = stdin.readLineSync() ?? '';
    print('input $inputUser');
    if (userName.contains(inputUser)) {
      print("Ты – свой. Приветствую, любезный $inputUser!");
      break;
    } else {
      print("Тут ничего нет. Еще есть вопросы?");
    }
  } while (true);

//  4. Сформировать из введенного числа обратное по порядку входящих в него цифр и вывести на экран. Например, если введено число 3486, то надо вывести число 6843.
  print("Enter a number:");
  int enteredNumber = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  int createReverseNumber(int number) {
    int reverseNumber = 0;
    while (number != 0) {
      reverseNumber = reverseNumber * 10 + number % 10;
      number ~/= 10;
    }
    return reverseNumber;
  }

  int reversedNumber = createReverseNumber(enteredNumber);
  print("Reversed number: $reversedNumber");

//  5. Вам дан массив чисел [1, 2, 3, 4, 5] и вам нужно удвоить каждое число в этом массиве. Должно запринтить [2, 4, 6, 8, 10] «используйте map()»
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> doubledNumbers = numbers.map((number) => number * 2).toList();
  print(doubledNumbers);

  // 6. У вас есть массив ['apple', 'banana', 'orange', ‘strawberry’] создайте циклк Map() и выведите длину каждого слово в массиве. Должно вывести  [5, 6, 6, 10]
  List<String> fruits = ['apple', 'banana', 'orange', 'strawberry'];
  List<int> lengths = fruits.map((fruit) => fruit.length).toList();
  print(lengths);

// 7. Напишите программу, которая генерирует случайные числа от 1 до 10 до тех пор, пока не будет сгенерировано число, равное 7
  int generatedNumber;
  int attempts = 0;

  do {
    generatedNumber = Random().nextInt(10) + 1;
    print("Сгенерированное число: $generatedNumber");
    attempts++;
  } while (generatedNumber != 7);
  print("Число 7 было сгенерировано после $attempts попыток.");
}
