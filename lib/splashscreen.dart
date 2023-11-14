import 'dart:async';

import 'package:flutter/material.dart';

import 'core/utils/assets_path.dart';
import 'core/utils/components.dart';

import 'home_screen.dart';
import 'dart:math' as math;

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  late Timer timer;
  statrDelay() {
    timer = Timer(
      Duration(seconds: 4),
      () => NavAndFinish(context, HomeScreen()),
    );
  }

  @override
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    statrDelay();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 10))
          ..repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();

    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SplashBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body:
              // Center(
              //   child: CircleAvatar(
              //     radius: 70,
              //     backgroundColor: Colors.amber,
              //   ),
              // ),
              Center(
            child: Column(
              children: [
                Spacer(),
                Center(
                  child: AnimatedBuilder(
                    animation: _controller,
                    builder: (_, child) {
                      return Transform.rotate(
                        angle: _controller.value * 2 * math.pi,
                        child: child,
                      );
                    },
                    child: Center(
                      child: CircleAvatar(
                        radius: 100,
                        backgroundColor: Color(0xffBC964B),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 4,
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(width: 01),
                            borderRadius: BorderRadius.all(
                              Radius.circular(150),
                            ),
                          ),
                          child: Image.asset(
                            "assets/images/logo.png",
                            fit: BoxFit.cover,
                            height: size.height,
                            width: size.width,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(height: 50, child: MyCustomWidget()),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(
            fontFamily: CairoFont,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xffBC964B),
          ),
          child: Text('سمعلي'),
        ),
      ),
    );
  }
}

class SplashBackground extends StatelessWidget {
  const SplashBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Opacity(
      opacity: 0.6,
      child: Image.asset(
        'assets/images/splash_background.jpg',
        fit: BoxFit.fill,
        height: size.height,
        width: size.width,
      ),
    );
  }
}

// class CustomWidget extends StatefulWidget {
//   @override
//   _MyCustomWidgetState createState() => _MyCustomWidgetState();
// }

// class _CustomWidgetState extends State<MyCustomWidget>
//     with SingleTickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Stack(
//         children: [
//           Center(
//             child: AnimatedBuilder(
//               animation: _controller,
//               builder: (_, child) {
//                 return Transform.rotate(
//                   angle: _controller.value * 2 * math.pi,
//                   child: child,
//                 );
//               },
//               child: Image.asset(
//                 'assets/images/moon.png',
//               ),
//             ),
//           ),
//           Center(
//             child: Container(
//               height: 161,
//               width: 161,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: LinearGradient(
//                   begin: Alignment.topRight,
//                   end: Alignment.bottomLeft,
//                   colors: [
//                     Colors.white.withOpacity(1),
//                     Colors.white.withOpacity(.1),
//                     Colors.white.withOpacity(.05),
//                     Colors.black.withOpacity(.05),
//                     Colors.black.withOpacity(.1),
//                     Colors.black.withOpacity(.2),
//                     Colors.black.withOpacity(.3),
//                     Colors.black.withOpacity(.4),
//                     Colors.black.withOpacity(.5),
//                     Colors.black.withOpacity(.6),
//                     Colors.black.withOpacity(.7),
//                     Colors.black.withOpacity(.8),
//                     Colors.black.withOpacity(.9),
//                     Colors.black.withOpacity(.9),
//                     Colors.black.withOpacity(1),
//                     Colors.black.withOpacity(1),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Image link: https://www.shutterstock.com/image-photo/full-moon-isolated-over-white-background-516611251



      