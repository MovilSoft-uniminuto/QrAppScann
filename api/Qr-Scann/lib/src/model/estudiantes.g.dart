// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estudiantes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Estudiantes extends Estudiantes {
  @override
  final int idestudiante;
  @override
  final int idPrograma;
  @override
  final String nombres;
  @override
  final int edad;
  @override
  final String codigo;
  @override
  final String correo;
  @override
  final int semestre;
  @override
  final String contrasea;

  factory _$Estudiantes([void Function(EstudiantesBuilder)? updates]) =>
      (EstudiantesBuilder()..update(updates))._build();

  _$Estudiantes._(
      {required this.idestudiante,
      required this.idPrograma,
      required this.nombres,
      required this.edad,
      required this.codigo,
      required this.correo,
      required this.semestre,
      required this.contrasea})
      : super._();
  @override
  Estudiantes rebuild(void Function(EstudiantesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EstudiantesBuilder toBuilder() => EstudiantesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Estudiantes &&
        idestudiante == other.idestudiante &&
        idPrograma == other.idPrograma &&
        nombres == other.nombres &&
        edad == other.edad &&
        codigo == other.codigo &&
        correo == other.correo &&
        semestre == other.semestre &&
        contrasea == other.contrasea;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idestudiante.hashCode);
    _$hash = $jc(_$hash, idPrograma.hashCode);
    _$hash = $jc(_$hash, nombres.hashCode);
    _$hash = $jc(_$hash, edad.hashCode);
    _$hash = $jc(_$hash, codigo.hashCode);
    _$hash = $jc(_$hash, correo.hashCode);
    _$hash = $jc(_$hash, semestre.hashCode);
    _$hash = $jc(_$hash, contrasea.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Estudiantes')
          ..add('idestudiante', idestudiante)
          ..add('idPrograma', idPrograma)
          ..add('nombres', nombres)
          ..add('edad', edad)
          ..add('codigo', codigo)
          ..add('correo', correo)
          ..add('semestre', semestre)
          ..add('contrasea', contrasea))
        .toString();
  }
}

class EstudiantesBuilder implements Builder<Estudiantes, EstudiantesBuilder> {
  _$Estudiantes? _$v;

  int? _idestudiante;
  int? get idestudiante => _$this._idestudiante;
  set idestudiante(int? idestudiante) => _$this._idestudiante = idestudiante;

  int? _idPrograma;
  int? get idPrograma => _$this._idPrograma;
  set idPrograma(int? idPrograma) => _$this._idPrograma = idPrograma;

  String? _nombres;
  String? get nombres => _$this._nombres;
  set nombres(String? nombres) => _$this._nombres = nombres;

  int? _edad;
  int? get edad => _$this._edad;
  set edad(int? edad) => _$this._edad = edad;

  String? _codigo;
  String? get codigo => _$this._codigo;
  set codigo(String? codigo) => _$this._codigo = codigo;

  String? _correo;
  String? get correo => _$this._correo;
  set correo(String? correo) => _$this._correo = correo;

  int? _semestre;
  int? get semestre => _$this._semestre;
  set semestre(int? semestre) => _$this._semestre = semestre;

  String? _contrasea;
  String? get contrasea => _$this._contrasea;
  set contrasea(String? contrasea) => _$this._contrasea = contrasea;

  EstudiantesBuilder() {
    Estudiantes._defaults(this);
  }

  EstudiantesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idestudiante = $v.idestudiante;
      _idPrograma = $v.idPrograma;
      _nombres = $v.nombres;
      _edad = $v.edad;
      _codigo = $v.codigo;
      _correo = $v.correo;
      _semestre = $v.semestre;
      _contrasea = $v.contrasea;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Estudiantes other) {
    _$v = other as _$Estudiantes;
  }

  @override
  void update(void Function(EstudiantesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Estudiantes build() => _build();

  _$Estudiantes _build() {
    final _$result = _$v ??
        _$Estudiantes._(
          idestudiante: BuiltValueNullFieldError.checkNotNull(
              idestudiante, r'Estudiantes', 'idestudiante'),
          idPrograma: BuiltValueNullFieldError.checkNotNull(
              idPrograma, r'Estudiantes', 'idPrograma'),
          nombres: BuiltValueNullFieldError.checkNotNull(
              nombres, r'Estudiantes', 'nombres'),
          edad: BuiltValueNullFieldError.checkNotNull(
              edad, r'Estudiantes', 'edad'),
          codigo: BuiltValueNullFieldError.checkNotNull(
              codigo, r'Estudiantes', 'codigo'),
          correo: BuiltValueNullFieldError.checkNotNull(
              correo, r'Estudiantes', 'correo'),
          semestre: BuiltValueNullFieldError.checkNotNull(
              semestre, r'Estudiantes', 'semestre'),
          contrasea: BuiltValueNullFieldError.checkNotNull(
              contrasea, r'Estudiantes', 'contrasea'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
