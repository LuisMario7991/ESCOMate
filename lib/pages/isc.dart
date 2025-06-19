import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../widget/drawer.dart';
import '../info/pdf.dart';

class Isc extends StatelessWidget {
  const Isc({super.key});

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
              'Ingeniería en Sistemas Computacionales',
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
                'Formar ingenieros en sistemas computacionales de sólida preparación científica y tecnológica en los ámbitos del desarrollo de software y hardware, que propongan, analicen, diseñen, desarrollen, implementen y gestionen sistemas computacionales a partir de tecnologías de vanguardia y metodologías, normas y estándares nacionales e internacionales de calidad; líderes de equipos de trabajo multidisciplinarios y multiculturales, con un alto sentido ético y de responsabilidad.',
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
                          'Los aspirantes a estudiar este programa deberán tener conocimientos en matemáticas, física e informática. Es también conveniente que posea conocimientos de inglés. Así mismo, deberán contar con habilidades como análisis y síntesis de información, razonamiento lógico y expresión oral y escrita. Así como actitudes de respeto y responsabilidad.',
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
                          'El egresado del programa académico de Ingeniería en Sistemas Computacionales podrá desempeñarse en equipos multidisciplinarios e interdisciplinarios en los ámbitos del desarrollo de software y hardware, sustentando su actuación profesional en valores éticos y de responsabilidad social, con un enfoque de liderazgo y sostenibilidad en los sectores público y privado.',
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
                'El campo profesional en el que se desarrollan los egresados de este Programa Académico es muy amplio, se localiza en los sectores público y privado; en consultorías, en empresas del sector financiero, comercial, de servicios o bien en aquellas dedicadas a la innovación, en entidades federales, estatales, así como pequeño empresario creando empresas emergentes (startups).',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14),
              ),
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
                                'assets/mapaCurricularISC2020.pdf', // Ruta al archivo PDF
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
