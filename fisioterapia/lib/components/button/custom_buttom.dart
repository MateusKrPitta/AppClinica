import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;
  final Widget? icon; // Ícone ou imagem opcional
  final EdgeInsets padding;
  final double fontSize; // Tamanho do texto
  final FontWeight fontWeight; // Peso da fonte
  final Color textColor; // Cor do texto

  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.color = Colors.blue,
    this.icon, // Inicialize o ícone
    this.padding = const EdgeInsets.all(8.0),
    this.fontSize = 16.0, // Defina um tamanho de fonte padrão
    this.fontWeight = FontWeight.normal, // Defina um peso de fonte padrão
    this.textColor = Colors.white, // Cor do texto (padrão branco)
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Define a cor do botão
      ),
      onPressed: onPressed,
      child: Padding(
        padding: padding, // Aplica o padding aqui
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ajusta o tamanho da coluna ao conteúdo
          children: [
            if (icon != null) ...[
              icon!, // Exibe a imagem ou ícone
              const SizedBox(height: 10), // Espaçamento entre imagem e texto
            ],
            Text(
              label,
              style: TextStyle(
                fontSize: fontSize, // Aplica o tamanho do texto
                fontWeight: fontWeight, // Aplica o peso do texto
                color: textColor, // Aplica a cor do texto
              ),
            ),
          ],
        ),
      ),
    );
  }
}
