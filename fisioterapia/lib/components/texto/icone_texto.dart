import 'package:flutter/material.dart';

class IconTextComponent extends StatelessWidget {
  final IconData? iconBefore; // Ícone antes pode ser nulo
  final IconData? iconAfter; // Ícone depois pode ser nulo
  final String text;

  const IconTextComponent({
    Key? key,
    required this.iconBefore,
    required this.iconAfter,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(iconBefore, color: Colors.blue), // Ícone antes do texto
        const SizedBox(width: 8), // Espaço entre o ícone e o texto
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 8), // Espaço entre o texto e o ícone
        Icon(iconAfter, color: Colors.blue), // Ícone depois do texto
      ],
    );
  }
}
