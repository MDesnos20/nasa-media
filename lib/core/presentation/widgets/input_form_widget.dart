
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputFormWidget extends StatelessWidget {
  const InputFormWidget({
    required this.placeholder,
    required this.controller,
    required this.validator,
    super.key,
  });

  final String placeholder;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(hintText: placeholder),
          validator: validator,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[,.]{0,1}[0-9]*')),
            TextInputFormatter.withFunction(
              (oldValue, newValue) => newValue.copyWith(
                text: newValue.text.replaceAll(',', '.'),
              ),
            ),
],
        ),
      ),
    );
  }
}
