import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shekh/core/utils/components.dart';
import 'package:shekh/core/utils/media_query_values.dart';
import 'package:shekh/result_screen.dart';

import 'core/utils/assets_path.dart';
import 'cubit/app_cubit.dart';
import 'cubit/app_state.dart';
import 'new_mosapqa_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Stack(
            children: [
              const Background(),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: context.height * .13,
                        ),
                        Center(
                          child: Container(
                            width: context.width * .67,
                            // height: context.height * .09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Color(0xffBC964B),
                            ),
                            child: Center(
                              child: Text(
                                  "تطبيق     سمعلي \n تطبيق لمساعدة الشيوخ للتسميع للطلبه",
                                  style: TextStyle(
                                      fontFamily: CairoFont,
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.height * .15,
                        ),
                        Center(
                          child: Container(
                            width: context.width * .77,
                            height: context.height * .11,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffBC964B),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                NavTo(context, NewMosapqaScreen());
                              },
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Container(
                                  // width: context.width * .67,
                                  // height: context.height * .09,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      // color: Color(0xffBC964B),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/Bottonbackground.jpg",
                                          ),
                                          fit: BoxFit.cover,
                                          opacity: 1)),
                                  child: Center(
                                    child: Text("مسابقه جديده",
                                        style: TextStyle(
                                            fontFamily: CairoFont,
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.height * .06,
                        ),
                        Center(
                          child: Container(
                            width: context.width * .77,
                            height: context.height * .11,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffBC964B),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                NavAndFinish(context, ResultScreen());
                              },
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Container(
                                  // width: context.width * .67,
                                  // height: context.height * .09,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      // color: Color(0xffBC964B),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/Bottonbackground.jpg",
                                          ),
                                          fit: BoxFit.cover,
                                          opacity: 1)),
                                  child: Center(
                                    child: Text("المسابقات السابقه",
                                        style: TextStyle(
                                            fontFamily: CairoFont,
                                            // fontStyle: FontStyle.italic,
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Opacity(
      opacity: 0.6,
      child: Image.asset(
        'assets/images/background1.jpg',
        fit: BoxFit.fill,
        height: size.height,
        width: size.width,
      ),
    );
  }
}
