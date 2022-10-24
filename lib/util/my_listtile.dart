import 'package:flutter/material.dart'; 

class MyListTile extends StatelessWidget {
  final String iconImagePath ; 
  final String tileTitle; 
  final String tileSubTitle; 


  const MyListTile({Key? key , 
  required  this.iconImagePath  , 
  required this.tileTitle , 
  required this.tileSubTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.only(bottom:20.0),
      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    
                    Row(
                      children: [
                      // icon 
                    Container(
                      height: 70, 
                      padding: EdgeInsets.all(12),

                      child: Image.asset(iconImagePath ),
                      decoration: BoxDecoration(
                        color: Colors.grey[100], 
                        borderRadius: BorderRadius.circular(12)
                      ),
                    ), 
 SizedBox(width: 20,),
                    Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                     
                      Text(tileTitle, 
                      style: TextStyle(fontSize: 20 , 
                      fontWeight: FontWeight.bold),),
                      SizedBox(height: 12,),
                      Text(tileSubTitle , 
                       style: TextStyle(fontSize: 16 , 
                      color: Colors.grey[700]),)
                    ],), 
                    ],),

                  

                    Icon(Icons.arrow_forward_ios)
                  ],),
    );
    
  }
}