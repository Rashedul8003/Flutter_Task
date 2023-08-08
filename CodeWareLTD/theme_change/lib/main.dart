import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_change/theme/home_page.dart';
import 'package:theme_change/theme/settings.dart';
import 'package:theme_change/theme/theme_constant.dart';
import 'package:theme_change/theme/theme_manager.dart';

// Video link https://www.youtube.com/watch?v=6YuQEVN6j-g
void main() {
  runApp(
    MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => ThemeManager())],
        child: MyApp()),
  );
}

//ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
  void initState() {
    context.read<ThemeManager>().loadThemeModeFromPrefs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeManager>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: provider.themeMode,
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key? key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int _currentIndex = 0;
  List view = [
    HomePage(),
    SetingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme App"),
      ),
      body: view.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "")
        ],
        onTap: (index) {
          _currentIndex = index;
          print(_currentIndex);
          setState(() {});
        },
        currentIndex: _currentIndex,
      ),
    );
  }
}
