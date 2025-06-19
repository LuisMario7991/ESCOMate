import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../widget/drawer.dart';

class Ubicacionescom extends StatefulWidget {
  const Ubicacionescom({super.key});

  @override
  State<Ubicacionescom> createState() => _UbicacionescomState();
}

class _UbicacionescomState extends State<Ubicacionescom> {
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
            Center(
              child: SizedBox(
                width: 390, // Ajusta el ancho deseado
                height: 550, // Ajusta la altura deseada
                child: FlutterMap(
                  options: const MapOptions(
                    initialCenter: LatLng(19.5051747, -99.1458826),
                    initialZoom: 17,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.app',
                    ),
                    MarkerLayer(
                      markers: [
                        Marker(
                          point: const LatLng(19.5049175, -99.1458826),
                          width: 70,
                          height: 35,
                          child: Container(
                              color: Colors.blue.shade700,
                              padding: const EdgeInsets.all(8),
                              child: const Text(
                                "ESCOM",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )),
                        ),
                        const Marker(
                          point: LatLng(19.5048175, -99.1467334),
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.location_pin,
                            size: 50,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Dirección: Av. Juan de Dios Bátiz, Nueva Industrial Vallejo, Gustavo A. Madero, 07320, CDMX',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
