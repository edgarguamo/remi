import 'dart:convert';

MercadoModel mercadoModelFromJson(String str) =>
    MercadoModel.fromJson(json.decode(str));

String mercadoModelToJson(MercadoModel data) => json.encode(data.toJson());

class MercadoModel {
  MercadoModel({
    this.id,
    this.rentabilidad = '',
    this.nuevoProd = '',
    this.cliente = '',
    this.distribucion = '',
    this.magnitud = '',
    this.indClave = '',
    this.otraInfo = '',
    this.mercActual = '',
    this.mercTendencia = '',
    this.clienteUsuario = '',
    this.clienteDecisor = '',
    this.clienteRecursos = '',
    this.expCalidad = '',
    this.expServicio = '',
    this.expPrecio = '',
    this.fijaPrecios = '',
    this.canalDistribucion = '',
    this.competenciaId = '',
    this.evalCant = '',
    this.evalCalidad = '',
    this.evalPrecio = '',
    this.fuerza = '',
    this.debilidad = '',
    this.anuncPersonal = '',
    this.anuncMasivo = '',
    this.anuncMensaje = '',
    this.emblema = '',
    this.logotipo = '',
    this.numVendedores = '',
    this.territorio = '',
    this.equipoVentas = '',
    this.presentacion = '',
    this.entrenamiento = '',
    this.cuotas = '',
    this.presupuestos = '',
    this.reportes = '',
    this.rentVendedor = '',
    this.mercCliente = '',
    this.mercProd = '',
    this.mercDist = '',
    this.mercPrecio = '',
    this.mercComp = '',
    this.mercInfo = '',
    this.mercVentas = '',
    this.comentario = '',
  });

  String id;
  String rentabilidad;
  String nuevoProd;
  String cliente;
  String distribucion;
  String magnitud;
  String indClave;
  String otraInfo;
  String mercActual;
  String mercTendencia;
  String clienteUsuario;
  String clienteDecisor;
  String clienteRecursos;
  String expCalidad;
  String expServicio;
  String expPrecio;
  String fijaPrecios;
  String canalDistribucion;
  String competenciaId;
  String evalCant;
  String evalCalidad;
  String evalPrecio;
  String fuerza;
  String debilidad;
  String anuncPersonal;
  String anuncMasivo;
  String anuncMensaje;
  String emblema;
  String logotipo;
  String numVendedores;
  String territorio;
  String equipoVentas;
  String presentacion;
  String entrenamiento;
  String cuotas;
  String presupuestos;
  String reportes;
  String rentVendedor;
  String mercCliente;
  String mercProd;
  String mercDist;
  String mercPrecio;
  String mercComp;
  String mercInfo;
  String mercVentas;
  String comentario;

  factory MercadoModel.fromJson(Map<String, dynamic> json) => MercadoModel(
        id: json["id"],
        rentabilidad: json["rentabilidad"],
        nuevoProd: json["nuevoProd"],
        cliente: json["cliente"],
        distribucion: json["distribucion"],
        magnitud: json["magnitud"],
        indClave: json["indClave"],
        otraInfo: json["otraInfo"],
        mercActual: json["mercActual"],
        mercTendencia: json["mercTendencia"],
        clienteUsuario: json["clienteUsuario"],
        clienteDecisor: json["clienteDecisor"],
        clienteRecursos: json["clienteRecursos"],
        expCalidad: json["expCalidad"],
        expServicio: json["expServicio"],
        expPrecio: json["expPrecio"],
        fijaPrecios: json["fijaPrecios"],
        canalDistribucion: json["canalDistribucion"],
        competenciaId: json["competenciaId"],
        evalCant: json["evalCant"],
        evalCalidad: json["evalCalidad"],
        evalPrecio: json["evalPrecio"],
        fuerza: json["fuerza"],
        debilidad: json["debilidad"],
        anuncPersonal: json["anuncPersonal"],
        anuncMasivo: json["anuncMasivo"],
        anuncMensaje: json["anuncMensaje"],
        emblema: json["emblema"],
        logotipo: json["logotipo"],
        numVendedores: json["numVendedores"],
        territorio: json["territorio"],
        equipoVentas: json["equipoVentas"],
        presentacion: json["presentacion"],
        entrenamiento: json["entrenamiento"],
        cuotas: json["cuotas"],
        presupuestos: json["presupuestos"],
        reportes: json["reportes"],
        rentVendedor: json["rentVendedor"],
        mercCliente: json["mercCliente"],
        mercProd: json["mercProd"],
        mercDist: json["mercDist"],
        mercPrecio: json["mercPrecio"],
        mercComp: json["mercComp"],
        mercInfo: json["mercInfo"],
        mercVentas: json["mercVentas"],
        comentario: json["comentario"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rentabilidad": rentabilidad,
        "nuevoProd": nuevoProd,
        "cliente": cliente,
        "distribucion": distribucion,
        "magnitud": magnitud,
        "indClave": indClave,
        "otraInfo": otraInfo,
        "mercActual": mercActual,
        "mercTendencia": mercTendencia,
        "clienteUsuario": clienteUsuario,
        "clienteDecisor": clienteDecisor,
        "clienteRecursos": clienteRecursos,
        "expCalidad": expCalidad,
        "expServicio": expServicio,
        "expPrecio": expPrecio,
        "fijaPrecios": fijaPrecios,
        "canalDistribucion": canalDistribucion,
        "competenciaId": competenciaId,
        "evalCant": evalCant,
        "evalCalidad": evalCalidad,
        "evalPrecio": evalPrecio,
        "fuerza": fuerza,
        "debilidad": debilidad,
        "anuncPersonal": anuncPersonal,
        "anuncMasivo": anuncMasivo,
        "anuncMensaje": anuncMensaje,
        "emblema": emblema,
        "logotipo": logotipo,
        "numVendedores": numVendedores,
        "territorio": territorio,
        "equipoVentas": equipoVentas,
        "presentacion": presentacion,
        "entrenamiento": entrenamiento,
        "cuotas": cuotas,
        "presupuestos": presupuestos,
        "reportes": reportes,
        "rentVendedor": rentVendedor,
        "mercCliente": mercCliente,
        "mercProd": mercProd,
        "mercDist": mercDist,
        "mercPrecio": mercPrecio,
        "mercComp": mercComp,
        "mercInfo": mercInfo,
        "mercVentas": mercVentas,
        "comentario": comentario,
      };
}
