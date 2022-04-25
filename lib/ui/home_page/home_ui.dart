import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/getTextField.dart';
import '../../utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child:
            Padding(
              padding: EdgeInsets.only(left: 24.w,right: 24.w),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 52.h,),
                  Text("Sign Up to AeoLogic",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.darkTextColor,
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Wrap(
                    children: [
                      Text("Already have an account?",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.lightTextColor,
                        ),
                      ),
                      Text("  Login",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.purpleColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  GetTextField(hint: "Full Name"),
                  SizedBox(height: 15.h,),
                  GetTextField(hint: "Email"),
                  SizedBox(height: 15.h,),
                  GetTextField(hint: "Password"),
                  SizedBox(height: 15.h,),
                  GetTextField(hint: "Confirm Password"),
                  SizedBox(height: 15.h,),
                  SizedBox(width: double.infinity,
                    child: TextButton(onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(AppColors.purpleColor),
                          foregroundColor: MaterialStateProperty.all(AppColors.white),
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h),
                          ),
                          textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                          ))
                      ),

                      child: Text(" Create Account") ,
                    ),),
                  SizedBox(height: 15.h,),
                  Row(children: [
                    Expanded (child: Divider(),),
                    SizedBox(width: 16.w,),
                    Text("or sign up via",
                      style:  TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.lightTextColor
                      ),),
                    SizedBox(width: 16.w,),
                    Expanded (child: Divider(),),
                  ],),
                  SizedBox(height: 15.h,),
                  SizedBox(width: double.infinity,
                    child: TextButton(onPressed: () {},
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(color: AppColors.black)),
                          backgroundColor: MaterialStateProperty.all(AppColors.white),
                          foregroundColor: MaterialStateProperty.all(AppColors.black),
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h),
                          ),
                          textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ))
                      ),

                      child:Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/google.png",scale: 9.sp,),
                          SizedBox(width: 10.w,),
                          Text(" Google"),
                        ],
                      ) ,
                    ),),
                  SizedBox(height: 15.h,),
                  Wrap(
                    children: [
                      Text("By signing up to Aeologic you agree to our",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.lightTextColor,
                        ),
                      ),
                      Text("terms and conditions",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.purpleColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}