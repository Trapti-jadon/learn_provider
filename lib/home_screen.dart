import 'package:flutter/material.dart';
import 'package:provider_learn/common_widgets/color_widget.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
   int x = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Provider",
          style: TextStyle(color: AppColor.lightColor),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(
                child: Text(
              x.toString(),
              style: TextStyle(fontSize: 50),
            )),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        x++;
        print(x);
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
