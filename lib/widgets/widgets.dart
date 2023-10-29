import 'package:flutter/material.dart';

Widget brandName(){
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('W A L L P A P E R  ', style: TextStyle(color: Colors.black, fontSize: 24),),
    Text(' H U B', style: TextStyle(color: Colors.blue, fontSize: 24),)
  ],);
}

OutlineInputBorder searchBarDecoration(){
  return const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40)), borderSide: BorderSide.none);
}