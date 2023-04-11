import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:verve/firstPage.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Stack(
          children: [
            Lottie.asset(
              'assets/lottie.json',
              controller: _controller,
              onLoaded: (composition) {
                _controller
                  ..duration = composition.duration * 3
                  ..repeat();
              },
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              repeat: true,
              reverse: false,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35, right: 35),
                    child: Image.asset('assets/verve.png'),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 200,
                    ),
                    child: Text(
                      'Connecting hearts beyond the binary',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(63, 22, 62, 18),
                    width: 193,
                    height: 71,
                    decoration: BoxDecoration(
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 68,
                        ),
                        child: Text(
                          'LET\'S GET STARTED',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
