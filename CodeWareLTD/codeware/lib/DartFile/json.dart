void main() { // belong any value ?List<String> args
  Map<String, dynamic> json1 = {
    "name": "John Smith",
    "email": "",
    "age": 25,
    "address": {
      "street": "21 2nd Street",
      "city": "New York",
      "state": "NY",
      "postalCode": "10021-3100"
    },
    "phoneNumbers": [
      {"type": "home", "number": "123"},
      {"type": "fax", "number": "234"}
    ],
    "favorites": [
      {"type": "color", "name": "blue"},
      ["Mango", "Apple", "Banana"],
      {"type": "language", "name": "Dart"}
    ]
  };

//set email
  json1['email'] = 'someoneatexample.com';

  print("*********************************************************************");
//get email
  print(json1['email']);
// ****************************************************
//get city
  print(json1['address']['city']);
  print("*********************************************************************");

//get home phone number
  print("My checked value ${json1['phoneNumbers'][0]['number']}");

  print("*********************************************************************");

// //get home phone number using where
  print("Home checked \t${json1['phoneNumbers']!
      .where((item) => item['type'] == 'home')
      .first['number']}");
// what is the where method and why not suggess
  print("Fax checked \t${json1['phoneNumbers']!
      .where((item)=>item['type'] == 'fax')
      .first['number']}");

  print("*********************************************************************");

// //add new phone number
  json1['phoneNumbers']!.add({'type': 'office', 'number': '646 555-4567'});
  //json1['phoneNumbers']![0]['number'] = "646";


  // json1['phoneNumbers']!.addWhere((a)=>a['type'] == 'fax').update({'number:1122'});
  // how to update specipic value
  print("After adding number ${json1['phoneNumbers'][2]['number']}");

// //remove fax number
////// why not suggess removeAt()
  print("Before remove number ${json1['phoneNumbers']}");
  json1['phoneNumbers'].removeAt(0);
  print("After remove number ${json1['phoneNumbers']}");
// //remove fax number using where
  json1['phoneNumbers'].removeWhere((item) => item['type'] == 'fax');
  print("After removeWhere() ${json1['phoneNumbers']}");

  print("*********************************************************************");

  //print favorite color using where
  print(json1['favorites']!
      .where((item) => item['type'] == 'color')
      .first['name']);


  // print(json1['favorites']!
  //     .where((item) => item['type'] == 'language')
  //     .last['name']);

  //why give me error


  // print("Test value  ${json1['favorites']!
  //     .where((a) => a['type'] == 'language')
  //     .first['name']}");

  // loop through items in favorites
  json1['favorites']!.forEach((item) {
    if (item is Map) {
      print(item['name']);
    } else if (item is List) {
      item.forEach((i) {
        print(i);
      });
    }
  });
  // forEachMethod(())

  List<Favorite> favorites = [];
  json1['favorites']!.forEach((item) {
    if (item is Map) {
      favorites.add(Favorite(item['type'], item['name']));
    } else if (item is List) {
      item.forEach((i) {
        favorites.add(Favorite('unknown', i));
      });
    }
  });

  favorites.forEach((item) {
    print('${item.type} : ${item.name}');
  });















}

class Favorite {
  String type;
  String name;

  Favorite(this.type, this.name);
}
