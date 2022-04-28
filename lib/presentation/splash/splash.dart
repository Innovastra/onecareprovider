import 'dart:async';
import 'package:flutter/material.dart';

import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  // AppPreferences _appPreferences = instance<AppPreferences>();

  _startDelay() {
    _timer = Timer(Duration(seconds: 7), _goNext);
  }

  _goNext() async {
    Navigator.pushReplacementNamed(context, Routes.loginRoute);
    
    // _appPreferences.isUserLoggedIn().then((isUserLoggedIn) => {
    //       if (isUserLoggedIn)
    //         {
    //           // navigate to main screen
    //           Navigator.pushReplacementNamed(context, Routes.mainRoute)
    //         }
    //       else
    //         {
    //           _appPreferences
    //               .isOnBoardingScreenViewed()
    //               .then((isOnBoardingScreenViewed) => {
    //                     if (isOnBoardingScreenViewed)
    //                       {
    //                         Navigator.pushReplacementNamed(
    //                             context, Routes.loginRoute)
    //                       }
    //                     else
    //                       {
    //                         Navigator.pushReplacementNamed(
    //                             context, Routes.onBoardingRoute)
    //                       }
    //                   })
    //         }
    //     });
  }

  @override
  void initState() {
    super.initState();
    _startDelay();

  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(
      child:Container(
        alignment: Alignment.center,
        child: Image.asset(ImageAssets.splash, fit:  BoxFit.cover,)
      )
      ),
    );
  }
}
