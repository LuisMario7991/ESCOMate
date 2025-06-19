import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/imageslider.dart';
import './iia.dart';

import '../widget/drawer.dart';
import './ISC.dart';
import './Lcd.dart';
import './mcscm.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

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
              'Escuela Superior de Computo (ESCOM)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const ImageSlider(),
            const SizedBox(height: 30),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: AutoSizeText.rich(
                  textAlign: TextAlign.justify,
                  TextSpan(
                      text:
                          'Fue fundada en 1993 como parte del Instituto Politécnico Nacional (IPN) en México. Desde entonces, se ha consolidado como una de las instituciones líderes en la formación de profesionales en computación. Ofrece diferentes programas de ciencias computacionales, con un enfoque en la innovación y el desarrollo tecnológico. La escuela se distingue por su compromiso con la excelencia académica y su énfasis en el aprendizaje práctico así como la investigación, preparando a sus estudiantes para enfrentar los retos de la industria tecnológica actual.'),
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                )),
            const Text(
              'Oferta Educativa',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Wrap(spacing: 10.0, runSpacing: 10.0, children: [
              const SizedBox(width: 15),
              FloatingActionButton.extended(
                heroTag: 'isc',
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const Isc())))
                },
                tooltip: 'Da click aqui',
                backgroundColor: Colors.blue.shade200,
                label: const Text('ISC'),
                icon: const Icon(FontAwesomeIcons.laptopCode),
              ),
              FloatingActionButton.extended(
                heroTag: 'iia',
                onPressed: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: ((context) => Iia())))
                },
                tooltip: 'Da click aqui',
                backgroundColor: Colors.blue.shade200,
                label: const Text('IIA'),
                icon: const Icon(FontAwesomeIcons.brain),
              ),
              FloatingActionButton.extended(
                heroTag: 'lcd',
                onPressed: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: ((context) => Lcd())))
                },
                tooltip: 'Da click aqui',
                backgroundColor: Colors.blue.shade200,
                label: const Text('LCD'),
                icon: const Icon(FontAwesomeIcons.chartLine),
              ),
              FloatingActionButton.extended(
                heroTag: 'mcscm',
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Mcscm())))
                },
                tooltip: 'Da click aqui',
                backgroundColor: Colors.blue.shade200,
                label: const Text('MCSCM'),
                icon: const Icon(FontAwesomeIcons.mobile),
              ),
              FloatingActionButton.extended(
                heroTag: 'mciia',
                onPressed: () => {},
                tooltip: 'Da click aqui',
                backgroundColor: Colors.blue.shade200,
                label: const Text('MCIIA'),
                icon: const Icon(FontAwesomeIcons.networkWired),
              ),
              FloatingActionButton.extended(
                heroTag: 'mccd',
                onPressed: () => {},
                tooltip: 'Da click aqui',
                backgroundColor: Colors.blue.shade200,
                label: const Text('MCCD'),
                icon: const Icon(FontAwesomeIcons.searchengin),
              ),
              const SizedBox(
                height: 15,
              )
            ])
          ],
        ),
      ),
    );
  }
}
