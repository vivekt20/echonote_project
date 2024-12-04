import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget{
  @override
  State<ListScreen> createState()=> _ListScreenState();
}
class  _ListScreenState  extends State<ListScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Padding(padding: 
      EdgeInsets.all(15.0),
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10,childAspectRatio: 2),

       itemBuilder: (context,index){
      return Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.yellow[100],
          
        ),
        child: Padding(padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(""),
            Text(""),
          ],
        ),
        ),
      );
       }),
      ),
      
      ),
    );
  }
}