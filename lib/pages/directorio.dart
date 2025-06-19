import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widget/drawer.dart';
import '../info/data_directorio.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  // Variables para controlar la visibilidad de las secciones
  Map<String, bool> sectionVisibility = {
    "Dirección": true,
    "Sub. académica": false,
    "Sección de posgrado": false,
    "Servicios educativos": false,
    "Sub. administrativa": false,
  };

  // Límites de elementos a mostrar por sección
  final Map<String, int> sectionLimits = {
    "Dirección": 4,
    "Sub. académica": 8,
    "Sección de posgrado": 3,
    "Servicios educativos": 5,
    "Sub. administrativa": 4,
  };

  // Función para construir el ListTile
  Widget buildListTile(Map<String, String> item) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: const Icon(
          FontAwesomeIcons.personChalkboard,
          size: 30,
          color: Colors.blue,
        ),
        title: Text(item["nombre"]!),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(" ${item["cargo"]}"),
            Row(
              children: [
                const Icon(FontAwesomeIcons.envelope,
                    size: 20, color: Colors.grey),
                const SizedBox(width: 8),
                Text(" ${item["correo"]}"),
              ],
            ),
            Row(
              children: [
                const Icon(FontAwesomeIcons.phone,
                    size: 20, color: Colors.grey),
                const SizedBox(width: 8),
                Text(" ${item["telefono"]}"),
              ],
            ),
            Row(
              children: [
                const Icon(FontAwesomeIcons.locationDot,
                    size: 20, color: Colors.grey),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    " ${item["ubicacion"]}",
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: sectionVisibility.keys.map((section) {
              return Column(
                children: [
                  // Botón para mostrar u ocultar la sección
                  Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          sectionVisibility[section] =
                              !sectionVisibility[section]!; // Cambia el estado
                        });
                      },
                      child: Text(
                        sectionVisibility[section]!
                            ? section
                            : section, // Texto dinámico si se necesita
                        style:
                            const TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                    ),
                  ),
                  // Mostrar los elementos si la sección está visible
                  if (sectionVisibility[section]!) ...[
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: sectionLimits[section],
                      itemBuilder: (context, index) {
                        // Ajustar el índice para cada sección
                        int startIndex = sectionLimits.keys
                            .takeWhile((key) => key != section)
                            .fold(0, (sum, key) => sum + sectionLimits[key]!);
                        return buildListTile(
                            items[startIndex + index]); // Índices dinámicos
                      },
                    ),
                  ],
                  const SizedBox(height: 20),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
