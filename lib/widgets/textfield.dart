import 'package:flutter/material.dart';
import 'package:kin/constant.dart';

class Mytextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  final bool Obsecuretext;

  const Mytextfield({
    Key? key,
    required this.controller,
    required this.hinttext,
    required this.Obsecuretext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              obscureText: Obsecuretext,
              decoration: InputDecoration(
                hintText: hinttext,
                fillColor: const Color(0XFF717782),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 18.0,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: color2, // Change this to your desired color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 0.5,

                    color: Colors.grey, // Change this to your desired color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

