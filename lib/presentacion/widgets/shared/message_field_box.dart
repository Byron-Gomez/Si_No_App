import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
   
   final focusNode = FocusNode();
   
    final textController = TextEditingController();

    final colors = Theme.of(context).colorScheme;
   
    final OutlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color:  Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration(
        hintText: 'End you message whit a "?" ',
        enabledBorder: OutlineInputBorder,
        focusedBorder: OutlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            print('button: $textValue');
          },) 
      );

    return TextFormField(
    onTapOutside: (event) {
      focusNode.unfocus();
    },
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('submit value $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}