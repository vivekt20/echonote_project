import 'package:echo_note/appwriteservices.dart';
import 'package:echo_note/note.dart';
import 'package:flutter/material.dart';

class AddNewnote extends StatefulWidget {
  
 
  @override
  State<AddNewnote> createState() => _AddNewnoteState();
}

class _AddNewnoteState extends State<AddNewnote> {
  

  
  
 final titlecontroller=TextEditingController();
 final contentcontroller=TextEditingController();

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 234, 16),
        leading: IconButton(
          onPressed: () {
        
            Navigator.pop(context); 
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Add new Note",
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
              
                 
              },
              icon: Icon(Icons.check),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: titlecontroller,
              decoration: InputDecoration(
                labelText: 'Title',
                labelStyle: TextStyle(color: const Color.fromARGB(255, 9, 234, 16)),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: contentcontroller,
              maxLines: 25,
              decoration: InputDecoration(
                labelText: 'Content',
                labelStyle: TextStyle(color: const Color.fromARGB(255, 9, 234, 16)),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
