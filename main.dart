import 'dart:math';

void main() {
  // Q1.
  int limit = 10;
  int a = 0, b = 1;

  print("Fibonacci sequence:");
  for (int i = 0; a <= limit; i++) {
    print(a);
    int next = a + b;
    a = b;
    b = next;
  }

  // Q2.
  List<int> nums = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  int max = nums[0];
  for (int n in nums) {
    if (n > max) {
      max = n;
    }
  }
  print("Largest element: $max");

  // Q3.
  int number = 5;
  for (int i = 1; i <= 10; i++) {
    print("$number x $i = ${number * i}");
  }

  // Q4.
  String word = "radar";
  String reversed = word.split('').reversed.join();

  if (word == reversed) {
    print("'$word' is a palindrome.");
  } else {
    print("'$word' is not a palindrome.");
  }

  // Q5.
  for (int i = 1; i <= 4; i++) {
    print('$i' * i);
  }

  // Q6.
  List<int> list = [1, 3, 5, 7, 9, 2, 6];
  print("Numbers > 5:");
  for (int num in list) {
    if (num > 5) {
      print(num);
    }
  }

  // Q7.
  String text = "This is me sufyan";
  int vowels = 0;
  for (int i = 0; i < text.length; i++) {
    if ("aeiouAEIOU".contains(text[i])) {
      vowels++;
    }
  }
  print("Vowel count: $vowels");

  // Q8.
  int value = 123456;
  int count = 0;
  while (value != 0) {
    value ~/= 10;
    count++;
  }
  print("Q8 Number of digits: $count");

  // Q9. Generate random password (no dart:math used here)

  String chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  String password = '';
  int passwordLength = 8;

  Random random = Random();
  int i = 0;

  while (i < passwordLength) {
    int index = random.nextInt(chars.length);
    password += chars[index];
    i++;
  }

  print("Random Password: $password");

  // Q10.
  String input = "";
  if (input.isEmpty) {
    print("The string is empty.");
  } else {
    print("The string is not empty.");
  }
}
