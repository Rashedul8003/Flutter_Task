import 'package:country_currency_pickers/country.dart';
import 'package:country_currency_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:some_project_list/currency_exchange/service/currency_api.dart';

class Exchange extends StatefulWidget {
  const Exchange({Key? key}) : super(key: key);

  @override
  State<Exchange> createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {
  bool isVisible = false;
  ApiService apiService = ApiService();
  final _textEditingController = TextEditingController();
  String selectedBaseCurrency = 'USD';
  String selectedTargetCurrency = 'BDT';
  String totalValue = '';
  Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 8.0,
            ),
            Container(

                //color: Colors.redAccent,
                width: MediaQuery.of(context).size.width / 1.4,
                // constraints:
                //     BoxConstraints(maxWidth: MediaQuery.of(context).size.width-60),
                child: Text(
                  "${country.currencyName}",
                  overflow: TextOverflow.ellipsis,
                )),
          ],
        ),
      );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Base Currency',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: CountryPickerDropdown(
              initialValue: 'us',
              itemBuilder: _buildDropdownItem,
              onValuePicked: (Country? country) {
                selectedBaseCurrency = country?.currencyCode ?? '';
                print(selectedBaseCurrency);
                setState(() {});
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              controller: _textEditingController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15))),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Terget Currency',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: CountryPickerDropdown(
              initialValue: 'bd',
              itemBuilder: _buildDropdownItem,
              onValuePicked: (Country? country) {
                selectedTargetCurrency = country?.currencyCode ?? '';
                print(selectedTargetCurrency);
                setState(() {
                  isVisible = false;
                  _textEditingController.clear();
                });
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: TextButton(
              onPressed: () async {
                if (_textEditingController.text.isNotEmpty) {
                  await apiService
                      .getTerget(selectedBaseCurrency, selectedTargetCurrency)
                      .then((value) {
                    if (value != null) {
                      isVisible = true;
                      double basValue =
                          double.parse(_textEditingController.text.toString());
                      double terValue = double.parse(value[0].value.toString());
                      double total = basValue * terValue;
                      totalValue = total.toStringAsFixed(2).toString();
                      print(totalValue);
                      setState(() {});
                    }
                  });
                }
                print('TextButton');
              },
              child: Text('Exchange',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          if (isVisible)
            Center(
              child: Text(
                '$selectedTargetCurrency : $totalValue',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
            ),
        ],
      ),
    );
  }
}
