import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shekh/core/utils/components.dart';
import 'package:shekh/core/utils/media_query_values.dart';
import 'package:shekh/cubit/app_state.dart';
import 'package:shekh/result_screen.dart';

import 'core/utils/assets_path.dart';
import 'cubit/app_cubit.dart';
import 'home_screen.dart';

// class QueScreen extends StatefulWidget {
//   QueScreen(
//       {Key? key, required this.degree, required this.QueNum, required this.Nam})
//       : super(key: key);
//   final String Nam;
//   final double degree;
//   final int QueNum;

//   @override
//   State<QueScreen> createState() => _QueScreenState();
// }

class QueScreen extends StatelessWidget {
  QueScreen(
      {Key? key,
      required this.degree,
      required this.QueNum,
      required this.Nam,
      required this.talebSahahadegree,
      required this.shekhSahahadegree,
      required this.tagweddegree,
      required this.stopAndStartdegree,
      required this.taradddegree})
      : super(key: key);
  final String Nam;
  final double degree;
  final int QueNum;
  final double talebSahahadegree;
  final double shekhSahahadegree;
  final double tagweddegree;
  final double stopAndStartdegree;
  final double taradddegree;
  double? QueDegree;

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    double QueDegree = degree;

    return Stack(
      children: [
        const Background(),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      height: context.height * 1,
                      width: context.width * 1,
                      child: PageView.builder(
                        controller: pageController,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Build_Page_Item(
                            Nam: Nam,
                            QuesDegree: QueDegree,
                            QueDegree: QueDegree / QueNum,
                            QueNum: (index + 1).toString(),
                            shekhSahahadegree: shekhSahahadegree,
                            stopAndStartdegree: stopAndStartdegree,
                            tagweddegree: tagweddegree,
                            talebSahahadegree: talebSahahadegree,
                            taradddegree: taradddegree,
                            QueNumper: QueNum,
                            index: index,
                            pageController: pageController,
                          );
                        },
                        itemCount: QueNum,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Build_Page_Item extends StatefulWidget {
  Build_Page_Item({
    super.key,
    required this.QueNum,
    required this.Nam,
    required this.QueDegree,
    required this.talebSahahadegree,
    required this.shekhSahahadegree,
    required this.tagweddegree,
    required this.stopAndStartdegree,
    required this.taradddegree,
    required this.pageController,
    required this.index,
    required this.QueNumper,
    required this.QuesDegree,
  });
  final String QueNum;
  final String Nam;

  final double QueDegree;
  final double QuesDegree;

  final double talebSahahadegree;
  final double shekhSahahadegree;
  final double tagweddegree;
  final double stopAndStartdegree;
  final double taradddegree;
  final int index;
  final int QueNumper;
  final PageController pageController;

  @override
  State<Build_Page_Item> createState() => _Build_Page_ItemState();
}

class _Build_Page_ItemState extends State<Build_Page_Item> {
  double? newDegree;
  double _getSelectedDegree(AppCubit cubit) {
    switch (cubit.selectedButton) {
      case SelectedButton.nothing:
        return 0.0;
      case SelectedButton.talebSahaha:
        return widget.talebSahahadegree;
      case SelectedButton.shekhSahaha:
        return widget.shekhSahahadegree;
      case SelectedButton.tagwed:
        return widget.tagweddegree;
      case SelectedButton.stopAndStart:
        return widget.stopAndStartdegree;
      case SelectedButton.taradd:
        return widget.taradddegree;
      // Handle the remaining cases
      default:
        return 0.0;
    }
  }

  @override
  void initState() {
    super.initState();
    newDegree = double.parse(widget.QueDegree.toString());
  }

  @override
  void didUpdateWidget(Build_Page_Item oldWidget) {
    var cubit = AppCubit.get(context);
    super.didUpdateWidget(oldWidget);
    if (widget != oldWidget) {
      newDegree = newDegree! - _getSelectedDegree(cubit);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);

        // double newDegree = double.parse(widget.QueDegree.toString()) -
        //     _getSelectedDegree(cubit);

        return Column(
          children: [
            SizedBox(
              height: context.height * .05,
            ),
            Text("السؤال    ${widget.QueNum}",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    fontFamily: CairoFont,
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
            // SizedBox(
            //   height: context.height * .02,
            // ),
            Container(
              width: context.width * .65,
              height: context.height * .05,
              child: Center(
                child: Row(
                  children: [
                    Spacer(),
                    if (cubit.isMyDegreeWidgetVisible)
                      MyDegreeWidget(
                        // dicreaseDegree: decreaseDegree,
                        dicreaseDegree: _getSelectedDegree(cubit),

                        onAnimationComplete: () {
                          cubit.resetMyDegreeWidgetVisibility();
                        },
                      ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: context.width * .65,
                  // height: context.height * .07,
                  child: Text(widget.Nam,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          fontFamily: CairoFont,
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ),
                Spacer(),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Container(
                    width: context.width * .2,
                    child: Text(
                      // widget.QueDegree.toString(),
                      "${newDegree}",
                      maxLines: 1,
                      // overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: CairoFont,
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.height * .07,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: context.width * .19,
                  backgroundColor: Color(0xffBC964B),
                  child: GestureDetector(
                    onTap: () {
                      // handleMyDegreeWidgetTap();

                      cubit.handleButtonTap(SelectedButton.talebSahaha);
                      newDegree = newDegree! - _getSelectedDegree(cubit);
                      // if (isMyDegreeWidgetVisible) {
                      //   handleMyDegreeWidgetTap();
                      // }
                    },
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(150),
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
                          child: Text("صحح بنفسه",
                              style: TextStyle(
                                  fontFamily: CairoFont,
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: context.width * .1,
                ),
                CircleAvatar(
                  radius: context.width * .19,
                  backgroundColor: Color(0xffBC964B),
                  child: GestureDetector(
                    onTap: () {
                      cubit.handleButtonTap(SelectedButton.shekhSahaha);
                      newDegree = newDegree! - _getSelectedDegree(cubit);
                    },
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(150),
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
                          child: Text("صحح له الشيخ",
                              style: TextStyle(
                                  fontFamily: CairoFont,
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.height * .03,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: context.width * .19,
                  backgroundColor: Color(0xffBC964B),
                  child: GestureDetector(
                    onTap: () {
                      cubit.handleButtonTap(SelectedButton.tagwed);
                      newDegree = newDegree! - _getSelectedDegree(cubit);
                    },
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(150),
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
                          child: Text("خطأ التجويد",
                              style: TextStyle(
                                  fontFamily: CairoFont,
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: context.width * .1,
                ),
                CircleAvatar(
                  radius: context.width * .19,
                  backgroundColor: Color(0xffBC964B),
                  child: GestureDetector(
                    onTap: () {
                      cubit.handleButtonTap(SelectedButton.taradd);
                      newDegree = newDegree! - _getSelectedDegree(cubit);
                    },
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(150),
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
                          child: Text(" التردد",
                              style: TextStyle(
                                  fontFamily: CairoFont,
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.height * .02,
            ),
            CircleAvatar(
              radius: context.width * .19,
              backgroundColor: Color(0xffBC964B),
              child: GestureDetector(
                onTap: () {
                  cubit.handleButtonTap(SelectedButton.stopAndStart);
                  newDegree = newDegree! - _getSelectedDegree(cubit);
                },
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(150),
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
                      child: Text(" خطأ الوقف \nوالابتداء",
                          style: TextStyle(
                              fontFamily: CairoFont,
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: context.height * .02,
            ),
            newMethod(
                context,
                widget.index,
                widget.pageController,
                widget.QueNumper,
                widget.Nam,
                widget.QueDegree,
                widget.QuesDegree,
                newDegree!)
          ],
        );
      },
    );
  }
}

class MyDegreeWidget extends StatelessWidget {
  const MyDegreeWidget({
    super.key,
    required this.dicreaseDegree,
    required this.onAnimationComplete,
  });

  final double dicreaseDegree;
  final Function() onAnimationComplete;
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontFamily: CairoFont,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          FadeAnimatedText("${dicreaseDegree.toString()}-"),
        ],
        repeatForever: false,
        isRepeatingAnimation: true,
        totalRepeatCount: 1,
        onFinished: () {
          onAnimationComplete();
        },
      ),
    );
  }
}

List<double> degreeList = [];
Center newMethod(
    BuildContext context,
    int index,
    PageController pageController,
    int QueNum,
    String Nam,
    double QueDegree,
    double QuesDegree,
    double talebDegree) {
  return Center(
    child: Container(
      width: context.width * .6,
      height: context.height * .09,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffBC964B),
      ),
      child: GestureDetector(
        onTap: () {
          degreeList.add(talebDegree);

          if (index == QueNum - 1) {
            double totaltalebDegree = degreeList.reduce((value, element) {
              print(value);
              print(element);
              print(degreeList);
              return value + element;
            });
            AppCubit.get(context).insertIntoDatabase(
                title: "$Nam",
                allDegree: '$QuesDegree',
                talebDegree: '$totaltalebDegree');
            NavAndFinish(context, ResultScreen());
          } else {
            pageController.nextPage(
                duration: const Duration(
                  milliseconds: 750,
                ),
                curve: Curves.fastLinearToSlowEaseIn);
          }
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
              child: Text(index == QueNum - 1 ? "تم" : "السؤال التالي",
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
  );
}
