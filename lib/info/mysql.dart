import 'package:mysql1/mysql1.dart';

class Mysql {
  String host = '172.20.10.5',
      user = 'luis',
      password = "Anubis97",
      db = 'escom';

  int port = 3306;
  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db,
    );
    return await MySqlConnection.connect(settings);
  }

  Future<String> checkLogin(Map<String, dynamic> alumno) async {
    String sqlQuery = "SELECT * FROM estudiantes WHERE boleta = ? AND curp = ?";

    var conn = await getConnection();
    var resultado =
        await conn.query(sqlQuery, [alumno['boleta'], alumno['curp']]);
    if (resultado.length == 1) {
      var almn = resultado.single;
      return "Bienvenido: ${almn["nombre"] + ' ' + almn["apellido_paterno"] + ' ' + almn["apellido_materno"]}";
    } else {
      return "ERROR. Favor de revisar sus datos";
    }
  }

  Future<List<Map<String, dynamic>>> fetchProfesores() async {
    final conn = await getConnection();
    try {
      // Consulta a la base de datos
      var results = await conn.query(
          'SELECT id, Nombre, PrimerApe, SegundoApe, Academia FROM Profesores');

      // Convertir resultados a una lista de mapas
      List<Map<String, dynamic>> profesores = results.map((row) {
        return {
          'id': row['id'],
          'Nombre': row['Nombre'],
          'PrimerApe': row['PrimerApe'],
          'SegundoApe': row['SegundoApe'],
          'Academia': row['Academia'],
        };
      }).toList();

      return profesores;
    } finally {
      await conn.close(); // Cerrar conexión
    }
  }

  Future<List<Map<String, dynamic>>> fetchHorarios(int profesorId) async {
    final conn = await getConnection();

    try {
      var results = await conn.query('''
      SELECT Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes 
      FROM Horarios 
      WHERE profesor_id = ?
    ''', [profesorId]);

      return results.map((row) {
        return {
          'Grupo': row['Grupo'],
          'Unidad': row['Unidad'],
          'Salon': row['Salon'],
          'Lab': row['Lab'],
          'Lunes': row['Lunes'],
          'Martes': row['Martes'],
          'Miercoles': row['Miercoles'],
          'Jueves': row['Jueves'],
          'Viernes': row['Viernes'],
        };
      }).toList();
    } finally {
      await conn.close();
    }
  }
}
