void main() {
  String word1 = "heart";
  String word2 = "earth";

  if (areAnagrams(word1, word2)) {
    print('$word1 and $word2 is Anagram.');
  } else {
    print('$word1 and $word2 is not Anagram.');
  }
}

bool areAnagrams(String str1, String str2) {
  str1 = str1.replaceAll(' ', '').toLowerCase();
  str2 = str2.replaceAll(' ', '').toLowerCase();

  if (str1.length != str2.length) {
    return false;
  }

  Map<String, int> charCount = {};

  for (int i = 0; i < str1.length; i++) {
    charCount.update(str1[i], (count) => count + 1, ifAbsent: () => 1);
    charCount.update(str2[i], (count) => count - 1, ifAbsent: () => -1);
  }

  return charCount.values.every((count) => count == 0);
}