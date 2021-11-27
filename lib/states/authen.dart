import 'package:flutter/material.dart';
import 'package:ungseviceuber/utility/my_constant.dart';
import 'package:ungseviceuber/widgets/show_image.dart';
import 'package:ungseviceuber/widgets/show_text.dart';


class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
        behavior: HitTestBehavior.opaque,
        child: Container(
          decoration: MyConstant().gradienBox(),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  newImage(),
                  newAppName(),
                  newUser(),
                  newPassword(),
                  newLogin(),
                  newCreateAccount()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row newCreateAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ShowText(data: 'Non Account ? '),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/createAccount'),
          child: const Text('Create Account'),
        ),
      ],
    );
  }

  Container newLogin() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () {},
        child: Text('Login'),
      ),
    );
  }

  Container newUser() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.perm_identity,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'User :'),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container newPassword() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock_outline,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'Password :'),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  ShowText newAppName() => ShowText(
        data: MyConstant.appName,
        textStyle: MyConstant().h1Style(),
      );

  Container newImage() {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      width: 250,
      child: ShowImage(),
    );
  }
}