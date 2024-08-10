import 'package:flutter/material.dart';

import '../../../widget/driver/auth/login/custom_button.dart';
import '../../../widget/driver/auth/login/custom_container_login.dart';
import '../../../widget/driver/auth/login/custom_text_form_field.dart';

class ResetPasswordDriver extends StatelessWidget {
  const ResetPasswordDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEEF9E4),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/forgetpassDriver.png"),
                Image.asset("assets/images/logo.png"),
                const SizedBox(
                  height: 20.0,
                ),
                const CustomContainerLogin(
                    child: Column(
                      children: [
                        Text("ادخل كلمة المرور الجديدة"),
                        SizedBox(
                          height: 2.0,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Form(
                            child: Column(
                              children: [
                                CustomTextFormFieldDriver(
                                  hintText: 'أدخل كلمة المرور الجديدة',
                                  icon: Icon(Icons.lock),
                                  isPass: true,
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                CustomTextFormFieldDriver(
                                  hintText: 'تأكيد كلمة المرور ',
                                  icon: Icon(Icons.lock),
                                  isPass: true,
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 24.0,
                ),
                CustomButton(
                  onPressed: () {},
                  text: "تاكيد",
                )
              ],
            ),
          ),
        ));
  }
}
