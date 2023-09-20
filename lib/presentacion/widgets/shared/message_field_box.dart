import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  final ValueChanged<String> onValue; //clase que cambia el valor de una variable definida y definimos el tipo de dato a cambiar
  const MessageFieldBox({
    super.key,
    required this.onValue
  });

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
            textController.clear();
            onValue(textValue);
          },) 
      );

    return TextFormField(
    onTapOutside: (event) {
      focusNode.unfocus();
    },
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
      },
    );
  }
}