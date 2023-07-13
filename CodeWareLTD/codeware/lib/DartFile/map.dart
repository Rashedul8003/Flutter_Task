import 'dart:math';
bool topVariable = true;
void main() {
/*
 In Dart Map, each key must be unique, but the same value can occur
  multiple times.  The Map can be declared by using curly braces {} ,
  and each key-value pair is separated by the commas(,).
  The value of the key can be accessed by using a square bracket([]).
*/

///////////////////Dart Map can be defined in two methods./////////////////
//     Using Map Literal
//  var map_name = {key1:value1, key2:value2 [.......,key_n: value_n]}
//     Using Map Constructor
// var map_name = new map()

  var mapLitaral = {'name': 'Rashedul', 'age': 20, 'company ': 'codeware'};
  mapLitaral['name'] = 'rakib';
  print(mapLitaral);
  mapLitaral.addAll({'county':'Bangladesh','city':'Dhaka'});
  print("after adding\t ${mapLitaral}");


  var mapContrctor = new Map();
  mapContrctor['a']='mapConstractor';
  mapContrctor['b']= 'Map';
  print(mapContrctor);
// property ##  isEmpty,isNotEmpty(isEmpty biporid),keys(a, b),length(2),
// values(mapConstractor, Map)
print(mapContrctor.isEmpty);
 var ss =  new A();
 print( ss.sum(10, 10));
  // We have learned the Dart Function, which is defined by using a
  // user-define name. Dart also provides the facility to specify a
  // nameless function or function without a name. This type of function is
  // known as an anonymous function, lambda, or closure.

  var list = ["James","Patrick","Mathew","Tom"];
  list.forEach((element) {
    print("${list.indexOf(element)} \t $element");
  });



  // Lexical Scope
  // As we have discussed in the Dart introduction, it is a lexical scope language
  // which means the variable's scope is decided at compile-time. The scope of the'
  // ' variable is determined when code is compiled. The variable behaves different'
  // 'ly if they defined in the different curly braces. Let's understand the
  // following example.
























}













 class A{
  int sum(int a,int b){
    int  sum  = a+b;
    return sum;
  }
}