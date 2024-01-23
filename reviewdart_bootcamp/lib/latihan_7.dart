void main() {
 String text = 'Hello World';
 String reversedText = reverseString(text);
 
 print('Reversed string is: $reversedText');
}

String reverseString(String text) {
 return text.split('').reversed.join('');
}