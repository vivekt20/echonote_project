import 'package:appwrite/models.dart';

class Note {
  
  final String title;
  final String content;
  final String title1;
  final List addtolist;
  final String title2;
  final String description;
  final String date;
  final String time;

  Note({
    
    required this.title,
    required this.content,
    required this.title1,
    required this.addtolist,
    required this.title2,
    required this.description,
    required this.date,
    required this.time,
  });

  factory Note.fromDocument(Document doc) {
    return Note(
      
      title: doc.data['title'],
      content: doc.data['content'],
      title1: doc.data['title'],
      addtolist: doc.data['addtolist'],
      title2: doc.data['title'],
      description: doc.data['description'],
      date: doc.data['date'],
      time: doc.data['time'],
      
          );
  }
}