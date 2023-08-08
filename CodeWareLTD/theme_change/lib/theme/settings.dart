import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_change/theme/theme_manager.dart';

class SetingsPage extends StatefulWidget {
  SetingsPage({Key? key}) : super(key: key);

  @override
  State<SetingsPage> createState() => _SetingsPageState();
}

//ThemeManager _themeManager = ThemeManager();

class _SetingsPageState extends State<SetingsPage> {
  // @override
  // void dispose() {
  //   _themeManager.removeListener(themeListener);
  //   super.dispose();
  // }
  //
  // @override
  // void initState() {
  //   _themeManager.addListener(themeListener);
  //   super.initState();
  // }
  //
  // themeListener() {
  //   if (mounted) {
  //     setState(() {});
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeManager>(context);
    return Card(
      child: ListTile(
          title: Text('Dark Modde'),
          leading: provider.themeMode == ThemeMode.dark
              ? Icon(Icons.dark_mode)
              : Icon(Icons.light_mode),
          trailing: Switch(
              value: context.read<ThemeManager>().themeMode == ThemeMode.dark,
              onChanged: (newValue) {
                context.read<ThemeManager>().toggleTheme(newValue);
                print(newValue);
              })),
    );
  }
}
