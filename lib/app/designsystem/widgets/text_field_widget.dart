import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final Function(String) onChanged;

  const TextFieldWidget({
    Key? key,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty || value == "") {
          return "Campo obrigatório";
        }
      },
      onChanged: onChanged,
      decoration: const InputDecoration(
          labelText: "Nome", border: OutlineInputBorder()),
    );
  }
}
