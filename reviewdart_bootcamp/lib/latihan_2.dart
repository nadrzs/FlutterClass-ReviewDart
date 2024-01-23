void main() {
  print(checkSum([10, 90, 72, 61, 123]));
}

int checkSum(List <int> arr){
  int sum = 0;
  int temp = 0;
  
  for(int i = 0; i < arr.length - 2; i++){
    temp = arr[i] + arr[i + 1] + arr[i + 2];
    
    sum = temp > sum ? temp : sum;
  }
 
  return sum;
}
