import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:shekh/core/utils/media_query_values.dart';
import 'package:shekh/que_screen.dart';

import 'core/utils/assets_path.dart';
import 'core/utils/components.dart';
import 'home_screen.dart';

class NewMosapqaScreen extends StatelessWidget {
  NewMosapqaScreen({Key? key}) : super(key: key);
  var nameController = TextEditingController();
  var degreeNumController = TextEditingController();
  var QueNumController = TextEditingController();
  var talebSahahaController = TextEditingController();
  var shekhSahahaController = TextEditingController();
  var tagwedController = TextEditingController();
  var stopAndStartController = TextEditingController();
  var taraddController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: context.width * .67,
                              // height: context.height * .09,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // color: Color(0xffBC964B),
                              ),
                              child: Center(
                                child: Text("يمكنك الضغط علي زر",
                                    style: TextStyle(
                                        fontFamily: CairoFont,
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Center(
                              child: Text("اذهب",
                                  style: TextStyle(
                                      fontFamily: CairoFont,
                                      color: Color.fromARGB(255, 239, 208, 145),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
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
                                "بعد كتابة الأسم وعدد ودرجة الاسئله فقط",
                                style: TextStyle(
                                    fontFamily: CairoFont,
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Stack(
                        children: [
                          Center(
                            child: Container(
                              // width: context.width * .7,
                              // height: context.height * .11,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffBC964B),
                              ),
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
                                  child: TextFormField(
                                    controller: nameController,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(color: Colors.white),
                                    cursorColor: Colors.white,
                                    onTap: () {},
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return "من فضلك ادخل الاسم";
                                      }
                                      return null;
                                    },
                                    // onFieldSubmitted: (value) {
                                    //   if (formKey.currentState!.validate()) {}
                                    // },
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.nest_cam_wired_stand,
                                        color: Colors.white,
                                      ),
                                      hintText: "الاسم",
                                      hintStyle: TextStyle(
                                          fontFamily: CairoFont,
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      helperStyle: TextStyle(
                                          fontFamily: CairoFont,
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),

                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffBC964B)),
                                        gapPadding: 5,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      // errorBorder: OutlineInputBorder(
                                      //   borderSide: BorderSide(
                                      //     color: Colors.black,
                                      //   ),
                                      //   gapPadding: 5,
                                      //   borderRadius:
                                      //       BorderRadius.circular(10),
                                      // ),
                                      errorStyle: TextStyle(
                                          fontFamily: CairoFont,
                                          color: Colors.red,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                        gapPadding: 5,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                        gapPadding: 5,
                                        borderRadius: BorderRadius.circular(20),
                                      ),

                                      disabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffBC964B)),
                                        gapPadding: 5,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffBC964B)),
                                        gapPadding: 5,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      // Change the color as desired

                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffBC964B)),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Card(
                          //   clipBehavior: Clip.antiAliasWithSaveLayer,
                          //   color: Colors.transparent,
                          //   elevation: 0,
                          //   child: Text("مسابقه جديده",
                          //       style: TextStyle(
                          //           color: Colors.white,
                          //           fontSize: 25,
                          //           fontWeight: FontWeight.bold)),
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    // width: context.width * .7,
                                    // height: context.height * .11,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffBC964B),
                                    ),
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
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            // color: Color(0xffBC964B),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/Bottonbackground.jpg",
                                                ),
                                                fit: BoxFit.cover,
                                                opacity: 1)),
                                        child: TextFormField(
                                          controller: QueNumController,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(color: Colors.white),
                                          cursorColor: Colors.white,
                                          onTap: () {},
                                          validator: (String? value) {
                                            if (value!.isEmpty) {
                                              return "ادخل عدد الأسئله";
                                            }
                                            return null;
                                          },
                                          // onFieldSubmitted: (value) {
                                          //   if (formKey.currentState!
                                          //       .validate()) {}
                                          // },
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                              Icons.format_list_numbered,
                                              color: Colors.white,
                                            ),
                                            hintText: "عدد الاسئله",
                                            hintStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            helperStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            errorStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.red,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            // errorBorder: OutlineInputBorder(
                                            //   borderSide: BorderSide(
                                            //     color: Colors.black,
                                            //   ),
                                            //   gapPadding: 5,
                                            //   borderRadius:
                                            //       BorderRadius.circular(10),
                                            // ),

                                            disabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            // Change the color as desired

                                            enabledBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Card(
                                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                                //   color: Colors.transparent,
                                //   elevation: 0,
                                //   child: Text("مسابقه جديده",
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 25,
                                //           fontWeight: FontWeight.bold)),
                                // ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: context.width * .04,
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    // width: context.width * .7,
                                    // height: context.height * .11,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffBC964B),
                                    ),
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
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            // color: Color(0xffBC964B),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/Bottonbackground.jpg",
                                                ),
                                                fit: BoxFit.cover,
                                                opacity: 1)),
                                        child: TextFormField(
                                          controller: degreeNumController,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(color: Colors.white),
                                          cursorColor: Colors.white,
                                          onTap: () {},
                                          validator: (String? value) {
                                            if (value!.isEmpty) {
                                              return "ادخل الدرجه الكليه";
                                            }
                                            return null;
                                          },
                                          // onFieldSubmitted: (value) {
                                          //   if (formKey.currentState!
                                          //       .validate()) {}
                                          // },
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                              Icons.confirmation_num_outlined,
                                              color: Colors.white,
                                            ),
                                            hintText: "درجة الاسئله",
                                            hintStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            helperStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            errorStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.red,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            // errorBorder: OutlineInputBorder(
                                            //   borderSide: BorderSide(
                                            //     color: Colors.black,
                                            //   ),
                                            //   gapPadding: 5,
                                            //   borderRadius:
                                            //       BorderRadius.circular(10),
                                            // ),

                                            disabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            // Change the color as desired

                                            enabledBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Card(
                                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                                //   color: Colors.transparent,
                                //   elevation: 0,
                                //   child: Text("مسابقه جديده",
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 25,
                                //           fontWeight: FontWeight.bold)),
                                // ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    // width: context.width * .7,
                                    // height: context.height * .11,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffBC964B),
                                    ),
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
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            // color: Color(0xffBC964B),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/Bottonbackground.jpg",
                                                ),
                                                fit: BoxFit.cover,
                                                opacity: 1)),
                                        child: TextFormField(
                                          controller: talebSahahaController,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(color: Colors.white),
                                          cursorColor: Colors.white,
                                          onTap: () {},
                                          validator: (String? value) {
                                            if (value!.isEmpty) {
                                              return " الدرجات المنقوصه منه";
                                            }
                                            return null;
                                          },
                                          // onFieldSubmitted: (value) {
                                          //   if (formKey.currentState!
                                          //       .validate()) {}
                                          // },
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                              Icons.numbers,
                                              color: Colors.white,
                                            ),
                                            hintText: "صحح بنفسه",
                                            hintStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            helperStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            errorStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.red,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            // errorBorder: OutlineInputBorder(
                                            //   borderSide: BorderSide(
                                            //     color: Colors.black,
                                            //   ),
                                            //   gapPadding: 5,
                                            //   borderRadius:
                                            //       BorderRadius.circular(10),
                                            // ),

                                            disabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            // Change the color as desired

                                            enabledBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Card(
                                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                                //   color: Colors.transparent,
                                //   elevation: 0,
                                //   child: Text("مسابقه جديده",
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 25,
                                //           fontWeight: FontWeight.bold)),
                                // ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: context.width * .04,
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    // width: context.width * .7,
                                    // height: context.height * .11,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffBC964B),
                                    ),
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
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            // color: Color(0xffBC964B),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/Bottonbackground.jpg",
                                                ),
                                                fit: BoxFit.cover,
                                                opacity: 1)),
                                        child: TextFormField(
                                          controller: shekhSahahaController,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(color: Colors.white),
                                          cursorColor: Colors.white,
                                          onTap: () {},
                                          validator: (String? value) {
                                            if (value!.isEmpty) {
                                              return "الشيخ صحح له";
                                            }
                                            return null;
                                          },
                                          // onFieldSubmitted: (value) {
                                          //   if (formKey.currentState!
                                          //       .validate()) {}
                                          // },
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                              Icons.noise_control_off_outlined,
                                              color: Colors.white,
                                            ),
                                            hintText: "الشيخ صحح له",
                                            hintStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            helperStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            errorStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.red,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            // errorBorder: OutlineInputBorder(
                                            //   borderSide: BorderSide(
                                            //     color: Colors.black,
                                            //   ),
                                            //   gapPadding: 5,
                                            //   borderRadius:
                                            //       BorderRadius.circular(10),
                                            // ),

                                            disabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            // Change the color as desired

                                            enabledBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Card(
                                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                                //   color: Colors.transparent,
                                //   elevation: 0,
                                //   child: Text("مسابقه جديده",
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 25,
                                //           fontWeight: FontWeight.bold)),
                                // ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    // width: context.width * .7,
                                    // height: context.height * .11,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffBC964B),
                                    ),
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
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            // color: Color(0xffBC964B),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/Bottonbackground.jpg",
                                                ),
                                                fit: BoxFit.cover,
                                                opacity: 1)),
                                        child: TextFormField(
                                          controller: tagwedController,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(color: Colors.white),
                                          cursorColor: Colors.white,
                                          onTap: () {},
                                          validator: (String? value) {
                                            if (value!.isEmpty) {
                                              return " الدرجات المنقوصه منه";
                                            }
                                            return null;
                                          },
                                          // onFieldSubmitted: (value) {
                                          //   if (formKey.currentState!
                                          //       .validate()) {}
                                          // },
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                              Icons.nearby_error,
                                              color: Colors.white,
                                            ),
                                            hintText: "خطأ التجويد",
                                            hintStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            helperStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            errorStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.red,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            // errorBorder: OutlineInputBorder(
                                            //   borderSide: BorderSide(
                                            //     color: Colors.black,
                                            //   ),
                                            //   gapPadding: 5,
                                            //   borderRadius:
                                            //       BorderRadius.circular(10),
                                            // ),

                                            disabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            // Change the color as desired

                                            enabledBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Card(
                                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                                //   color: Colors.transparent,
                                //   elevation: 0,
                                //   child: Text("مسابقه جديده",
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 25,
                                //           fontWeight: FontWeight.bold)),
                                // ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: context.width * .04,
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    // width: context.width * .7,
                                    // height: context.height * .11,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffBC964B),
                                    ),
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
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            // color: Color(0xffBC964B),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/Bottonbackground.jpg",
                                                ),
                                                fit: BoxFit.cover,
                                                opacity: 1)),
                                        child: TextFormField(
                                          controller: stopAndStartController,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(color: Colors.white),
                                          cursorColor: Colors.white,
                                          onTap: () {},
                                          validator: (String? value) {
                                            if (value!.isEmpty) {
                                              return "خطأ التردد";
                                            }
                                            return null;
                                          },
                                          // onFieldSubmitted: (value) {
                                          //   if (formKey.currentState!
                                          //       .validate()) {}
                                          // },
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                              Icons.error_outline,
                                              color: Colors.white,
                                            ),

                                            hintText: "خطأ التردد",
                                            hintStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            helperStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            // errorBorder: OutlineInputBorder(
                                            //   borderSide: BorderSide(
                                            //     color: Colors.black,
                                            //   ),
                                            //   gapPadding: 5,
                                            //   borderRadius:
                                            //       BorderRadius.circular(10),
                                            // ),
                                            errorStyle: TextStyle(
                                                fontFamily: CairoFont,
                                                color: Colors.red,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),

                                            disabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              gapPadding: 5,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            // Change the color as desired

                                            enabledBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xffBC964B)),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Card(
                                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                                //   color: Colors.transparent,
                                //   elevation: 0,
                                //   child: Text("مسابقه جديده",
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 25,
                                //           fontWeight: FontWeight.bold)),
                                // ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Stack(
                        children: [
                          Center(
                            child: Container(
                              // width: context.width * .7,
                              // height: context.height * .11,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffBC964B),
                              ),
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
                                  child: TextFormField(
                                    controller: taraddController,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Colors.white),
                                    cursorColor: Colors.white,
                                    onTap: () {},
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return "خطأ الوقف والابتداء";
                                      }
                                      return null;
                                    },
                                    // onFieldSubmitted: (value) {
                                    //   if (formKey.currentState!.validate()) {}
                                    // },
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.running_with_errors_outlined,
                                        color: Colors.white,
                                      ),
                                      hintText: " خطأ الوقف والابتداء",
                                      hintStyle: TextStyle(
                                          fontFamily: CairoFont,
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      helperStyle: TextStyle(
                                          fontFamily: CairoFont,
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),

                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffBC964B)),
                                        gapPadding: 5,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      errorStyle: TextStyle(
                                          fontFamily: CairoFont,
                                          color: Colors.red,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                        gapPadding: 5,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                        gapPadding: 5,
                                        borderRadius: BorderRadius.circular(20),
                                      ),

                                      disabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffBC964B)),
                                        gapPadding: 5,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffBC964B)),
                                        gapPadding: 5,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      // Change the color as desired

                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffBC964B)),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Card(
                          //   clipBehavior: Clip.antiAliasWithSaveLayer,
                          //   color: Colors.transparent,
                          //   elevation: 0,
                          //   child: Text("مسابقه جديده",
                          //       style: TextStyle(
                          //           color: Colors.white,
                          //           fontSize: 25,
                          //           fontWeight: FontWeight.bold)),
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    // width: context.width * .77,
                                    height: context.height * .11,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffBC964B),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        if (formKey.currentState!.validate()) {
                                          degreeList = [];
                                          NavTo(
                                            context,
                                            QueScreen(
                                              degree: double.parse(
                                                  degreeNumController.text),
                                              QueNum: int.parse(
                                                  QueNumController.text),
                                              Nam: nameController.text,
                                              shekhSahahadegree: double.parse(
                                                  shekhSahahaController.text),
                                              stopAndStartdegree: double.parse(
                                                  stopAndStartController.text),
                                              tagweddegree: double.parse(
                                                  tagwedController.text),
                                              talebSahahadegree: double.parse(
                                                  talebSahahaController.text),
                                              taradddegree: double.parse(
                                                  taraddController.text),
                                            ),
                                          );
                                        }
                                      },
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                        ),
                                        child: Container(
                                          // width: context.width * .67,
                                          // height: context.height * .09,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              // color: Color(0xffBC964B),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    "assets/images/Bottonbackground.jpg",
                                                  ),
                                                  fit: BoxFit.cover,
                                                  opacity: 1)),
                                          child: Center(
                                            child: Text("اذهب للمسابقه",
                                                style: TextStyle(
                                                    fontFamily: CairoFont,
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Card(
                                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                                //   color: Colors.transparent,
                                //   elevation: 0,
                                //   child: Text("مسابقه جديده",
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 25,
                                //           fontWeight: FontWeight.bold)),
                                // ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: context.width * .03,
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    // width: context.width * .77,
                                    height: context.height * .11,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffBC964B),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        if (degreeNumController.text == "" ||
                                            QueNumController.text == "" ||
                                            nameController.text == "") {
                                          // ShowToust(
                                          //     Text:
                                          //         "ادخل الاسم وعدد ودرجة الاسئله اولا",
                                          //     state: ToustStates.ERROR);
                                          _ShowToustSuccessMotionToast(
                                              "ادخل الاسم وعدد ودرجة الاسئله اولا",
                                              context);
                                        }
                                        if (QueNumController.text == "0" ||
                                            degreeNumController.text == "0") {
                                          // ShowToust(
                                          //     Text:
                                          //         "ادخل الاسم وعدد ودرجة الاسئله اولا",
                                          //     state: ToustStates.ERROR);
                                          _ShowToustSuccessMotionToast(
                                              "ادخل رقم اقل من الصفر", context);
                                        }
                                        degreeList = [];
                                        NavTo(
                                            context,
                                            QueScreen(
                                              degree: double.parse(
                                                  degreeNumController.text),
                                              QueNum: int.parse(
                                                  QueNumController.text),
                                              Nam: nameController.text,
                                              shekhSahahadegree: 3,
                                              stopAndStartdegree: 2,
                                              tagweddegree: 1,
                                              talebSahahadegree: 1,
                                              taradddegree: 0.5,
                                            ));
                                      },
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                        ),
                                        child: Container(
                                          // width: context.width * .67,
                                          // height: context.height * .09,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              // color: Color(0xffBC964B),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    "assets/images/Bottonbackground.jpg",
                                                  ),
                                                  fit: BoxFit.cover,
                                                  opacity: 1)),
                                          child: Center(
                                            child: Text("اذهب ",
                                                style: TextStyle(
                                                    fontFamily: CairoFont,
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Card(
                                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                                //   color: Colors.transparent,
                                //   elevation: 0,
                                //   child: Text("مسابقه جديده",
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 25,
                                //           fontWeight: FontWeight.bold)),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _ShowToustSuccessMotionToast(String text, context) {
    MotionToast toast = MotionToast.error(
      title: Center(
        child: Text(
          text,
          style: const TextStyle(
              fontFamily: CairoFont,
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      description: const Text('',
          style: TextStyle(
              fontFamily: CairoFont,
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold)),
      layoutOrientation: ToastOrientation.rtl,
      animationType: AnimationType.fromRight,
      dismissable: true,
    );
    toast.show(context);
    Future.delayed(const Duration(seconds: 5)).then((value) {
      toast.dismiss();
    });
  }
}
