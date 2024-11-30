import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget{
  @override
  State<TaskScreen> createState()=>_taskScreenState();
}
class _taskScreenState extends State<TaskScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10), 
        
        itemBuilder: 
        
        ),
    );
  }
}