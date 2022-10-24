import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Image image; 
  final String text;

  const MyButton({Key? key , required this.image , required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Column(
                  children: [
                    // Icon
                     Container(
                    height: 70 , 
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.grey[100], 
                    borderRadius: BorderRadius.circular(20), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400, 
                        blurRadius: 40,
                        spreadRadius: 10,
                      )
                    ]),
                    child: Center(child: image),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  // text
                  Text(text , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold, 
                  color: Colors.grey[700],
                  ))
                  ],
                 );
    
  }
}