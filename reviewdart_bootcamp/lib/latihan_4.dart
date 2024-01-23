void main() {
  String input = "I loVe coding!";
  String output = passwordGenerator(input);

  print('Input: $input');
  print('Output: $output');
}

String passwordGenerator(String input) {
  StringBuffer result = StringBuffer();

  for (int i = 0; i < input.length; i++) {
    String currentChar = input[i];

    if (currentChar.toLowerCase() != currentChar.toUpperCase()) {
      String encryptedChar = String.fromCharCode(currentChar.codeUnitAt(0) + 2);
      if (currentChar == currentChar.toUpperCase()) {
        encryptedChar = encryptedChar.toLowerCase();
      } else {
        encryptedChar = encryptedChar.toUpperCase();
      }
      result.write(encryptedChar);
    } else {
      result.write('_');
    }
  }

  return result.toString();
}