import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:men4you/bloc/bloc_auth/auth_bloc.dart';
import 'package:men4you/data/repositories/auth_repository.dart';
import 'package:men4you/data/repositories/thumnail_repository.dart';
import 'package:men4you/presentations/auth/signin_screen.dart';
import 'package:men4you/presentations/home_screen/home_screen.dart';
import 'package:men4you/utility/language.dart';

import 'bloc/thumnail_bloc/thumnail_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print("firebase::: ${FirebaseAuth.instance}");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
              authRepository: RepositoryProvider.of<AuthRepository>(context),
            ),
          ),
          BlocProvider(
            create: (context) => ThumnailBloc(thumnailRepository: ThumnailRepository())..add(LoadThumnail()),
          ),
        ],
        child: GetMaterialApp(
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          translations: Languages(),
          locale: Get.deviceLocale,
          fallbackLocale: const Locale('en', 'US'),
          home: (FirebaseAuth.instance.currentUser) != null
              ? const HomeScreen()
              : const SignInScreen(),
        ),
      ),
    );
  }
}
