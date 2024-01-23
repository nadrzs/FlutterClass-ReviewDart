void main() {
 int n = 5;

 List<int> result = fibonacci(n);

 print('The first $n Fibonacci numbers are: $result');
}

List<int> fibonacci(int n) {
 List<int> sequence = [];

 if (n > 0) {
    sequence.add(0);
 }

 if (n > 1) {
    sequence.add(1);
 }

 for (int i = 2; i < n; i++) {
    sequence.add(sequence[i - 1] + sequence[i - 2]);
 }

 return sequence;
}