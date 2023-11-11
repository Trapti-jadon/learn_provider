import 'dart:async';

import 'package:flutter/material.dart';

class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({super.key});

  @override
  State<WhyProviderScreen> createState() => _WhyProviderScreenState();
}

class _WhyProviderScreenState extends State<WhyProviderScreen> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) { 
      count++;
      print(count);
      setState(() {
         
      });
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Why Provider Use"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          Container(
            child: Center(
              child: Text(count.toString(),style: TextStyle(fontSize: 48),),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          count++;
        });
        
      },
      child: Icon(Icons.add),
      ),
    );
  }
}