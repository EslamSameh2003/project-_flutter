import 'package:flutter/material.dart';

class JobTextField extends StatelessWidget {
  const JobTextField({super.key,  required this.hintText,  required this.controller});
  final String hintText ;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          fillColor:Colors.teal.withOpacity(.2),
          filled: true ,
          hintText: hintText,
          hintStyle: TextStyle(color:Colors.black,fontSize: 25),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(width: 0.5,)),
          focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(width: 1.0,color: Colors.blue)) ,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(width: 0.5)),


        ),
      ),
    );
  }
}
