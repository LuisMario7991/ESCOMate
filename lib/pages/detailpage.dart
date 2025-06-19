import 'package:flutter/material.dart';
import '../info/mysql.dart';
import '../widget/drawer.dart';

class HorarioScreen extends StatelessWidget {
  final int profesorId;

  const HorarioScreen({super.key, required this.profesorId});

  Future<Map<String, dynamic>?> fetchProfesorDetails(Mysql dbService) async {
    final profesores = await dbService.fetchProfesores();
    return profesores.firstWhere((profesor) => profesor['id'] == profesorId);
  }

  @override
  Widget build(BuildContext context) {
    final dbService = Mysql();

    return Scaffold(
      appBar: AppBar(
        title: const Text('ESCOMate'),
        backgroundColor: Colors.blue.shade700,
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: FutureBuilder<Map<String, dynamic>?>(
        future: fetchProfesorDetails(dbService),
        builder: (context, profesorSnapshot) {
          if (profesorSnapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (profesorSnapshot.hasError) {
            return Center(child: Text("Error: ${profesorSnapshot.error}"));
          } else if (!profesorSnapshot.hasData ||
              profesorSnapshot.data == null) {
            return const Center(
                child: Text("No se encontró información del profesor"));
          } else {
            final profesor = profesorSnapshot.data!;
            return FutureBuilder<List<Map<String, dynamic>>>(
              future: dbService.fetchHorarios(profesorId),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(
                      child: Text("No hay horarios disponibles"));
                } else {
                  final horarios = snapshot.data!;
                  return ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Profesor: ${profesor['Nombre']} ${profesor['PrimerApe']} ${profesor['SegundoApe']}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Academia: ${profesor['Academia']}",
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      ...horarios.map((horario) {
                        return Card(
                          margin: const EdgeInsets.all(10),
                          child: ListTile(
                            title: Text(
                                "${horario['Grupo']} - ${horario['Unidad']}"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "Salón: ${horario['Salon']}, Lab: ${horario['Lab']}"),
                                Text("Lunes: ${horario['Lunes']}"),
                                Text("Martes: ${horario['Martes']}"),
                                Text("Miércoles: ${horario['Miercoles']}"),
                                Text("Jueves: ${horario['Jueves']}"),
                                Text("Viernes: ${horario['Viernes']}"),
                              ],
                            ),
                          ),
                        );
                      }),
                    ],
                  );
                }
              },
            );
          }
        },
      ),
    );
  }
}
