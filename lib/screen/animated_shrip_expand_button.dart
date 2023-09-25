import 'package:flutter/material.dart';

class AnimatedShripExpandButton extends StatefulWidget {
  const AnimatedShripExpandButton({super.key});

  @override
  State<AnimatedShripExpandButton> createState() => _AnimatedShripExpandButtonState();
}

class _AnimatedShripExpandButtonState extends State<AnimatedShripExpandButton> with SingleTickerProviderStateMixin {
  double _scale=0.5;
  AnimationController? _controller;
  @override

  void initState() {
    // TODO: implement initState
    _controller= AnimationController(duration: Duration(milliseconds: 500,), vsync: this,lowerBound: 0.0,upperBound: 0.1)..addListener(() {
      setState(() {

      });
    });
    super.initState();
  }

  void _tapDown(TapDownDetails details){
    _controller?.forward();
  }
  void _tapUp(TapUpDetails details){
    _controller?.reverse();
  }
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(

      body: Center(
        child: GestureDetector(
          onTapDown: _tapDown,
          onTapUp: _tapUp,
          child: Transform.scale(
            scale: 1-_controller!.value,
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blueAccent
              ),
              alignment: Alignment.center,
              child: const Text("Long Tap",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
          ),

        ),
      ),

    );
  }
}
