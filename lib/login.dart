import 'package:d_button/d_button.dart';
import 'package:d_input/d_input.dart';
import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app_ui/register.dart';

import 'config/app_assets.dart';
import 'config/app_colors.dart';
import 'config/app_constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final edtEmail = TextEditingController();
  final edtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppAssets.bgAuth,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black54,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Column(
                    children: [
                      Text(
                        AppConstants.appName,
                        style: GoogleFonts.poppins(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          color: Colors.green[900],
                        ),
                      ),
                      Container(
                        height: 5,
                        width: 40,
                        decoration: BoxDecoration(
                          color: AppColors.primary.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    DView.spaceHeight(
                      16,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: Material(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                              child: const Icon(
                                Icons.email,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          DView.spaceWidth(10),
                          Expanded(
                            child: DInput(
                              controller: edtEmail,
                              fillColor: Colors.white70,
                              radius: BorderRadius.circular(10),
                              hint: 'Email',
                              validator: (input) {
                                return input == '' ? "Don't empty" : null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    DView.spaceHeight(
                      16,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: Material(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                              child: const Icon(
                                Icons.key,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          DView.spaceWidth(10),
                          Expanded(
                            child: DInputPassword(
                              controller: edtPassword,
                              fillColor: Colors.white70,
                              radius: BorderRadius.circular(10),
                              hint: 'Password',
                              validator: (input) {
                                return input == '' ? "Don't empty" : null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    DView.spaceHeight(
                      16,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: DButtonFlat(
                              onClick: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const Register();
                                  },
                                ));
                              },
                              padding: const EdgeInsets.all(0),
                              radius: 10,
                              mainColor: Colors.white70,
                              child: const Text(
                                'REG',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          DView.spaceWidth(10),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {}, //=> execute(),
                              style: const ButtonStyle(
                                alignment: Alignment.centerLeft,
                              ),
                              child: const Text(
                                "Login",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    DView.spaceHeight(
                      16,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
