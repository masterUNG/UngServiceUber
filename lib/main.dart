import 'package:flutter/material.dart';
import 'package:ungseviceuber/states/authen.dart';
import 'package:ungseviceuber/states/create_account.dart';
import 'package:ungseviceuber/states/service_driver.dart';
import 'package:ungseviceuber/states/service_user.dart';

Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => const Authen(),
  '/createAccount': (BuildContext context) => const CreateAccount(),
  '/serviceUser': (BuildContext context) => const ServiceUser(),
  '/serviceDriver': (BuildContext context) => const ServiceDriver(),
};

String firstPage = '/authen';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: firstPage,
    );
  }
}
