import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shekh/core/utils/media_query_values.dart';

import 'core/utils/assets_path.dart';
import 'core/utils/components.dart';
import 'cubit/app_cubit.dart';
import 'cubit/app_state.dart';
import 'home_screen.dart';
import 'new_mosapqa_screen.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

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
                    body: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            height: context.height * .89 - 60,
                            child: AnimationLimiter(
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(
                                    parent: AlwaysScrollableScrollPhysics()),

                                // padding: EdgeInsets.all(_w / 30),
                                itemBuilder: (context, index) {
                                  final reversedIndex =
                                      AppCubit.get(context).newtasks.length -
                                          1 -
                                          index;

                                  return AppCubit.get(context).newtasks.isEmpty
                                      ? Center(
                                          heightFactor: 50,
                                          child: Container(
                                            child: Text("لا يوجد بيانات.....",
                                                style: TextStyle(
                                                    fontFamily: CairoFont,
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        )
                                      : AnimationConfiguration.staggeredList(
                                          position: index,
                                          delay: Duration(milliseconds: 100),
                                          child: SlideAnimation(
                                            duration:
                                                Duration(milliseconds: 2500),
                                            curve:
                                                Curves.fastLinearToSlowEaseIn,
                                            child: FadeInAnimation(
                                                curve: Curves
                                                    .fastLinearToSlowEaseIn,
                                                duration: Duration(
                                                    milliseconds: 2500),
                                                child: buildDegreeItem(
                                                  model: AppCubit.get(context)
                                                      .newtasks[reversedIndex],
                                                )),
                                          ),
                                        );
                                },
                                itemCount:
                                    AppCubit.get(context).newtasks.length,
                              ),
                            )),
                        SizedBox(
                          height: 30,
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
                      ],
                    ),
                  )),
            ],
          );
        });
  }
}
