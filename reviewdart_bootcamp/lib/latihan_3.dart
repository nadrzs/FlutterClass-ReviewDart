bool isPrime(int number) {
  //Jika angka < 2, maka bukan angka prima
  if (number < 2) {
    return false;
  }
  
  // Jika angka dapat dibagi 2 maka bukan angka prima
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  
  // Jika benar, maka output bilangan prima
  return true;
}

void main() {
  int num = 4;
  
  if (isPrime(num)) {
    print('$num is a prime number.');
  } 
  else {
    print('$num is not a prime number.');
  }
}