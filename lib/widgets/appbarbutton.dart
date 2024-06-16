import 'package:flutter/material.dart';
class Appbutton extends StatelessWidget {
  void Function() ontap;
   Appbutton({super.key,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFABB0BA),
        borderRadius: BorderRadius.circular(60),


      ),
      height: 32,
      width: 35,
      child: Center(child: IconButton(
        onPressed: ontap,
        icon: const Icon(Icons.arrow_back_ios,color: Colors.white,size: 17,),
      )

      ),
    );
  }
}
