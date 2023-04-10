import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rozpetal/Components/RoutesNmae.dart';

import '../Components/Buttons.dart';
import '../Components/TextFormField.dart';
import '../Components/appbar.dart';
import '../Components/progressIndicator.dart';
import '../const/Colors.dart';

enum arabic { a, b, c }

class View2 extends StatefulWidget {
  const View2({Key? key}) : super(key: key);

  @override
  State<View2> createState() => _View2State();
}

arabic _selectedvalues = arabic.a;

class _View2State extends State<View2> {
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 1;
    double height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      appBar: const AppBarr(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                RoundedLinearProgressIndicator(value: 0.5),
                SizedBox(
                  height: height * 0.01,
                ),
                const Text(
                  'اضف البطاقة الخاصة بك',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.lock,
                      color: primaryColor,
                    ),
                    const Text(
                      'معلومات الدفع الخاصة بك في امان معنا',
                    ),
                  ],
                ),
                Column(
                  children: [
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: RadioListTile<arabic>(
                          activeColor: primaryColor,
                          title: Text('الدفع عند الأستلام'),
                          value: arabic.a,
                          groupValue: _selectedvalues,
                          onChanged: (value) {
                            setState(() {
                              _selectedvalues = value!;
                            });
                          }),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: RadioListTile<arabic>(
                          title: Text('الدفع اونلاين'),
                          value: arabic.b,
                          groupValue: _selectedvalues,
                          onChanged: (value) {
                            setState(() {
                              _selectedvalues = value!;
                              print(_selectedvalues);
                            });
                          }),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: RadioListTile<arabic>(
                          title: Text('استخدام النقاط'),
                          value: arabic.c,
                          groupValue: _selectedvalues,
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              _selectedvalues = value!;
                            });
                          }),
                    ),
                  ],
                ),
                Divider(
                  color: primaryColor,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    focusNode: focusNode,
                    onTapOutside: (value) {
                      focusNode.unfocus();
                    },
                    decoration: InputDecoration(
                        hintText: 'اريد ان استلم هذه الباقة من المتجر بنفسي',
                        labelText: 'ملاحظات',
                        labelStyle: TextStyle(color: primaryColor),
                        hintTextDirection: TextDirection.rtl,
                        focusColor: primaryColor,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(15)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                ConstTextFormField(
                  hint: '*********',
                  label: 'كود الخصم',
                  icon: Icon(
                    CupertinoIcons.money_dollar_circle_fill,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: width * 0.19,
                    height: height * 0.04,
                    decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: primaryColor),
                          top: BorderSide(color: primaryColor),
                          left: BorderSide(color: primaryColor),
                          right: BorderSide(color: primaryColor),
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(child: Text('تأكيد الخصم')),
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                RoundedButton2(onPressed: () {}),
                SizedBox(
                  height: height * 0.02,
                ),
                RoundedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.view3);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
