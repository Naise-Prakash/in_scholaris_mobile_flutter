import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //     height: MediaQuery.of(context).size.height,
    //     width: MediaQuery.of(context).size.width,
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //           image: AssetImage('assets/images/Group 214.png'),
    //           fit: BoxFit.fill),
    //     ),
    //     child: Container(
    //         height: 150,
    //         width: MediaQuery.of(context).size.width * .9,
    //         child: SvgPicture.asset('assets/images/SplashImage.svg')),
    //     alignment: Alignment.center);

    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/images/Group 214.png', fit: BoxFit.fill),
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
                child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width * .9,
                    child: Row(children: [
                      Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage(
                                  'assets/images/Inscolaris-logo-white.png'),
                              fit: BoxFit.fill),
                          // child: Text(
                          //   'In',
                          //   style: TextStyle(
                          //       fontSize: 35,
                          //       //fontStyle: GoogleFonts.cen,
                          //       color: Color(0xFF462769),
                          //       fontWeight: FontWeight.w700),
                          // ),
                        ),
                        // SizedBox(width: 20),
                        // Text('Scholaris',
                        //     style: TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 50,
                        //         fontWeight: FontWeight.w400))
                      )
                    ]))))
      ],
    );
  }
}
