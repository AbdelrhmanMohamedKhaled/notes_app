import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_botton.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: 'Content',
              maxLine: 5,
            ),
            SizedBox(
              height: 45,
            ),
            CustomButton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
