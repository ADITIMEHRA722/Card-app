import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui2/util/my_button.dart';
import 'package:ui2/util/my_card.dart';
import 'package:ui2/util/my_listtile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

// page controller
final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("My ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                      Text("Card",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                          )),
                    ],
                  ),

                  // put plus button
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        // borderRadius: BorderRadius.circular(12)
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            // cards

            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                MyCard(balance: 5350.40, cardNumber: 3355, expiryMonth: 11, expiryYear: 24, color: Colors.deepPurple[300]), 
                MyCard(balance: 6650.40, cardNumber: 6845, expiryMonth: 10, expiryYear: 22, color: Colors.deepOrange[300]),
                MyCard(balance: 49.40, cardNumber: 5545, expiryMonth: 8, expiryYear: 25, color: Colors.greenAccent),
                MyCard(balance: 5350.40, cardNumber: 6845, expiryMonth: 5, expiryYear: 22, color: Colors.redAccent),
                MyCard(balance: 0950.40, cardNumber: 2245, expiryMonth: 7, expiryYear: 21, color: Colors.yellowAccent),
                MyCard(balance: 5390.40, cardNumber: 3345, expiryMonth: 8, expiryYear: 20, color: Colors.pinkAccent),
                
                ],
              ),
            ), 
SizedBox(height: 20,),
            SmoothPageIndicator(controller: _controller , count: 6 , effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800, 
             // strokeWidth: 2,
             
            )),

            // 3 buttons ->  send + pay + bills
            
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                 
                  // send 
                  MyButton(image: Image.asset('lib/icons/send-money.png'), text: 'send'),
                
                  // pay 
                  MyButton(image: Image.asset('lib/icons/share.png'), text: 'Pay') ,
                
                  // bills 
                  MyButton(image: Image.asset('lib/icons/bill.png') , text:'  Bill' )
              ],
              ),
            ), 

            SizedBox(height: 20,),

            // column -> stats + transaction
             
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:25.0),
               child: Column(
                children: [
               // statistics 
              MyListTile(iconImagePath: 'lib/icons/share.png', tileTitle: 'Statistic', tileSubTitle: 'Payments and icome'),
             
               // transaction
              MyListTile(iconImagePath: 'lib/icons/hand.png', tileTitle: 'Transaction', tileSubTitle: 'Transaction History'),
             
                ],
               ),
             )


          ],
        ),
      ),
    );
  }
}
