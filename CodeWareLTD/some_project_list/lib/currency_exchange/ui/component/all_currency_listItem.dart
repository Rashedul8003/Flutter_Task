import 'package:flutter/material.dart';
import 'package:some_project_list/currency_exchange/model/currency_model.dart';

class AllCurrencyListItem extends StatelessWidget {
  CurrencyModel currencyModel;
  AllCurrencyListItem({Key? key, required this.currencyModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          currencyModel.code.toString(),
          style: TextStyle(fontSize: 18),
        ),
        Text(
          currencyModel.value.toString(),
          style: TextStyle(fontSize: 18),
        ),
      ]),
    );
  }
}
