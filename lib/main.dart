import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_notes_app/models/notes_operation.dart';
import 'package:provider_notes_app/screens/note_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (context)=>NotesOperation(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: NoteListScreen(),
      ),
    );
  }
}
