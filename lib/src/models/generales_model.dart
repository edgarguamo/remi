// To parse this JSON data, do
//
//     final generalesModel = generalesModelFromJson(jsonString);

import 'dart:convert';

GeneralesModel generalesModelFromJson(String str) =>
    GeneralesModel.fromJson(json.decode(str));

String generalesModelToJson(GeneralesModel data) => json.encode(data.toJson());

class GeneralesModel {
  // String id;
  String empNombre;
  String empDireccion;
  int empTelefono;
  String empOriginario;
  String empLugar;
  int empEdad;
  String empEstado;
  String empOcupacion;
  String empEscolaridad;
  String empSalud;
  String empComentarios;
  String padreNombre;
  String padreOriginario;
  String padreViven;
  String padreLugar;
  int padreEdad;
  String padreOcupacion;
  String padreEscolaridad;
  String padreSalud;
  String padreComentarios;
  int hermanos;
  String herNombres;
  int herEdad;
  String herOcupacion;
  String herLugar;
  String parNombre;
  String parOriginaria;
  String parVive;
  String parLugar;
  int parEdad;
  String parSalud;
  String parOcupacion;
  String parEscolaridad;
  String parComentario;
  String suegroNombre;
  String suegroOriginarios;
  String suegroViven;
  String suegroLugar;
  int suegroEdad;
  String suegroSalud;
  String suegroOcupacion;
  String suegroEscolaridad;
  String suegroComentario;
  String cuNombre;
  int cuEdad;
  String cuOcupacion;
  String cuLugar;
  int mTiempo;
  String mSituacion;
  int hijosNumero;
  int hijosEdad;
  String hijosOcupacion;
  String hijosEstado;
  String hijosEscolaridad;
  String hijosSalud;
  String filoHobbies;
  String filoComentarios;
  String metasProfesionales;
  String metasAfectivas;
  String metasFisicas;
  String metasComentarios;
  String tiempoDia;
  String tiempoSemana;
  String tiempoMes;
  String tiempoAnio;
  String tiempoComentario;
  String comentarioEjecutivo;

  GeneralesModel({
    // this.id = '',
    this.empNombre = '',
    this.empDireccion = '',
    this.empTelefono = 0,
    this.empOriginario = '',
    this.empLugar = '',
    this.empEdad = 0,
    this.empEstado = '',
    this.empOcupacion = '',
    this.empEscolaridad = '',
    this.empSalud = '',
    this.empComentarios = '',
    this.padreNombre = '',
    this.padreOriginario = '',
    this.padreViven = '',
    this.padreLugar = '',
    this.padreEdad = 0,
    this.padreOcupacion = '',
    this.padreEscolaridad = '',
    this.padreSalud = '',
    this.padreComentarios = '',
    this.hermanos = 0,
    this.herNombres = '',
    this.herEdad = 0,
    this.herOcupacion = '',
    this.herLugar = '',
    this.parNombre = '',
    this.parOriginaria = '',
    this.parVive = '',
    this.parLugar = '',
    this.parEdad = 0,
    this.parSalud = '',
    this.parOcupacion = '',
    this.parEscolaridad = '',
    this.parComentario = '',
    this.suegroNombre = '',
    this.suegroOriginarios = '',
    this.suegroViven = '',
    this.suegroLugar = '',
    this.suegroEdad = 0,
    this.suegroSalud = '',
    this.suegroOcupacion = '',
    this.suegroEscolaridad = '',
    this.suegroComentario = '',
    this.cuNombre = '',
    this.cuEdad = 0,
    this.cuOcupacion = '',
    this.cuLugar = '',
    this.mTiempo = 0,
    this.mSituacion = '',
    this.hijosNumero = 0,
    this.hijosEdad = 0,
    this.hijosOcupacion = '',
    this.hijosEstado = '',
    this.hijosEscolaridad = '',
    this.hijosSalud = '',
    this.filoHobbies = '',
    this.filoComentarios = '',
    this.metasProfesionales = '',
    this.metasAfectivas = '',
    this.metasFisicas = '',
    this.metasComentarios = '',
    this.tiempoDia = '',
    this.tiempoSemana = '',
    this.tiempoMes = '',
    this.tiempoAnio = '',
    this.tiempoComentario = '',
    this.comentarioEjecutivo = '',
  });

