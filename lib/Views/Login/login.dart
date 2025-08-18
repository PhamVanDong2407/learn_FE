import 'package:fetest/Controllers/Login/login_controller.dart';
import 'package:fetest/Global/app_color.dart';
import 'package:fetest/Utils/device_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final controller = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.main,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// --- PHẦN HEADER ---
                    Text(
                      'Mua sắm thông minh hơn',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColor.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Đăng nhập để nhận ưu đãi độc quyền và trải nghiệm mua sắm dễ dàng hơn',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black,
                      ),
                    ),
                    const SizedBox(height: 32),

                    /// --- PHẦN FORM ---
                    TextFormField(
                      controller: controller.usermame,
                      style: TextStyle(
                        fontSize: DeviceHelper.getFontSize(14),
                        fontWeight: FontWeight.w500,
                        color: AppColor.text1,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Nhập email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email không được để trống!';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),

                    Obx(
                      () => TextFormField(
                        controller: controller.password,
                        obscureText: controller.isPasswordHidden.value,
                        style: TextStyle(
                          fontSize: DeviceHelper.getFontSize(14),
                          fontWeight: FontWeight.w500,
                          color: AppColor.text1,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Mật khẩu',
                          hintText: 'Nhập mật khẩu',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.isPasswordHidden.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: AppColor.primary,
                            ),
                            onPressed: () {
                              controller.isPasswordHidden.toggle();
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Mật khẩu không được để trống!';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 12),

                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          // Quên mật khẩu
                        },
                        child: Text(
                          'Quên mật khẩu?',
                          style: TextStyle(
                            color: AppColor.primary,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),

                    /// --- PHẦN NÚT HÀNH ĐỘNG ---
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // controller.login();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.primary,
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Đăng nhập',
                              style: TextStyle(
                                fontSize: DeviceHelper.getFontSize(16),
                                fontWeight: FontWeight.w500,
                                color: AppColor.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),

                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {
                              // Get.to(() => RegisterPage());
                            },
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              side: BorderSide(color: AppColor.primary),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Tạo tài khoản',
                              style: TextStyle(
                                fontSize: DeviceHelper.getFontSize(16),
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        Text(
                          'Hoặc',
                          style: TextStyle(
                            fontSize: DeviceHelper.getFontSize(16),
                            fontWeight: FontWeight.w500,
                            color: AppColor.black,
                          ),
                        ),
                        const SizedBox(height: 20),

                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            onPressed: () {
                              // controller.loginWithGoogle();
                            },
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              side: const BorderSide(
                                color: Color.fromARGB(255, 68, 136, 225),
                              ),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            icon: SvgPicture.asset(
                              'assets/icons/google.svg',
                              width: 20,
                              height: 20,
                            ),
                            label: Text(
                              'Đăng nhập bằng Google',
                              style: TextStyle(
                                fontSize: DeviceHelper.getFontSize(16),
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 68, 136, 225),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
