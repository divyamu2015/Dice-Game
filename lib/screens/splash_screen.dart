
import 'package:flutter/material.dart';

import 'alert_screen.dart';
import 'game_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'assets/images/alback.jpg'
                // height: 30,
                // width: 30,
                //  alignment: Alignment.topCenter,
              ),
              TextButton.icon(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const DiceGamePage();
                    }
                    )
                    );
                  },
                  icon: Icon(
                    Icons.label_important_outline_rounded,
                    color: Colors.purple.withOpacity(0.7),
                    size: 35,
                  ),
                  label: const Text(
                    'Start Game',
                    style: TextStyle(fontSize: 25),
                  )
                  ),
                 const SizedBox(height: 10),
                   TextButton.icon(
                  onPressed: () {
                     Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const AlertScreen();
                    }
                    )
                    );
                   
                  },
                  icon: Icon(
                    Icons.r_mobiledata_outlined,
                    color: Colors.purple.withOpacity(0.7),
                    size: 35,
                  ),
                  label: const Text(
                    'Show Rules',
                    style: TextStyle(fontSize: 25),
                  )
                  ),
            ])));
  }
}

 
