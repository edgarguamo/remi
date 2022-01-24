// To parse this JSON data, do
//
//     final empresaModel = empresaModelFromJson(jsonString);

import 'dart:convert';

EmpresaModel empresaModelFromJson(String str) =>
    EmpresaModel.fromJson(json.decode(str));

String empresaModelToJson(EmpresaModel data) => json.encode(data.toJson());

class EmpresaModel {
  EmpresaModel({
    // this.id,
    this.nombre = '',
    this.direccion = '',
    this.contacto = 0,
    this.rfc = '',
    this.domicilio = '',
    this.antiguedad = 0,
    this.estatus = '',
    this.moral = '',
    this.noRegistrada = '',
    this.fiscal = '',
    this.empleados = 0,
    this.administrativos = 0,
    this.otros = 0,
    this.total = 0,
    this.comentarios = '',
    this.diarias = 0,
    this.semanales = 0,
    this.mensuales = 0,
    this.terreno = 0,
    this.bienes = 0,
    this.ventasEmp = 0,
    this.ventasActivos = 0,
    this.local = '',
    this.regional = '',
    this.internacional = '',
    this.cortoPlazo = '',
    this.largoPlazo = '',
    this.comentarioEjecutivo = '',
  });

  // String id;
  String nombre;
  String direccion;
  int contacto;
  String rfc;
  String domicilio;
  int antiguedad;
  String estatus;
  String moral;
  String noRegistrada;
  String fiscal;
  int empleados;
  int administrativos;
  int otros;
  int total;
  String comentarios;
  int diarias;
  int semanales;
  int mensuales;
  int terreno;
  int bienes;
  int ventasEmp;
  int ventasActivos;
  String local;
  String regional;
  String internacional;
  String cortoPlazo;
  String largoPlazo;
  String comentarioEjecutivo;

  factory EmpresaModel.fromJson(Map<String, dynamic> json) => EmpresaModel(
        // id: json["id"],
        nombre: json["nombre"],
        direccion: json["direccion"],
        contacto: json["contacto"],
        rfc: json["rfc"],
        domicilio: json["domicilio"],
        antiguedad: json["antiguedad"],
        estatus: json["estatus"],
        moral: json["moral"],
        noRegistrada: json["no_registrada"],
        fiscal: json["fiscal"],
        empleados: json["empleados"],
        administrativos: json["administrativos"],
        otros: json["otros"],
        total: json["total"],
        comentarios: json["comentarios"],
        diarias: json["diarias"],
        semanales: json["semanales"],
        mensuales: json["mensuales"],
        terreno: json["terreno"],
        bienes: json["bienes"],
        ventasEmp: json["ventas_emp"],
        ventasActivos: json["ventas_activos"],
        local: json["local"],
        regional: json["regional"],
        internacional: json["internacional"],
        cortoPlazo: json["corto_plazo"],
        largoPlazo: json["largo_plazo"],
        comentarioEjecutivo: json["comentario_ejecutivo"],
      );

  Map<String, dynamic> toJson() => {
        // "id": id,
        "nombre": nombre,
        "direccion": direccion,
        "contacto": contacto,
        "rfc": rfc,
        "domicilio": domicilio,
        "antiguedad": antiguedad,
        "estatus": estatus,
        "moral": moral,
        "no_registrada": noRegistrada,
        "fiscal": fiscal,
        "empleados": empleados,
        "administrativos": administrativos,
        "otros": otros,
        "total": total,
        "comentarios": comentarios,
        "diarias": diarias,
        "semanales": semanales,
        "mensuales": mensuales,
        "terreno": terreno,
        "bienes": bienes,
        "ventas_emp": ventasEmp,
        "ventas_activos": ventasActivos,
        "local": local,
        "regional": regional,
        "internacional": internacional,
        "corto_plazo": cortoPlazo,
        "largo_plazo": largoPlazo,
        "comentario_ejecutivo": comentarioEjecutivo,
      };
}
