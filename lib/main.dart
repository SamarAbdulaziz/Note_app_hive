import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_tharwat_samy/constant.dart';
import 'package:notes_app_tharwat_samy/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_tharwat_samy/cubits/my_bloc_observer.dart';
import 'package:notes_app_tharwat_samy/models/note_model.dart';
import 'package:notes_app_tharwat_samy/views/Notes_view.dart';
import 'package:notes_app_tharwat_samy/views/edit_note_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NotesModelAdapter());
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        initialRoute: NotesView.routeName,
        routes: {
          NotesView.routeName: (context) => NotesView(),
          EditNoteView.routeName: (context) => EditNoteView(),
        },
      ),
    );
  }
}
