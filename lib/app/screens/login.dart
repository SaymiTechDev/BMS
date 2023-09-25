import 'package:bms/app/controller/login_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class Login extends GetView<LoginController> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final form = controller.loginForm;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.gradientBackGround),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 1.25,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600,
                      spreadRadius: 1,
                      blurRadius: 15)
                ]),
            child: ReactiveForm(
              formGroup: form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 35),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(90),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade600,
                              spreadRadius: 1,
                              blurRadius: 15)
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 45.0,
                        backgroundColor: AppColors.white,
                        child: Icon(
                          Icons.person,
                          size: 45,
                          color: AppColors.blue,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Material(
                      elevation: 2.0,
                      shadowColor: Colors.grey.shade600,
                      borderRadius: BorderRadius.circular(20.0),
                      child: ReactiveTextField(
                        formControlName: 'user',
                        cursorColor: AppColors.blue,
                        validationMessages: {
                          'required': (error) => 'The user must not be empty'
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: AppColors.blue,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                                width: 2,
                                color: AppColors.blue,
                                strokeAlign: 10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                                width: 2,
                                color: AppColors.blue,
                                strokeAlign: 10),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[500]),
                          hintText: "Username",
                          fillColor: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Material(
                      elevation: 2.0,
                      shadowColor: Colors.grey.shade600,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Obx(() {
                        return ReactiveTextField(
                          formControlName: 'password',
                          cursorColor: AppColors.blue,
                          obscureText: controller.isObscure.value,
                          validationMessages: {
                            'required': (error) =>
                                'The password must not be empty'
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: AppColors.blue,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                controller.isObscure.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: AppColors.blue,
                              ),
                              onPressed: () {
                                controller
                                    .isObscure(!controller.isObscure.value);
                              },
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: AppColors.blue,
                                  strokeAlign: 10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: AppColors.blue,
                                  strokeAlign: 10),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: "Password",
                            fillColor: Colors.white70,
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: ElevatedButton(
                      onPressed: () {
                        controller.logIn();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.blue,
                          textStyle: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      child: Text('Login',
                          style: TextStyle(color: AppColors.white)),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Forgot password?',
                          style: TextStyle(color: AppColors.blue)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
