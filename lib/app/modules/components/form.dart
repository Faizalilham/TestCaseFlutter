import 'package:ads_challenge/app/modules/login/controllers/login_controller.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';


class FormInput extends StatelessWidget {
  String name;
  String hint;
  bool isPassword;
  LoginController loginController;
  TextEditingController controller;

  FormInput(
      {Key? key,
      required this.name,
      required this.hint,
      required this.isPassword,
      required this.controller,
      required this.loginController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(name,
              style: const TextStyle(fontSize: 16, color: blackColor)),
        ),
        const SizedBox(height: 5),
        TextFormField(
          key: key,
          style: const TextStyle(color: semiGreyColor),
          controller: controller,
          obscureText: isPassword ? loginController.isPasswordVisible.value : false,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Kolom tidak boleh kosong';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Color(0XFF6A6A6A)),
            fillColor: semiWhiteColor,
            filled: true,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            suffixIcon: !isPassword
                ? InkWell(
                    onTap: () {
                      controller.clear();
                    },
                    child: const Icon(
                      Icons.clear,
                      color: semiGreyColor,
                    ))
                : InkWell(
                    onTap: () {
                      loginController.isPasswordVisible.value =
                          !loginController.isPasswordVisible.value;
                    },
                    child: Icon(
                      loginController.isPasswordVisible.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: semiGreyColor,
                    )),
          ),
        ),
      ],
    );
  }
}
