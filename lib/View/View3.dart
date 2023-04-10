import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rozpetal/Components/RoutesNmae.dart';

import '../Components/Buttons.dart';
import '../Components/TextFormField.dart';
import '../Components/appbar.dart';
import '../Components/progressIndicator.dart';
import '../const/Colors.dart';

class View3 extends StatefulWidget {
  const View3({Key? key}) : super(key: key);

  @override
  State<View3> createState() => _View3State();
}

class _View3State extends State<View3> {
  bool ischecked = false;
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
                RoundedLinearProgressIndicator(value: 0.75),
                SizedBox(
                  height: height * 0.01,
                ),
                const Text(
                  'معلومات الدفع الخاصة بك في امان معنا',
                ),
                SizedBox(
                  height: height * 0.01,
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
                SizedBox(
                  height: height * 0.02,
                ),
                ConstTextFormField(
                  hint: '1234-5678-9012-3456',
                  label: 'رقم البطاقة',
                  icon: Icon(
                    Icons.credit_card,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ConstTextFormField(
                        hint: '23/09',
                        label: 'البريد الألكتروني',
                        icon: Icon(
                          Icons.email_outlined,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Expanded(
                      child: ConstTextFormField(
                        hint: 'Noureldin.ab98@gmail.com',
                        label: '123',
                        icon: Icon(
                          CupertinoIcons.pen,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                ConstTextFormField(
                  hint: 'نور الدين',
                  label: 'الأسم علي البطاقة',
                  icon: CircleAvatar(
                      backgroundColor: primaryColor,
                      radius: 15,
                      child: const Center(
                          child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ))),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'عنوان الدفع نفس عنوان الشحن',
                      style: TextStyle(color: primaryColor),
                    ),
                    Checkbox(
                        activeColor: primaryColor,
                        checkColor: primaryColor,
                        value: ischecked,
                        onChanged: (bool? value) {
                          setState(() {
                            ischecked = value!;
                          });
                        }),
                  ],
                ),
                Divider(
                  color: primaryColor,
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
                  height: height * 0.06,
                ),
                RoundedButton2(onPressed: () {}),
                SizedBox(
                  height: height * 0.02,
                ),
                RoundedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.view4);
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
