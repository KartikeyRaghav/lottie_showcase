import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController controller_1;
  late AnimationController controller_2;
  late AnimationController controller_3;
  late AnimationController controller_4;

  bool running_1 = true;
  bool running_2 = true;
  bool running_3 = true;
  bool running_4 = true;

  @override
  void initState() {
    super.initState();
    controller_1 = AnimationController(vsync: this);
    controller_2 = AnimationController(vsync: this);
    controller_3 = AnimationController(vsync: this);
    controller_4 = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    controller_1.dispose();
    controller_2.dispose();
    controller_3.dispose();
    controller_4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Tap on animations to make them run',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.white),
                      right: BorderSide(color: Colors.white),
                      left: BorderSide(color: Colors.white),
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      if (running_1) {
                        running_1 = false;
                        controller_1.reverse();
                      } else {
                        running_1 = true;
                        controller_1.forward();
                      }
                    },
                    child: Lottie.asset(
                      'assets/an_1.json',
                      width: 300,
                      controller: controller_1,
                      repeat: true,
                      fit: BoxFit.cover,
                      onLoaded: (composition) {
                        controller_1.duration = composition.duration;
                        controller_1.forward();
                        setState(() {});
                      },
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.white),
                      right: BorderSide(color: Colors.white),
                      left: BorderSide(color: Colors.white),
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      if (running_2) {
                        running_2 = false;
                        controller_2.reverse();
                      } else {
                        running_2 = true;
                        controller_2.forward();
                      }
                    },
                    child: Lottie.asset(
                      'assets/an_2.json',
                      width: 300,
                      controller: controller_2,
                      fit: BoxFit.cover,
                      repeat: true,
                      onLoaded: (composition) {
                        controller_2.duration = composition.duration;
                        controller_2.forward();
                        setState(() {});
                      },
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.white),
                      right: BorderSide(color: Colors.white),
                      left: BorderSide(color: Colors.white),
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      if (running_3) {
                        running_3 = false;
                        controller_3.reverse();
                      } else {
                        running_3 = true;
                        controller_3.forward();
                      }
                    },
                    child: Lottie.asset(
                      'assets/an_3.json',
                      width: 300,
                      controller: controller_3,
                      fit: BoxFit.cover,
                      repeat: true,
                      onLoaded: (composition) {
                        controller_3.duration = composition.duration;
                        controller_3.forward();
                        setState(() {});
                      },
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.white),
                      right: BorderSide(color: Colors.white),
                      left: BorderSide(color: Colors.white),
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      if (running_4) {
                        running_4 = false;
                        controller_4.reverse();
                      } else {
                        running_4 = true;
                        controller_4.forward();
                      }
                    },
                    child: Lottie.asset(
                      'assets/an_4.json',
                      width: 300,
                      fit: BoxFit.cover,
                      controller: controller_4,
                      repeat: true,
                      onLoaded: (composition) {
                        controller_4.duration = composition.duration;
                        controller_4.forward();
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
