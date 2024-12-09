import 'package:flutter/material.dart';

class PatientDetailPage extends StatefulWidget {
  final String paciente;

  const PatientDetailPage({super.key, required this.paciente});

  @override
  // ignore: library_private_types_in_public_api
  _PatientDetailPageState createState() => _PatientDetailPageState();
}

class _PatientDetailPageState extends State<PatientDetailPage> {
  bool _isExtended = false;

  final List<Map<String, dynamic>> infoList = [
    {'text': 'Mateus', 'iconBefore': Icons.person},
    {'text': '20 Anos', 'iconBefore': Icons.calendar_month},
    {'text': 'Fisioterapia no Joelho', 'iconBefore': Icons.personal_injury},
    {'text': 'Terça e Quinta', 'iconBefore': Icons.accessible},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDAEAFE),
        title: const Text("Detalhes do Paciente"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Voltar para a tela anterior
          },
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF6c95c6),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  height: _isExtended ? 250 : 170, // Ajusta altura dinamicamente
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 2.0,
                                mainAxisSpacing: 2.0,
                                childAspectRatio: 3),
                        itemCount: infoList.length,
                        itemBuilder: (context, index) {
                          final item = infoList[index];
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                item['iconBefore'],
                                color: Colors.white,
                              ),
                              const SizedBox(width: 8.0),
                              Expanded(
                                child: Text(
                                  item['text'],
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      if (_isExtended) ...[
                        const Text(
                          'Detalhes adicionais sobre o paciente. Esses detalhes podem incluir histórico médico, tratamentos, etc.',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Botão entre o card e fora
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            top: _isExtended ? 250 : 180,
            left: MediaQuery.of(context).size.width / 2 - 25, // Centraliza o botão
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _isExtended = !_isExtended;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(color: Color(0xFF6c95c6), width: 1),
                elevation: 10,
                shape: const CircleBorder(), // Formato circular do botão
              ),
              child: Icon(
                _isExtended ? Icons.expand_less : Icons.expand_more,
                color: const Color(0xFF6c95c6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
