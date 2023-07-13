import 'package:country_currency_pickers/country.dart';
import 'package:country_currency_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:some_project_list/currency_exchange/model/currency_model.dart';
import 'package:some_project_list/currency_exchange/service/currency_api.dart';
import 'package:some_project_list/currency_exchange/ui/component/all_currency_listItem.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _State();
}

class _State extends State<Home> {
  String selectedCurrency = 'USD';
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
  Widget build(BuildContext context) {
    return Container(
      child: Center(
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
                  selectedCurrency = country?.currencyCode ?? '';
                  print(selectedCurrency);
                  setState(() {});
                },
              ),
            ),
            const Text(
              "All Currency",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
                child: FutureBuilder(
              future: ApiService().getLeatest(selectedCurrency),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<CurrencyModel> currencyModelList = snapshot.data ?? [];
                  return ListView.builder(
                    itemBuilder: (contex, index) {
                      return AllCurrencyListItem(
                          currencyModel: currencyModelList[index]);
                    },
                    itemCount: currencyModelList.length,
                  );
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error occured'),
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
