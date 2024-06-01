import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:router_task_with_getx/router/app_router.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
        context.pushRoute(const OnBoardingRoute());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -10,
            right: -10,
            child: Image.asset(
              'images/elllipsetop.png',
              width: 200,
              height: 200,
            ),
          ),
          Center(
            child: SvgPicture.asset(
              'images/Group 2.svg',
              width: 200,
              height: 200,
            ),
          ),
          Positioned(
            bottom: -20,
            left: 0,
            child: Image.asset(
              'images/elipsebottam.png',
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
