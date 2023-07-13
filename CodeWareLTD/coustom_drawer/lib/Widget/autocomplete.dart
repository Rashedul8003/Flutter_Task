//! Autocomplete

import 'package:flutter/material.dart';

class AutocompleteClass extends StatelessWidget {
  const AutocompleteClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listItems = <String>[
      'java',
      'flutter',
      'angular',
      'php',
      'javaScript',
      'spring',
      'springBoot'
    ];
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return listItems.where((String item) {
                return item.contains(textEditingValue.text.toLowerCase());
              });
            },
            onSelected: (String item) {
              print('The $item was selected');
            },
          ),
        ),
      ),
    );
  }
}
