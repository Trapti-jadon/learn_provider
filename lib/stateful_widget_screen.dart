import 'package:flutter/material.dart';

class StatefulWidgetScreen extends StatefulWidget {
  const StatefulWidgetScreen({super.key});

  @override
  State<StatefulWidgetScreen> createState() => _StatefulWidgetScreenState();
}

class _StatefulWidgetScreenState extends State<StatefulWidgetScreen> {
  int count = 48;
  @override
  Widget build(BuildContext context) {
    print("build");
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Stateful"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
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