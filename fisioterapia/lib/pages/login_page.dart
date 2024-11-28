import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importe o pacote
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../assets/images/backgroundLogin.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0), // Espaçamento horizontal
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centraliza verticalmente
              children: [
                const SizedBox(
                  width: 80, // Largura da imagem
                  height: 80, // Altura da imagem
                  child: Image(
                    image: AssetImage('../assets/images/logo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                    height: 20), // Espaçamento entre a imagem e os inputs
                Text(
                  'Bem Vindo!',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 24, // Tamanho da fonte
                      fontWeight: FontWeight.bold, // Negrito
                      color: Color(0xFF49688D), // Cor do texto
                    ),
                  ),
                ),
                const SizedBox(
                    height: 20), // Espaçamento entre o título e os inputs
                const SizedBox(
                  width: 300, // Defina a largura desejada aqui
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Login',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ), // Borda ao redor do campo de entrada
                      ),
                      prefixIcon: Icon(Icons.person), // Ícone de usuário
                    ),
                  ),
                ),
                const SizedBox(height: 10), // Espaçamento entre os campos
                const SizedBox(
                  width: 300, // Defina a largura desejada aqui
                  child: TextField(
                    obscureText: true, // Oculta o texto digitado (para senha)
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ), // Borda ao redor do campo de entrada
                      ),
                      prefixIcon: Icon(Icons.lock), // Ícone de cadeado
                    ),
                  ),
                ),
                const SizedBox(
                    height: 20), // Espaçamento entre os campos e o botão
                ElevatedButton(
                  onPressed: () {
                    // Navegar para a HomePage quando o botão for clicado
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()),
                    );
                  },
                  // Usando Row para adicionar o ícone ao lado do texto
                  child: Row(
                    mainAxisSize: MainAxisSize.min, // Ajusta o tamanho ao conteúdo
                    children: [
                      Text(
                        'ACESSAR',
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          fontWeight: FontWeight.w700, // Tamanho da fonte do botão
                          color: const Color(0xFF49688D), // Cor do texto
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Espaço entre o texto e o ícone
                      const FaIcon(
                        FontAwesomeIcons.arrowRightFromBracket,
                        size: 10, // Tamanho do ícone
                        color: Color(0xFF49688D), // Cor do ícone
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
