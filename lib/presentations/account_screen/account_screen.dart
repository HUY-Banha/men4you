import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:men4you/bloc/bloc_auth/auth_bloc.dart';
import 'package:men4you/presentations/auth/signin_screen.dart';
import 'package:men4you/widget/dark_custom_widget.dart';
import 'package:men4you/widget/nav_bar.dart';
import 'package:men4you/widget/profile_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Getting the user from the FirebaseAuth Instance
    final user = FirebaseAuth.instance.currentUser!;
    int _value = 1;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(currentIdex: 3),
      body: SafeArea(
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is UnAuthenticated) {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const SignInScreen()),
                (route) => false,
              );
            }
          },
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomProfileWidget(user: user),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'setting'.tr,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              DarkModeWidget(
                function: (value) {
                  Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
                  );
                },
                value: Get.isDarkMode,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(flex: 1, child: Text('lang'.tr)),
                    Expanded(
                      flex: 1,
                      child: DropdownButton(
                        isExpanded: true,
                        alignment: Alignment.center,
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            onTap: () =>
                                Get.updateLocale(const Locale('en', 'US')),
                            child: Text('english'.tr),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text('khmer'.tr),
                            onTap: () => Get.updateLocale(const Locale('KH')),
                            value: 2,
                          ),
                        ],
                        onChanged: (int? value) {},
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: ElevatedButton(
                    child: const Text('Sign Out'),
                    onPressed: () {
                      context.read<AuthBloc>().add(SignOutRequested());
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
