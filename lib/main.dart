import 'package:risehallrepo/ui/pages/onboarding1.dart';
import 'package:risehallrepo/ui/pages/undefinedScreen.dart';
import 'package:risehallrepo/util/scaler/src/scale_aware.dart';
import 'package:risehallrepo/util/scaler/src/scale_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:risehallrepo/global/globals.dart' as globals;
import 'package:risehallrepo/routes/router.dart' as router;
import 'package:shared_preferences/shared_preferences.dart';

import 'ui/pages/splash_screen/splash_screen.dart';

late SharedPreferences prefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  SharedPreferences.getInstance().then(
    (prefs) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
          .then(
        (value) => runApp(
          RestartWidget(
            child: MyApp(),
          ),
        ),
      );
    },
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void getLoginStatus() async {
    prefs = await SharedPreferences.getInstance();
    globals.gAuth.googleSignIn.isSignedIn().then((value) {
      prefs.setBool("isLoggedin", value);
    });
  }

  @override
  void initState() {
    getLoginStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleAware(
      config: const ScaleConfig(),
      child: MaterialApp(
        onGenerateRoute: router.generateRoute,
        onUnknownRoute: (settings) => MaterialPageRoute(
            builder: (context) => UndefinedScreen(
                  name: settings.name,
                )),
        // theme: Provider.of<ThemeModel>(context).currentTheme,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}

class RestartWidget extends StatefulWidget {
  RestartWidget({this.child});

  final Widget? child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>()!.restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}
