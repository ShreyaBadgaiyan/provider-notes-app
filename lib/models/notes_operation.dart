import 'package:flutter/cupertino.dart';

import 'note.dart';

class NotesOperation extends ChangeNotifier{
  List<Note> _notes=[];

  List<Note> get getNotes{
    return _notes;
  }

  NotesOperation(){
    addNewNote('First note', 'This is first note');
  }
  void addNewNote(String title,String description){
    Note note=Note(title,description);
    _notes.add(note);
    notifyListeners();  }


}