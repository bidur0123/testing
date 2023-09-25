import 'dart:math';

import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Offset _offset=Offset.zero;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details){
        setState(() =>
        _offset+=details.delta);

      },
      child: Scaffold(
        appBar: AppBar(),
        body: Transform(
          transform: Matrix4.identity()..setEntry(3, 2,0.001)..rotateX(_offset.dy*pi/180)..rotateY(_offset.dx *pi/180),
          alignment: Alignment.center,
          child: const Center(
              child: Cube()
          ),
        ),
      ),
    );
  }
}
class Cube extends StatelessWidget {
  const Cube({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform(
          transform: Matrix4.identity()..translate(0.0,0.0,-100.0),
          child: Container(
            height: 200,
            width: 200,
            decoration:const  BoxDecoration(
                color: Colors.red
            ),
            child:const  CircleAvatar(backgroundColor: Colors.white,),
          ),
        ),
        // Right Side
        Transform(
          transform: Matrix4.identity()..translate(100.0,0.0,0.0)..rotateY(-pi/2),
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,
            decoration:const  BoxDecoration(
                color: Colors.red
            ),
            alignment: Alignment.center,
            child:const  CircleAvatar(backgroundColor: Colors.white,),
          ),
        ),

        // bottom Side
        Transform(
          transform: Matrix4.identity()..translate(0.0,100.0,0.0)..rotateX(pi/2),
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,
            decoration:const  BoxDecoration(
                color: Colors.red
            ),
          ),
        ),
        // left side
        Transform(
          transform: Matrix4.identity()..translate(-100.0,0.0,0.0)..rotateY(-pi/2),
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,

            decoration:const  BoxDecoration(

                color: Colors.red
            ),
          ),
        ),


        // back side
        Transform(
          transform: Matrix4.identity()..translate(0.0,0.0,100.0),
          child: Container(
            height: 200,
            width: 200,
            decoration:const  BoxDecoration(
                color: Colors.red
            ),
          ),
        ),
        // top side

        // top side
        Transform(
          transform: Matrix4.identity()..translate(0.0,-100.0,0.0)..rotateX(-pi/2),
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,
            decoration:const  BoxDecoration(
                color: Colors.red
            ),
          ),
        ),
      ],
    );
  }
}

