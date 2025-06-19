import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../widget/drawer.dart';
import '../info/pdf.dart';

class Mcscm extends StatelessWidget {
  Mcscm({super.key});
  final List<String> items = [
    "Poseer título profesional o certificado oficial de terminación de estudios en el área de Ingeniería en Sistemas Computacionales, Telecomunicaciones, Electrónica o Matemáticas.",
    "Aprobar el proceso de admisión de conformidad a lo establecido en el Reglamento de Estudios de Posgrado y lo acordado en el H. Colegio de Profesores de la SEPI-ESCOM.",
    "No haber causado baja en algún posgrado del IPN, salvo que haya sido revocada por el Colegio Académico de Posgrado.",
    "4. Es importante mencionar que, para el trámite de obtención de grado deberá presentar evidencia del dominio del idioma nivel B1 en mínimo dos habilidades."
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
              'Maestría en Ciencias en Sistemas Computacionales Móviles',
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
                'Formar maestros en ciencias con una orientación científica altamente calificados y competitivos a nivel nacional e internacional, con la capacidad de contribuir y realizar investigación en las ciencias computacionales móviles.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: AutoSizeText(
                'Innovar, implementar y aplicar la computación móvil para atender adecuadamente las necesidades de los sectores productivo y social del país.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Requisitos de Ingreso',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
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
                                'assets/mapaCurricularMCSCM.pdf', // Ruta al archivo PDF
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
