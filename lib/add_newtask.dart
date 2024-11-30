



import 'package:echo_note/echonote.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class AddNewtask extends StatefulWidget{
  @override
  State<AddNewtask> createState()=> _AddNewTask();
}
class _AddNewTask extends State<AddNewtask>{
  final DateTime dateTime=DateTime.now();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 234, 16),
        leading: IconButton(onPressed: (){
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Echonote()));
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Add new task",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.check,color: Colors.white),
        )],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  
                  decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: TextStyle(color:  const Color.fromARGB(255, 9, 234, 16),),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  
                  maxLines: 25,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle: TextStyle(color:  const Color.fromARGB(255, 9, 234, 16),),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text("${dateTime.day.toString()}/${dateTime.month.toString()}/${dateTime.year.toString()}",
                    style: TextStyle(color:const Color.fromARGB(255, 9, 234, 16), ),),
                    Spacer(),
                    Text("${dateTime.hour.toString()}:${dateTime.minute.toString()}",
                    style: TextStyle(color: const Color.fromARGB(255, 9, 234, 16),),
                    ),
                    

                  ],
                )
              ]
                
                  ),
                )
                    
                  ],
              
              
            
          
        
      
    ),
    );
  }
}