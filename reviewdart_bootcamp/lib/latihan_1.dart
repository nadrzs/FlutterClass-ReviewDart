void main() {
  print(checkPalindrome("Anna"));
  print(checkPalindrome("Hacktive8"));
}

bool checkPalindrome(String text) {
	text = text.toLowerCase();
  
  return text == text.split("").reversed.join().toLowerCase();
}
