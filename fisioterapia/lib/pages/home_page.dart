import 'package:flutter/material.dart';
import 'package:fisioterapia/components/Drawer/custom_drawer.dart';
import 'package:fisioterapia/components/button/custom_buttom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> pacientes = ["Paciente 1", "Paciente 2", "Paciente 3", "Paciente 4", "Paciente 5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAEAFE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFDAEAFE),
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF6c95c6),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.menu),
                  color: Colors.white,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            );
          },
        ),
      ),
      drawer: CustomDrawer(
        iconColor: const Color(0xFF6c95c6),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  label: 'Testes',
                  onPressed: () {
                    print('Botão 1 clicado!');
                  },
                  color: const Color(0xFF6c95c6),
                  icon: Image.asset('../assets/icons/relatorio.png', width: 50),
                  padding: const EdgeInsets.all(10.0),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                  textColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                const SizedBox(width: 20),
                CustomButton(
                  label: 'Relatório',
                  onPressed: () {
                    print('Relatórios');
                  },
                  color: const Color(0xFF6c95c6),
                  icon: Image.asset('../assets/icons/testes.png', width: 48),
                  padding: const EdgeInsets.all(10.0),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                  textColor: const Color.fromARGB(255, 255, 255, 255),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF6c95c6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          style: TextStyle(
                            color: const Color(0xFF6c95c6),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Pesquisar paciente',
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.search, color: Color(0xFF6c95c6)),
                            hintStyle: TextStyle(color: Color(0xFF6c95c6)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: ListView.builder(
                          itemCount: pacientes.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ListTile(
                                  leading: const Icon(Icons.person, color: Color(0xFF6c95c6)), // Ícone de pessoa
                                  title: Text(
                                    pacientes[index],
                                    style: const TextStyle(
                                      color: Color(0xFF6c95c6),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.arrow_forward, color: Color(0xFF6c95c6)),
                                    onPressed: () {
                                      // Função para ir para próxima tela
                                      print('Selecionado: ${pacientes[index]}');
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
