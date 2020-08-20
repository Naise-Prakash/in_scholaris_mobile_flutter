import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
//
import '../utilities/styles.dart';
import '../signin/signin_page.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 15.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 3),
        color: isActive ? Colors.white : Colors.transparent,
        //borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          height: 1000,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xFF462769),
                Color(0xFF462769),
                Color(0xFF462769),
                Color(0xFF462769),
              ],
            ),
          ),
          child: Container(
            //padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 700,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      // Padding(
                      //   padding: EdgeInsets.all(0.0),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     // children: <Widget>[
                      //     //   Center(
                      //     //       child: Container(
                      //     //     height:
                      //     //         500, // but athinte child height 900 how????
                      //     //     //width: 300,
                      //     //     decoration: BoxDecoration(
                      //     //         image: DecorationImage(
                      //     //             image: AssetImage(
                      //     //                 'assets/images/Group 214.png'),
                      //     //             fit: BoxFit.fill)),
                      //     //     //alignment: Alignment.center,
                      //     //     //child: Image.asset('assets/images/Group 214.png',
                      //     //     // fit: BoxFit.cover),
                      //     //   )),
                      //     //   //SizedBox(height: 30.0),
                      //     //   // Text(
                      //     //   //   'InScholaris',
                      //     //   //   style: kTitleStyle,
                      //     //   // ),
                      //     //   SizedBox(height: 15.0),
                      //     //   Text(
                      //     //     '',
                      //     //     style: kSubtitleStyle,
                      //     //   ),
                      //     // ],
                      //   ),
                      // ),
                      Container(
                        //padding: EdgeInsets.all(40.0),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height * .6,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset('assets/images/Union 1.png',
                                  fit: BoxFit.fill),

                              //width: 300,
                              // ),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              width: 300,
                              child: Text(
                                'Create InScholaris Profile',
                                textAlign: TextAlign.center,
                                style: kTitleStyle,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text:
                                          'Create your InScholaris account, LinkedIn for International students. You could attach the digital copies of your educational transcripts, IELTS score.',
                                      style: GoogleFonts.roboto(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                          height: 1.5))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.all(40.0),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: <Widget>[
                      //       Center(
                      //         child: Image(
                      //           image: AssetImage(
                      //             'assets/images/onboarding2.png',
                      //           ),
                      //           height: 300.0,
                      //           width: 300.0,
                      //         ),
                      //       ),
                      //       SizedBox(height: 30.0),
                      //       Text(
                      //         '',
                      //         style: kTitleStyle,
                      //       ),
                      //       SizedBox(height: 15.0),
                      //       Text(
                      //         '',
                      //         style: kSubtitleStyle,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: 120,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: _buildPageIndicator(),
                                  ),
                                ),
                                Container(
                                    width: 220,
                                    height: 100,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'SKIP',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        SizedBox(width: 10.0),
                                        GestureDetector(
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 80,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white),
                                              child:
                                                  Icon(Icons.arrow_forward_ios),
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SignInScreen()));
                                            })
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.white,
              child: GestureDetector(
                onTap: () => print('Get started'),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'Get started',
                      style: TextStyle(
                        color: Color(0xFF5B16D0),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
