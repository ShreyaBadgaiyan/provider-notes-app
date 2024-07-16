import 'package:flutter/material.dart';

import '../models/note.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key, required this.note});

  final Note note;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(note.title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 5,),
          Text(note.description,style:
            TextStyle(
                fontSize: 16,

            ),)
        ],
      ),
    );
  }
}
