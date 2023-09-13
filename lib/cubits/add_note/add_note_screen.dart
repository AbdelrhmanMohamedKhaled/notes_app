import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note/add_note_cubit.dart';
import 'package:note_app/cubits/add_note/add_note_state.dart';

class AddNoteScreen extends StatefulWidget {
	const AddNoteScreen({Key? key}) : super(key: key);
	
	@override
	_AddNoteScreenState createState() => _AddNoteScreenState();
}
	
class _AddNoteScreenState extends State<AddNoteScreen> {
	final screenCubit = AddNoteCubit();
	
	@override
	void initState() {
		screenCubit.loadInitialData();
		super.initState();
	}
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: BlocConsumer<AddNoteCubit, AddNoteState>(
				bloc: screenCubit,
				listener: (BuildContext context, AddNoteState state) {
					if (state.error != null) {
						// TODO your code here
					}
				},
				builder: (BuildContext context, AddNoteState state) {
					if (state.isLoading) {
						return Center(child: CircularProgressIndicator());
					}
	
					return buildBody(state);
				},
			),
		);
	}
	
	Widget buildBody(AddNoteState state) {
		return ListView(
			children: [
				// TODO your code here
			],
		);
	}
}
