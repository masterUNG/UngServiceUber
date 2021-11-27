import 'package:flutter/material.dart';
import 'package:ungseviceuber/utility/my_constant.dart';
import 'package:ungseviceuber/widgets/show_text.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String? typeUser;

  Container newName() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.fingerprint,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'Name :'),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container newEmail() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.email_outlined,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'Email :'),
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
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.password_outlined,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'Password :'),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyConstant.primary,
        title: const Text('Create New Account'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                newName(),
                newTitle('Type User :'),
                radioUser(),
                radioDriver(),
                newEmail(),
                newPassword(),
                newTitle('Your Location :'),
                Container(
                  color: Colors.grey,
                  width: 300,
                  height: 200,
                  child: Text('Map'),
                ),
                buttonCreateAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buttonCreateAccount() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Create New Account'),
      ),
    );
  }

  Container radioUser() {
    return Container(
      width: 250,
      child: RadioListTile(
        subtitle: const ShowText(data: 'บุคลชราภาพ'),
        title: const ShowText(data: 'User'),
        value: 'user',
        groupValue: typeUser,
        onChanged: (value) {
          setState(() {
            typeUser = value.toString();
          });
        },
      ),
    );
  }

  Widget radioDriver() {
    return Container(
      width: 250,
      child: RadioListTile(
        subtitle: ShowText(data: 'คนขับรถ'),
        title: ShowText(data: 'Driver'),
        value: 'driver',
        groupValue: typeUser,
        onChanged: (value) {
          setState(() {
            typeUser = value.toString();
          });
        },
      ),
    );
  }

  Row newTitle(String title) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ShowText(
            data: title,
            textStyle: MyConstant().h2Style(),
          ),
        ),
      ],
    );
  }
}
