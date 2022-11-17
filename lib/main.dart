import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:memeverse/state/auth/providers/is_loading_provider.dart';
import 'package:memeverse/state/auth/providers/is_loggged_in_provider.dart';
import 'package:memeverse/views/components/loading/loading_screen.dart';
import 'package:memeverse/views/login/login_view.dart';
import 'package:memeverse/views/main/main_view.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        indicatorColor: Colors.blueGrey,
      ),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Consumer(builder: (context, ref, child) {
        ref.listen<bool>(
          isLoadingProvider,
          (_, isLoading) {
            if (isLoading) {
              LoadingScreen.instance().show(
                context: context,
              );
            } else {
              LoadingScreen.instance().hide();
            }
          },
        );

        final isLoggedIn = ref.watch(isLoggedInProvider);

        if (isLoggedIn) {
          return const MainView();
        } else {
          return const LoginView();
        }
      }),
    );
  }
}
