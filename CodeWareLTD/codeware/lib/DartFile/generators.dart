
import 'dart:io';

Iterable<int> countIterable(int max) sync*{
  for(var i = 0; max>i; i++){
    yield i;
    sleep(Duration(seconds: 1));
  }
}

Stream<int> countStrean(max)async*{
for(var i = 0; i<max; i++){
  yield i;
  sleep(Duration(seconds: 1));
}
}

void main(){
  var number = countIterable(5);
 // countIterable(10).forEach((element) {print(element);}); // you can print like this
  print('start for Iterable');
  number.forEach((element) {
    print('This is for Iterable $element');
  });
  print('end for Iterable');

var num = countStrean(5);
print('start for Stream');
num.forEach((element) {
  print('this is for Stream $element');
});
print('end for Stream');




}