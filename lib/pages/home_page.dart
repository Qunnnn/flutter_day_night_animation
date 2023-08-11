import 'package:flutter/material.dart';
import 'package:flutter_day_night_animation/widgets/star.dart';
import 'package:flutter_day_night_animation/widgets/sun.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          height: size.height * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: _switchValue == false
                  ? [
                      const Color(0xffFFEADD),
                      const Color(0xff91C8E4),
                    ]
                  : [
                      const Color(0xff272829),
                      const Color(0xff61677A),
                    ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Stack(
            children: [
              AnimatedPositioned(
                top: _switchValue == false ? 20 : 20,
                left: _switchValue == false ? -50 : 50,
                duration: const Duration(milliseconds: 500),
                child: Image.asset(
                  'assets/moon.png',
                ),
              ),
              Positioned(
                top: 20,
                left: 40,
                child: AnimatedOpacity(
                    opacity: _switchValue == false ? 0 : 1,
                    duration: const Duration(milliseconds: 500),
                    child: const Star()),
              ),
              Positioned(
                top: 40,
                left: 100,
                child: AnimatedOpacity(
                    opacity: _switchValue == false ? 0 : 1,
                    duration: const Duration(milliseconds: 500),
                    child: const Star()),
              ),
              Positioned(
                top: 30,
                left: 170,
                child: AnimatedOpacity(
                    opacity: _switchValue == false ? 0 : 1,
                    duration: const Duration(milliseconds: 500),
                    child: const Star()),
              ),
              Positioned(
                top: 50,
                left: 200,
                child: AnimatedOpacity(
                    opacity: _switchValue == false ? 0 : 1,
                    duration: const Duration(milliseconds: 500),
                    child: const Star()),
              ),
              Positioned(
                top: 40,
                left: 150,
                child: AnimatedOpacity(
                    opacity: _switchValue == false ? 0 : 1,
                    duration: const Duration(milliseconds: 500),
                    child: const Star()),
              ),
              AnimatedPadding(
                  padding: EdgeInsets.only(
                    top: _switchValue == false ? 0 : 50,
                  ),
                  duration: const Duration(milliseconds: 200),
                  child: const Center(child: Sun())),
              AnimatedPositioned(
                top: _switchValue == false ? 20 : 20,
                left: _switchValue == false ? 30 : 400,
                duration: const Duration(milliseconds: 800),
                child: Image.asset('assets/cloud.png'),
              ),
              AnimatedPositioned(
                top: _switchValue == false ? 130 : 130,
                left: _switchValue == false ? 50 : 400,
                duration: const Duration(milliseconds: 600),
                child: Image.asset('assets/cloud.png'),
              ),
              AnimatedPositioned(
                top: _switchValue == false ? 100 : 100,
                left: _switchValue == false ? 150 : 400,
                duration: const Duration(milliseconds: 400),
                child: Image.asset('assets/cloud.png'),
              ),
              AnimatedPositioned(
                top: _switchValue == false ? 80 : 80,
                left: _switchValue == false ? 250 : 400,
                duration: const Duration(milliseconds: 200),
                child: Image.asset('assets/cloud.png'),
              ),
              AnimatedPositioned(
                top: _switchValue == false ? 50 : 50,
                left: _switchValue == false ? 200 : 400,
                duration: const Duration(milliseconds: 500),
                child: Image.asset('assets/cloud.png'),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: size.height * 0.2,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
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
