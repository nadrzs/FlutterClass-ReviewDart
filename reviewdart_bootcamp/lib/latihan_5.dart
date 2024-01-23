void main() {
  double fahrenheit = 96.8;
  double celsius = fahrenheitToCelsius(fahrenheit);
  
  print('$fahrenheit Fahrenheit is $celsius Celsius');
}

double fahrenheitToCelsius(double fahrenheit) {
 return (fahrenheit - 32) * 5 / 9;
}