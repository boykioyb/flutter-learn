
String s1 = 'How are you?';
String s2 = ' I\'m fire';
String s3 = '$s1 - $s2';

List<int> numbers = [1, 2, 3, 4, 5, 6, 3];

List<String> stringNumbers = numbers.map((num) {
  return 'value = $num';
}).toList();