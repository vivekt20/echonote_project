

import 'package:echo_note/add_newlist.dart';
import 'package:echo_note/add_newnote.dart';
import 'package:echo_note/add_newtask.dart';
import 'package:flutter/material.dart';

class Echonote extends StatefulWidget{
  @override
  State<Echonote> createState()=> _EchoNoteState();
}
class _EchoNoteState extends State<Echonote>{
   bool isFABVisible = true;


  
    @override
    Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 9, 234, 16),
          title: Text("Echo Note",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
          
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.white,
            tabs: [ 
            Tab(text: 'Text'),
            Tab(text: 'List'),
            Tab(text: 'Task'),
          ]),
        ),
        floatingActionButton: isFABVisible?
        
        FloatingActionButton(onPressed: (){
          setState(() {
            isFABVisible=false;
          });
          

        },
        backgroundColor: const Color.fromARGB(255, 9, 234, 16),
        child: Text("+",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),
        
        ),
        

        )
        :null,
        floatingActionButtonLocation:  FloatingActionButtonLocation.miniEndFloat,
        body: Stack(
          children: [
            if (!isFABVisible)
            Positioned(
              right: 10,
              bottom: 20,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AddNewtask()));
                    },
                    mini: true,
                    backgroundColor: const Color.fromARGB(255, 9, 234, 16),
                    child: Icon(Icons.add_task),
                  ),
                  SizedBox(height: 10),
                  FloatingActionButton(
                    onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AddNewlist()));
                    },
                    backgroundColor: const Color.fromARGB(255, 9, 234, 16),
                    mini: true,
                    child: Icon(Icons.check_box),
                  ),
                  SizedBox(height: 10),
                  FloatingActionButton(
                    onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AddNewnote()));
                    },
                    backgroundColor: const Color.fromARGB(255, 9, 234, 16),
                    child: Icon(Icons.menu),
                  ),
          ],
        ),
        
      
      ),
          ]
    )
      ),
    );
    
  }
}