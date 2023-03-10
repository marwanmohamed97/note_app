import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_application/models/note_model.dart';

import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> notes = notesBox.values.toList();

    emit(NotesSuccess());
    return notes;
  }
}
