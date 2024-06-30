import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SendPage extends StatefulWidget {
  const SendPage({super.key});

  @override
  State<SendPage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  List<String> items = ['\$10', '\$25', '\$50', '\$75', '\$100'];
  List<String> num=['1','2','3','4','5','6','7','8','9','0','00','<-'];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              height: 580,
              margin: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){Navigator.pop(context);},
                          child: const CircleAvatar(
                            backgroundColor: Color(0xFF1D1D1D),
                            radius: 25,
                            child: Icon(
                              size: 30,
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          'Send Money',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              letterSpacing: -1,
                            ),
                          ),
                        ),
                        const CircleAvatar(
                          backgroundColor: Color(0xFF1D1D1D),
                          radius: 25,
                          child: Center(
                            child: Icon(
                              size: 30,
                              Icons.warning_amber_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Color(0xFF1D1D1D),
                    ),
                    padding: const EdgeInsets.all(25),
                    width: double.maxFinite,
                    height: 260,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red,
                          ),
                          padding: const EdgeInsets.only(
                              left: 15, top: 10, bottom: 10, right: 15),
                          //color: Colors.red,
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage('images/dp1.jpg'),
                                radius: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dancess',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                          letterSpacing: -1),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Bank - 1223 **** ****',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          //fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          letterSpacing: -1),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          '\$1,627.00',
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 40,
                                letterSpacing: -1),
                          ),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        SizedBox(
                          height: 25,
                          width: double.infinity,
                          child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 12, top: 1, bottom: 1),
                                  margin: const EdgeInsets.only(right: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 2,
                                          color: const Color(0xFF323232))),
                                  child: Center(
                                    child: Text(
                                      items[index],
                                      style: GoogleFonts.workSans(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            letterSpacing: -1),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 510,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //SizedBox(height: 10,),
                const ColoredBox(
                  color: Color(0xFF323232),
                  child: SizedBox(
                    height: 2,
                    width: 50,
                  ),
                ),
                Container(
                    height: 420,
                    width: double.maxFinite,
                    //color: Colors.black,
                    margin: const EdgeInsets.only(left: 40, right: 40, top: 20),
                    child: GridView.builder(
                        itemCount: 12,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              height: 35,
                              width: 40,
                              //color: Colors.white,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFF8F8F8),
                                  shape: BoxShape.circle),
                              child:   Center(
                                  child: Text(
                                    num[index],
                                    style: const TextStyle(
                                        fontSize: 35, fontWeight: FontWeight.w600),
                                  ),
                              ),
                            ),
                          );
                        })),
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Transfer',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              letterSpacing: -1,
                              color: Colors.white)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
