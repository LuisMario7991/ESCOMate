// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../info/mysql.dart'; // Clase de conexión
import '../info/profesor.dart';

import '../info/provider.dart';
import './detailpage.dart';
import '../widget/drawer.dart';
import './inicio.dart';

class ProfesorCards extends StatefulWidget {
  const ProfesorCards({super.key});

  @override
  State<ProfesorCards> createState() => _ProfesorCardsState();
}

class _ProfesorCardsState extends State<ProfesorCards> {
  final Mysql dbService = Mysql();
  List<Profesor> profesores = [];
  List<Profesor> filteredProfesores = [];
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    _loadProfesores();
  }

  Future<void> _loadProfesores() async {
    try {
      final data = await dbService.fetchProfesores();
      final list = data.map((json) => Profesor.fromJson(json)).toList();
      setState(() {
        profesores = list;
        filteredProfesores = list; // Mostrar todos inicialmente
      });
    } catch (e) {
      // Manejo de errores si es necesario
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("error al cargar los profesores:  $e")));
    }
  }

  void _filterProfesores(String query) {
    setState(() {
      searchQuery = query;
      if (query.isEmpty) {
        filteredProfesores = profesores; // Mostrar todos si el texto está vacío
      } else {
        filteredProfesores = profesores.where((profesor) {
          final nombreCompleto =
              '${profesor.nombre} ${profesor.primerApe} ${profesor.segundoApe}'
                  .toLowerCase();
          return nombreCompleto.contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ESCOMate'),
        backgroundColor: Colors.blue.shade700,
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                loginProvider.logout();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const PageOne()));
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                  Text('Cerrar sesión',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ],
              ))
        ],
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Buscar Profesor',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: _filterProfesores,
            ),
          ),
          Expanded(
            child: filteredProfesores.isEmpty
                ? const Center(child: Text("No hay profesores disponibles"))
                : ListView.builder(
                    itemCount: filteredProfesores.length,
                    itemBuilder: (context, index) {
                      final profesor = filteredProfesores[index];
                      return Card(
                        margin: const EdgeInsets.all(10),
                        child: ListTile(
                          title: Text(
                              "${profesor.nombre} ${profesor.primerApe} ${profesor.segundoApe}"),
                          subtitle: Text("Academia: ${profesor.academia}"),
                          onTap: () {
                            // Navegar a la pantalla de horario
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HorarioScreen(profesorId: profesor.id),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
