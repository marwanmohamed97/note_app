import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_application/cubits/notes_cubit/notes_cubit.dart';
import 'add_note_form.dart';
import '../../cubits/add_note_cubit/add_note_cubit.dart';

class AddNotebottomSheet extends StatelessWidget {
  const AddNotebottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteFailure) {}
        if (state is AddNoteSuccess) {
          Navigator.pop(context);
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteLoading ? true : false,
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: const SingleChildScrollView(child: AddNotesForm()),
          ),
        );
      },
    );
  }
}
