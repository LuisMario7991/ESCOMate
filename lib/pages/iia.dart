import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../widget/drawer.dart';
import '../info/pdf.dart';

class Iia extends StatelessWidget {
  Iia({super.key});

  final List<String> items = [
    "MEDICINA PERSONALIZADA: Procesos en el ámbito médico tales como el pre diagnóstico, análisis de imágenes médicas, análisis de historiales clínicos.",
    "CIUDADES INTELIGENTES Y SOSTENIBLES: Sistemas inteligentes para mejorar la calidad de vida aplicados al transporte autónomo, identificación biométrica, detección de fraude, prevención y detección de accidentes, tutores inteligentes, control de tráfico vehicular, monitoreo y alertamiento ambiental, protección civil.",
    "ASISTENCIA Y MOVILIDAD PARA PERSONAS CON DISCAPACIDAD O DE LA TERCERA EDAD: Recursos que faciliten la movilidad y el acceso a servicios a través de diferentes medios, como: sillas de ruedas autónomas, guías inteligentes, traductores automáticos, generadores de texto, software de terapia y de acompañamiento.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ESCOMate'),
        backgroundColor: Colors.blue.shade700,
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Ingeniería en Inteligencia Artificial',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Objetivo',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: AutoSizeText(
                'Formar expertos capaces de desarrollar sistemas inteligentes utilizando diferentes metodologías en las diferentes etapas de desarrollo y aplicando algoritmos en áreas como aprendizaje de máquina, procesamiento automático de lenguaje natural, visión artificial y modelos bioinspirados para atender las necesidades de los diferentes sectores de la sociedad a través de la generación de procesos y soluciones innovadoras.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Perfil de Ingreso
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Perfil de Ingreso',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: AutoSizeText(
                          'Los estudiantes que ingresen al Instituto Politécnico Nacional, en cualquiera de sus programas y niveles, deberán contar con los conocimientos y las habilidades básicas que garanticen un adecuado desempeño en el nivel al que solicitan su ingreso. Asimismo, deberán contar con las actitudes y valores necesarios para responsabilizarse de su proceso formativo y asumir una posición activa frente al estudio y al desarrollo de los proyectos y trabajos requeridos, coincidentes con el ideario y principios del IPN.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                // Perfil de Egreso
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Perfil de Egreso',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: AutoSizeText(
                          'El egresado de la Ingeniería en Inteligencia Artificial se desempeñará colaborativamente en equipos multidisciplinarios en el análisis, diseño, implementación, validación, implantación, supervisión y gestión de sistemas inteligentes, aplicando algoritmos en áreas como aprendizaje de máquina, procesamiento automático de lenguaje natural, visión artificial y modelos bioinspirados; ejerciendo su profesión con liderazgo, ética y responsabilidad social.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Campo Laboral',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: AutoSizeText(
                'Este profesional podrá desempeñarse en el desarrollo y aplicación de la Inteligencia Artificial, en los ámbitos público y privado, en campos ocupacionales como los que se enlistan a continuación:',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListView.builder(
              itemCount: items.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 6.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(" * ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(items[index],
                              style: const TextStyle(fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Mapa Curricular',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(Icons.download, color: Colors.blue),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PdfViewerPage(
                            namepath:
                                'assets/mapaCurricularIIA2020.pdf', // Ruta al archivo PDF
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
