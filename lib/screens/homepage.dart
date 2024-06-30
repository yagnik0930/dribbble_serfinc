import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import 'detailpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _show= true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: const EdgeInsets.all(25),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/logo2.png"), fit: BoxFit.fill)),
              width: 150,
              height: 150,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Serafinc Mobile',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -1),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Already have an account?',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color(0xFF787878), letterSpacing: -0.5),
              ),
            ),
            Text(
              'Entry your login details',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color(0xFF787878), letterSpacing: -0.5),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFF545454), width: 2)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(color: Colors.white),
                    )),
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 10),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFF545454), width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: _show,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(color: Colors.white),
                          )),
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        _show=!_show;
                        print(_show);
                      },
                      icon:  Icon(
                        _show ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
                        color: Colors.white,
                      ),)
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                                          Icons.check_box_outline_blank,
                                          color: Color(0xFF787878),
                                          size: 17,
                                        ),
                    const SizedBox(width: 5,),
                    Text(
                      'Remember',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color(0xFF787878), letterSpacing: -0.5),
                      ),
                    )
                  ],
                ),
                Text(
                  'Forgot password',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color(0xFFEB4225), letterSpacing: -0.5),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(flex:4,child: ColoredBox(color:Color(0xFF545454),
                    child:SizedBox(height: 2,)),),
                Expanded(
                  child: Center(
                    child: Text("Or",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.white, letterSpacing: -0.5,fontSize: 15),
                      ),),
                  ),
                ),
                const Expanded(flex: 4,
                  child: ColoredBox(color: Color(0xFF545454),
                    child:SizedBox(height: 2,)),)
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              //padding: const EdgeInsets.only(left: 20),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFF545454), width: 2)),
              child: SocialLoginButton(
                buttonType: SocialLoginButtonType.microsoft,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailPage()));
                },
                backgroundColor: Colors.transparent,
                text: 'Continue with Microsoft',
                textColor: Colors.white,
              ),
            ),
            const SizedBox(height: 5,),
            Container(
              //padding: const EdgeInsets.only(left: 20),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFF545454), width: 2)),
              child: SocialLoginButton(
                buttonType: SocialLoginButtonType.appleBlack,
                onPressed: () {},
                backgroundColor: Colors.transparent,
                text: 'Continue with Apple',
                textColor: Colors.white,
              ),
            ),
            const SizedBox(height: 5,),
            Container(
              //padding: const EdgeInsets.only(left: 20),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFF545454), width: 2)),
              child: SocialLoginButton(
                buttonType: SocialLoginButtonType.google,
                onPressed: () {},
                backgroundColor: Colors.transparent,
                text: 'Continue with Google',
                textColor: Colors.white,
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ? ",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color(0xFF787878), letterSpacing: -0.5),
                  ),
                ),
                Text(
                  'Sign up',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color(0xFFEB4225), letterSpacing: -0.5),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
