import 'package:depi_project/bloc/notes_bloc.dart';
import 'package:depi_project/bloc/notes_event.dart';
import 'package:depi_project/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data/db/notes_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotesDatabase.instance.database;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NotesBloc()..add(LoadNotesEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes App',
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const HomeView(),
      ),
    );
  }
}
