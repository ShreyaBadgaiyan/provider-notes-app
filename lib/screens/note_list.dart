import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_notes_app/models/notes_operation.dart';
import 'package:provider_notes_app/screens/add_screen.dart';

import '../widgets/notes_card.dart';

class NoteListScreen extends StatelessWidget {
  const NoteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey,
      appBar: AppBar(
        title: const Text('Notes App',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 28,
          fontFamily: 'Arial'
        ),),
        centerTitle: true,
        elevation: 1,

        backgroundColor:Colors.black54,
      ),
      body: Consumer<NotesOperation>(
        builder:
            (BuildContext context,
            NotesOperation value,
             child) {
          return ListView.builder(
              itemCount: value.getNotes.length,
              itemBuilder: (context,index){
                return NotesCard(note: value.getNotes[index],);
              });
            },


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddScreen()));
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.black54,
        ),


      ),
    );
  }
}
