import 'package:echo_note/echonote.dart';
import 'package:flutter/material.dart';

class AddNewlist extends StatefulWidget{
  @override
  State<AddNewlist>createState()=>_AddNewlistState();
}
class _AddNewlistState extends State<AddNewlist>{
  final _titlecontroller=TextEditingController();
  final _listController=TextEditingController();

List<String> items = [];
  

  void _addItem() {
    setState(() {
      
      if (_listController.text.isNotEmpty) {
        items.add(_listController.text);
        _listController.clear();
      }
    });
  }
  void _deleteItem(int index) {
    setState(() {
      items.removeAt(index); 
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 9, 234, 16),
        leading: IconButton(onPressed: (){
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Echonote()));


        }, icon: Icon(Icons.arrow_back)),
        title: Text("Add New list",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        actions: [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Echonote()));
        }, icon: Icon(Icons.check))
        
        
      ]),
        
        
        
        
      
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: TextField(
                controller: _titlecontroller,
                
                decoration: InputDecoration(
                  labelText: 'Title',
                  labelStyle: TextStyle(color:  const Color.fromARGB(255, 9, 234, 16),),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            
            SizedBox(height: 10),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: TextField(
                controller: _listController,
                
                decoration: InputDecoration(
                  labelText: 'Add new list',
                  labelStyle: TextStyle(color:  const Color.fromARGB(255, 9, 234, 16),),
                  suffixIcon: IconButton(onPressed: _addItem,
                  icon: Icon(Icons.add)),
                  border: OutlineInputBorder(),
                ),
              ),
              
            ),
            Expanded(
              child:ListView.builder(
                itemCount: items.length,
                itemBuilder: (context,index){
              return ListTile(
                
                title: Text(items[index]),
                trailing: GestureDetector(
                  onTap: () {
                    
                  },
                 child: IconButton(onPressed: 
                   () => _deleteItem(index),
                  icon: Icon(Icons.delete_forever,)),));
              
              }
              )
            )
          ]
        ),
        )
    );
  }
}