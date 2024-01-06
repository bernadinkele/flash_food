import 'package:flash_food/Core/Routes/routes.dart';
import 'package:flash_food/Core/Routes/routes_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.main,
      onGenerateRoute: Routes.onGenerateRoute,
      theme: ThemeData(canvasColor: Colors.white),
    );
  }
}
