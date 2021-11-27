import 'package:flutter/material.dart';
import 'package:ungseviceuber/utility/my_constant.dart';

class ShowText extends StatelessWidget {
  final String data;
  final TextStyle? textStyle;
  const ShowText({Key? key, required this.data, this.textStyle }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data, style: textStyle ?? MyConstant().h3Style(),);
  }
}
