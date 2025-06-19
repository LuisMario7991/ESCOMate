import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../info/pdf.dart';
import '../widget/drawer.dart';

class Lcd extends StatelessWidget {
  Lcd({super.key});

  final List<String> items = [
    "MERCADOTECNIA: Análisis de tendencias , publicidad dirigida, análisis de preferencias. ",
    "SALUD: Epidemiología, análisis de cobertura, análisis de mercados de medicamentos. ",
    "FINANZAS: Detección de fraudes, análisis de inversiones, análisis de mercados, perfil crediticio, análisis de riesgos. ",
    "BIOINFORMÁTICA: Modelos genéticos, modelos agronómicos. ",
    "ENERGÍA: Análisis del mercado, despacho de carga, análisis de consumos. ",
    "COMERCIO ELECTRÓNICO: Logística, Sistemas de Información Geográfica. ",
    "TRANSPORTE: Planeación de infraestructura y servicios, modelos de tráfico, geolocalizaciones. ",
    "EDUCACIÓN: Planeación y evaluación educativa. ",
    "NEGOCIOS: Planeación financiera, planeación de mercados, planeación de la producción. ",
    "SEGURIDAD: Análisis de tendencias, análisis geoestadístico, análisis delictivo. ",
    "PROTECCIÓN CIVIL: Mapas de riesgos, estrategias de prevención. ",
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
              'Licenciatura en Ciencia de Datos',
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
                'Formar expertos capaces de extraer conocimiento implícito y complejo, potencialmente útil a partir de grandes conjuntos de datos, utilizando métodos de inteligencia artificial, aprendizaje de máquina, estadística, sistemas de bases de datos y modelos matemáticos sobre comportamientos probables, para apoyar la toma de decisiones de alta dirección.',
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
                          'El egresado de la Licenciatura de Ciencia de Datos será capaz de extraer conocimiento implícito y complejo, potencialmente útil (descubrimiento de patrones, desviaciones, anomalías, valores anómalos, situaciones interesantes, tendencias), a partir de grandes conjuntos de datos. Utiliza los métodos de la inteligencia artificial, aprendizaje de máquina, estadística y sistemas de bases de datos para la toma de decisiones de alta dirección, fundadas en los datos y modelos matemáticos sobre comportamientos probables, deseables e indeseables, participando en dinámicas de trabajo colaborativo e interdisciplinario con sentido ético y responsabilidad social.',
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
                'Este profesional podrá desempeñarse en los ámbitos público y privado en campos ocupacionales como los que se enlistan a continuación:',
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
                                'assets/mapaCurricularLCD2020H.pdf', // Ruta al archivo PDF
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
