import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: 'Edite Notes',
            icon: Icons.check,
          ),
          SizedBox(
            height: 40,
          ),
          CustomTextField(hintText: 'title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'content',
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
