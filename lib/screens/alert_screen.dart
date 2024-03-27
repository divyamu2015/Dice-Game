import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:Scaffold(
            backgroundColor: Colors.black,
            body:
            
                Stack(
                  children: [
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                  'assets/images/dicebackg.jpg',
                 
                                ),
                                ),
                                
                               const Expanded(
                                  child: Text('''Select any number click on dice image After click on dice,if selected number is equal to dice number you will get same point as dice.If you get wrong guess than 2 point will be deducted''',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic
                                  ),))
                          //       showDialog(
                          //         context: context, 
                          //         builder: (BuildContext (context) {
                          //           return AlertDialog(
                          //   title:const Text('''Select any number click on dice image After click on dice,if selected number is equal to dice number you will get same point as dice.If you get wrong guess than 2 point will be deducted''',
                          //   ),
                          //  actions: [
                          //   ElevatedButton(
                          //     onPressed: (){
                          //      Navigator.pop(context);
                          //     }, 
                          //     child:const Text('Back',
                          //     style: TextStyle(
                          //       fontSize: 25,
                          //       fontWeight: FontWeight.bold
                          //      )
                          //     ))
                           
                          //  ],
                          // );
                          //         }
                          //         )
                          //         )
                                
                               
                              ]
                              ),
                  ]
                )
            )
    
    
    
    );
  }
}