  factory GeneralesModel.fromJson(Map<String, dynamic> json) => GeneralesModel(
        // id: json["id"],
        empNombre: json["emp_nombre"],
        empDireccion: json["emp_direccion"],
        empTelefono: json["emp_telefono"],
        empOriginario: json["emp_originario"],
        empLugar: json["emp_lugar"],
        empEdad: json["emp_edad"],
        empEstado: json["emp_estado"],
        empOcupacion: json["emp_ocupacion"],
        empEscolaridad: json["emp_escolaridad"],
        empSalud: json["emp_salud"],
        empComentarios: json["emp_comentarios"],
        padreNombre: json["padre_nombre"],
        padreOriginario: json["padre_originario"],
        padreViven: json["padre_viven"],
        padreLugar: json["padre_lugar"],
        padreEdad: json["padre_edad"],
        padreOcupacion: json["padre_ocupacion"],
        padreEscolaridad: json["padre_escolaridad"],
        padreSalud: json["padre_salud"],
        padreComentarios: json["padre_comentarios"],
        hermanos: json["hermanos"],
        herNombres: json["her_nombres"],
        herEdad: json["her_edad"],
        herOcupacion: json["her_ocupacion"],
        herLugar: json["her_lugar"],
        parNombre: json["par_nombre"],
        parOriginaria: json["par_originaria"],
        parVive: json["par_vive"],
        parLugar: json["par_lugar"],
        parEdad: json["par_edad"],
        parSalud: json["par_salud"],
        parOcupacion: json["par_ocupacion"],
        parEscolaridad: json["par_escolaridad"],
        parComentario: json["par_comentario"],
        suegroNombre: json["suegro_nombre"],
        suegroOriginarios: json["suegro_originarios"],
        suegroViven: json["suegro_viven"],
        suegroLugar: json["suegro_lugar"],
        suegroEdad: json["suegro_edad"],
        suegroSalud: json["suegro_salud"],
        suegroOcupacion: json["suegro_ocupacion"],
        suegroEscolaridad: json["suegro_escolaridad"],
        suegroComentario: json["suegro_comentario"],
        cuNombre: json["cu_nombre"],
        cuEdad: json["cu_edad"],
        cuOcupacion: json["cu_ocupacion"],
        cuLugar: json["cu_lugar"],
        mTiempo: json["m_tiempo"],
        mSituacion: json["m_situacion"],
        hijosNumero: json["hijos_numero"],
        hijosEdad: json["hijos_edad"],
        hijosOcupacion: json["hijos_ocupacion"],
        hijosEstado: json["hijos_estado"],
        hijosEscolaridad: json["hijos_escolaridad"],
        hijosSalud: json["hijos_salud"],
        filoHobbies: json["filo_hobbies"],
        filoComentarios: json["filo_comentarios"],
        metasProfesionales: json["metas_profesionales"],
        metasAfectivas: json["metas_afectivas"],
        metasFisicas: json["metas_fisicas"],
        metasComentarios: json["metas_comentarios"],
        tiempoDia: json["tiempo_dia"],
        tiempoSemana: json["tiempo_semana"],
        tiempoMes: json["tiempo_mes"],
        tiempoAnio: json["tiempo_anio"],
        tiempoComentario: json["tiempo_comentario"],
        comentarioEjecutivo: json["comentario_ejecutivo"],
      );

  Map<String, dynamic> toJson() => {
        // "id": id,
        "emp_nombre": empNombre,
        "emp_direccion": empDireccion,
        "emp_telefono": empTelefono,
        "emp_originario": empOriginario,
        "emp_lugar": empLugar,
        "emp_edad": empEdad,
        "emp_estado": empEstado,
        "emp_ocupacion": empOcupacion,
        "emp_escolaridad": empEscolaridad,
        "emp_salud": empSalud,
        "emp_comentarios": empComentarios,
        "padre_nombre": padreNombre,
        "padre_originario": padreOriginario,
        "padre_viven": padreViven,
        "padre_lugar": padreLugar,
        "padre_edad": padreEdad,
        "padre_ocupacion": padreOcupacion,
        "padre_escolaridad": padreEscolaridad,
        "padre_salud": padreSalud,
        "padre_comentarios": padreComentarios,
        "hermanos": hermanos,
        "her_nombres": herNombres,
        "her_edad": herEdad,
        "her_ocupacion": herOcupacion,
        "her_lugar": herLugar,
        "par_nombre": parNombre,
        "par_originaria": parOriginaria,
        "par_vive": parVive,
        "par_lugar": parLugar,
        "par_edad": parEdad,
        "par_salud": parSalud,
        "par_ocupacion": parOcupacion,
        "par_escolaridad": parEscolaridad,
        "par_comentario": parComentario,
        "suegro_nombre": suegroNombre,
        "suegro_originarios": suegroOriginarios,
        "suegro_viven": suegroViven,
        "suegro_lugar": suegroLugar,
        "suegro_edad": suegroEdad,
        "suegro_salud": suegroSalud,
        "suegro_ocupacion": suegroOcupacion,
        "suegro_escolaridad": suegroEscolaridad,
        "suegro_comentario": suegroComentario,
        "cu_nombre": cuNombre,
        "cu_edad": cuEdad,
        "cu_ocupacion": cuOcupacion,
        "cu_lugar": cuLugar,
        "m_tiempo": mTiempo,
        "m_situacion": mSituacion,
        "hijos_numero": hijosNumero,
        "hijos_edad": hijosEdad,
        "hijos_ocupacion": hijosOcupacion,
        "hijos_estado": hijosEstado,
        "hijos_escolaridad": hijosEscolaridad,
        "hijos_salud": hijosSalud,
        "filo_hobbies": filoHobbies,
        "filo_comentarios": filoComentarios,
        "metas_profesionales": metasProfesionales,
        "metas_afectivas": metasAfectivas,
        "metas_fisicas": metasFisicas,
        "metas_comentarios": metasComentarios,
        "tiempo_dia": tiempoDia,
        "tiempo_semana": tiempoSemana,
        "tiempo_mes": tiempoMes,
        "tiempo_anio": tiempoAnio,
        "tiempo_comentario": tiempoComentario,
        "comentario_ejecutivo": comentarioEjecutivo,
      };
}
