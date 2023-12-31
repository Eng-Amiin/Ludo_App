import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
    MaterialApp(
      home:Ludo()
    )
  );
}

class Ludo extends StatefulWidget {
  const Ludo({ Key? key }) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Ludo> {
  int ludoNumber=1;
  int rightLudoNumber=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffef476f),
      appBar: AppBar(
        elevation: 16,
        centerTitle: true,
        title: Text('Ludo App'),
        backgroundColor: Color(0xffef476f),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: InkWell(
                  onTap: () {
                    print('Ludo tapped');
                    setState(() {
                      ludoNumber=Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$ludoNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      rightLudoNumber=Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$rightLudoNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

