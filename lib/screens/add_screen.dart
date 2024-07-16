import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_notes_app/models/notes_operation.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String titleText='';
    String descText='';
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Notes App',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
              fontFamily: 'Times New Roman'
          ),),
        centerTitle: true,
        elevation: 1,

        backgroundColor:Colors.black54,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                border:UnderlineInputBorder(
                ),
                hintText: 'Enter Title',
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              style:const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ) ,
              onChanged: (value){
                titleText=value;
              },

            ),
            TextField(

              decoration:  InputDecoration(
                border:UnderlineInputBorder(
                ),
                hintText: 'Enter Description',
                hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              style:const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ) ,
              onChanged: (value){
                descText=value;
              },

            ),

            SizedBox(height: 10,),

            ElevatedButton(
                onPressed: (){
                  Provider.of<NotesOperation>(
                      context,listen: false).
                  addNewNote(titleText, descText);
                  Navigator.pop(context);
                },
                child:Text('Add Note',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),))
          ],

        ),
      ),
    );
  }
}
