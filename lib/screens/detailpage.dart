import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:dribble_serafinc_mobile/components/name_and_pic.dart';
import 'package:dribble_serafinc_mobile/screens/sendmoneypage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  List<PersonDetail> person=[
    PersonDetail('Dancess', 'images/dp1.jpg'),
    PersonDetail('Yagnik', 'images/dp2.jpg'),
    PersonDetail('Albert', 'images/dp3.jpg'),
    PersonDetail('Martin', 'images/dp4.jpg'),
    PersonDetail('Angel', 'images/dp5.jpg'),
    PersonDetail('Samuel', 'images/dp.jpg'),
  ];

List<ListDetail> ls=[
  ListDetail('images/bitcoin.png','Buy Bitcoin','\$134416.60'),
  ListDetail('images/ethereum.png','Buy Ethereum','\$15543.95'),
  ListDetail('images/paypal.png','Paypal Income','\$100.00'),
  ListDetail('images/paypal.png','Paypal Income','\$200.00'),
];

int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomNavigationBar(
          isFloating: true,
          borderRadius: const Radius.circular(30),
          iconSize: 30.0,
          selectedColor: const Color(0xff040307),
          strokeColor: const Color(0x30040307),
          unSelectedColor: const Color(0xffacacac),
          backgroundColor: Colors.white,
          items: [
            CustomNavigationBarItem(
              icon: const Icon(Icons.home),
              //title: const Text("Home"),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart),
              //title: const Text("Cart"),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.lightbulb_outline),
              //title: const Text("Explore"),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.search),
              //title: const Text("Search"),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.account_circle),
              //title: const Text("Me"),
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: Container(
          margin: const EdgeInsets.all(25),
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //appbar
              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text(
                          'Hallo!',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Color(0xFF545454),
                              letterSpacing: -1,
                            ),
                          ),
                        )),
                        Expanded(
                            flex: 2,
                            child: Text(
                              'Yagnik.',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    letterSpacing: -1,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ],
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      backgroundColor: Color(0xFF1D1D1D),
                      radius: 25,
                      child: Icon(
                        size: 30,
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/dp2.jpg',
                      ),
                      radius: 25,
                    ),
                  ],
                ),
              ),
              //balance
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Your Balance',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color:Color(0xFF545454),
                          fontSize: 25,
                          letterSpacing: -1
                        ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Text(
                      '\$64,525.00',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color:Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize:40,
                            letterSpacing: -1
                        ),
                      ),
                    ),
                    //const SizedBox(height: 10,),
                  ],
                ),
              ),
              //send&request buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 130,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xFF1D1D1D),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const SendPage()));},
                      child: Text(
                        'Send',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color:Colors.white,
                              //fontWeight: FontWeight.w500,
                              fontSize:20,
                              letterSpacing: -1
                          ),
                        ),
                      ),
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Color(0xFFD9D9D9),
                    radius: 25,
                    child: Icon(Icons.dashboard_rounded,color: Colors.black,size: 25,),
                  ),
                  Container(
                    width: 130,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xFF1D1D1D),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: TextButton(onPressed: () {  },
                      child: Text(
                        'Request',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color:Colors.white,
                              //fontWeight: FontWeight.w500,
                              fontSize:20,
                              letterSpacing: -1
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              //quick send and activity section
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                  width: double.maxFinite,
                  height: double.maxFinite,
                  decoration:  BoxDecoration(
                    color: const Color(0xFF1D1D1D),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const ColoredBox(color: Color(0xFF323232),child: SizedBox(height: 2,width: 50,),),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Quick Send',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize:20,
                                  letterSpacing: -1
                              ),
                            ),
                          ),
                          const Icon(Icons.menu,color: Color(0xFF7B7B7B),size: 20,)
                        ],
                      ),
                      const SizedBox(height: 15,),
                      //person detail
                      SizedBox(
                        height: 80,
                        width: double.maxFinite,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: person.length,
                            itemBuilder: (context,index){
                            return  Container(
                              margin: const EdgeInsets.only(right: 15),
                              width: 50,
                              height: 50,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                   CircleAvatar(
                                    backgroundImage: AssetImage(person[index].path),
                                    radius: 25,
                                  ),
                                  const SizedBox(height: 5,),
                                  Text(
                                   person[index].name,
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color:Color(0xFF868686),
                                          //fontWeight: FontWeight.w500,
                                          fontSize:13,
                                          letterSpacing: -1
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                            }
                        ),
                      ),
                      const SizedBox(height: 15,),
                      //recent activity
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recent Activity',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize:20,
                                  letterSpacing: -1
                              ),
                            ),
                          ),
                          const Icon(Icons.filter_alt_outlined,color: Color(0xFF7B7B7B),size: 20,)
                        ],
                      ),
                      const SizedBox(height: 15,),
                      SingleChildScrollView(
                        child: SizedBox(
                          height: 282,
                          width: double.maxFinite,
                          child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              //scrollDirection: Axis.horizontal,
                              itemCount: ls.length,
                              itemBuilder: (context,index){
                                return  Container(
                                  margin: const EdgeInsets.only(right: 10,bottom: 10),
                                  width: double.maxFinite,
                                  height: 60,
                                  child:  Row(
                                    children: [
                                       CircleAvatar(
                                        backgroundImage: AssetImage(ls[index].path),
                                        backgroundColor: Colors.white,
                                        radius: 25,
                                      ),
                                      const SizedBox(width: 10,),
                                      SizedBox(
                                        width: 250,
                                        height: 60,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          //crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  ls[index].name,
                                                  style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        color:Colors.white,
                                                        //fontWeight: FontWeight.w500,
                                                        fontSize:17,
                                                        letterSpacing: -1
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  ls[index].amt,
                                                  style: GoogleFonts.roboto(
                                                    textStyle: const TextStyle(
                                                        color:Colors.white,
                                                        //fontWeight: FontWeight.w500,
                                                        fontSize:17,
                                                        letterSpacing: -1
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  '15 May 2024',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        color:Color(0xFF7B7B7B),
                                                        //fontWeight: FontWeight.w500,
                                                        fontSize:14,
                                                        letterSpacing: -1
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  '12:48AM',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        color:Color(0xFF7B7B7B),
                                                        //fontWeight: FontWeight.w500,
                                                        fontSize:14,
                                                        letterSpacing: -1
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                        
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                );
                              }
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
