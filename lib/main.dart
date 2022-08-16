import 'package:error_page/error_page.dart';
import 'package:error_page/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      builder: (BuildContext context, Widget? widget) {
       /* ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return ErrorPage(errorDetails: errorDetails);
        };*/
        return widget!;
      },
    );
  }
}
