import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Color iconColor;

  const CustomDrawer({super.key, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF6c95c6), // Cor de fundo do Drawer
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15), // Ajusta o padding
              decoration: BoxDecoration(
                color: Colors.transparent, // Mantém a transparência para o cabeçalho
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Alinha à esquerda
                children: [
                  Row(
                    children: [
                      Icon(Icons.person, color: Colors.white, size: 20), // Ícone do usuário
                      SizedBox(width: 5), // Reduz o espaçamento entre o ícone e o texto
                      Text(
                        'Usuário',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Espaçamento entre o nome e os dados
                  Text(
                    'Atendimentos realizados: 22', // Dados de atendimentos realizados
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Pendentes: 5', // Dados de número de pacientes
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ), // Espaçamento entre os textos
                  
                  Text(
                    'Nº de pacientes: 10', // Dados de número de pacientes
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            _buildMenuItem(Icons.edit_document, 'Cadastro de Paciente', context),
            _buildMenuItem(Icons.bar_chart, 'Relatórios', context),
            _buildMenuItem(Icons.analytics, 'Testes', context),
            _buildMenuItem(Icons.account_circle, 'Minha Conta', context),
             _buildMenuItem(Icons.support_agent, 'Suporte', context),
            _buildMenuItem(Icons.exit_to_app, 'Logout', context),
            
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Fundo branco
          borderRadius: BorderRadius.circular(10), // Bordas arredondadas
        ),
        child: ListTile(
          leading: Icon(icon, color: const Color(0xFF6c95c6)), // Cor do ícone
          title: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF6c95c6), // Cor do texto
              fontWeight: FontWeight.w800, // Ajusta o peso da fonte
              fontSize: 12, // Tamanho da fonte (opcional)
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
