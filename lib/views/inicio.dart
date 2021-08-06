import 'package:flutter/material.dart';



class Inicio extends StatelessWidget {
  static String id = 'inicio';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SafeArea(
          child: _bodyPage(context),
        ),  
    );
  }

  Widget _bodyPage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
       Padding(
         padding: EdgeInsets.only(
           top: 16.0,
           left: 16.0,
           right: 16.0,
           ),
           child: _appBar(),
           ),
           _body(),
       ],
    );
  }
  

  Widget _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: Icon(Icons.account_circle),
          
          onTap: (){
            print('Hola');
          },
        ),
        
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
           
            Row(
              children: [
                Text(
                  'Schools ',
                  style: TextStyle(
                    fontSize: 19.0,
                  )
                  ),
                Text(
                  'Maps',
                  style: TextStyle(
                    fontSize: 19.0,
                    
                  )
                  
                  ),
              ],
            )
            
          ],
        )
      ],
    );
  }
  
}

Widget _body() {
  final double _borderValue =35.0;
  return Expanded(
    child: ListView(),
    );
}





