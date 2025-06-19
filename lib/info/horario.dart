class Horario {
  String grupo;
  String unidad;
  String salon;
  String lab;
  String lunes;
  String martes;
  String miercoles;
  String jueves;
  String viernes;

  Horario({
    required this.grupo,
    required this.unidad,
    required this.salon,
    required this.lab,
    required this.lunes,
    required this.martes,
    required this.miercoles,
    required this.jueves,
    required this.viernes,
  });

  factory Horario.fromJson(Map<String, dynamic> json) {
    return Horario(
      grupo: json['Grupo'] ?? '',
      unidad: json['Unidad'] ?? '',
      salon: json['Salon'] ?? '',
      lab: json['Lab'] ?? '',
      lunes: json['Lunes'] ?? '',
      martes: json['Martes'] ?? '',
      miercoles: json['Miercoles'] ?? '',
      jueves: json['Jueves'] ?? '',
      viernes: json['Viernes'] ?? '',
    );
  }
}
