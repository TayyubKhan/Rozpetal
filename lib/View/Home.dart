import 'package:flutter/material.dart';
import 'package:rozpetal/Components/Buttons.dart';
import 'package:rozpetal/Components/TextFormField.dart';
import 'package:rozpetal/Components/progressIndicator.dart';
import 'package:rozpetal/const/Colors.dart';

import '../Components/RoutesNmae.dart';
import '../Components/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                RoundedLinearProgressIndicator(value: 0.25),
                SizedBox(
                  height: height * 0.01,
                ),
                const Text(
                  'ادفع بطريقة اسرع عن طريق استخدام ابل باي',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text(
                  'او يمكنك الدفع عن طريق طرق الدفع التقليدي يمكنك ادخال بياناتك بالأسفل',
                ),
                ConstTextFormField(
                  hint: 'نور الدين',
                  label: 'الأسم',
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
                ConstTextFormField(
                  hint: 'Noureldin.ab98@gmail.com',
                  label: 'البريد الألكتروني',
                  icon: Icon(
                    Icons.email_outlined,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                ConstTextFormField(
                  hint: '+966 12-345-6789',
                  label: 'الهاتف',
                  icon: Icon(
                    Icons.phone_android_outlined,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                ConstTextFormField(
                  hint: 'الرياض حي الشفا',
                  label: 'العنوان',
                  icon: Icon(
                    Icons.location_on,
                    color: primaryColor,
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
                    Navigator.pushNamed(context, RoutesName.view2);
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
