class Profesor {
  int id;
  String nombre;
  String primerApe;
  String segundoApe;
  String academia;
  //List<Horario> horario;

  Profesor({
    required this.id,
    required this.nombre,
    required this.primerApe,
    required this.segundoApe,
    required this.academia,
    //required this.horario,
  });

  factory Profesor.fromJson(Map<String, dynamic> json) {
    // var list = json['Horario'] as List;
    //List<Horario> horariosList = list.map((i) => Horario.fromJson(i)).toList();

    return Profesor(
      id: json['id'],
      nombre: json['Nombre'] ?? '',
      primerApe: json['PrimerApe'] ?? '',
      segundoApe: json['SegundoApe'] ?? '',
      academia: json['Academia'] ?? '',
      //horario: horariosList,
    );
  }
}
