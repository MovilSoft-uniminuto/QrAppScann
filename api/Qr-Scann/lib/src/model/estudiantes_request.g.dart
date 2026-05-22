// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estudiantes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EstudiantesRequest extends EstudiantesRequest {
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

  factory _$EstudiantesRequest(
          [void Function(EstudiantesRequestBuilder)? updates]) =>
      (EstudiantesRequestBuilder()..update(updates))._build();

  _$EstudiantesRequest._(
      {required this.idPrograma,
      required this.nombres,
      required this.edad,
      required this.codigo,
      required this.correo,
      required this.semestre,
      required this.contrasea})
      : super._();
  @override
  EstudiantesRequest rebuild(
          void Function(EstudiantesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EstudiantesRequestBuilder toBuilder() =>
      EstudiantesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EstudiantesRequest &&
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
    return (newBuiltValueToStringHelper(r'EstudiantesRequest')
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

class EstudiantesRequestBuilder
    implements Builder<EstudiantesRequest, EstudiantesRequestBuilder> {
  _$EstudiantesRequest? _$v;

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

  EstudiantesRequestBuilder() {
    EstudiantesRequest._defaults(this);
  }

  EstudiantesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(EstudiantesRequest other) {
    _$v = other as _$EstudiantesRequest;
  }

  @override
  void update(void Function(EstudiantesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EstudiantesRequest build() => _build();

  _$EstudiantesRequest _build() {
    final _$result = _$v ??
        _$EstudiantesRequest._(
          idPrograma: BuiltValueNullFieldError.checkNotNull(
              idPrograma, r'EstudiantesRequest', 'idPrograma'),
          nombres: BuiltValueNullFieldError.checkNotNull(
              nombres, r'EstudiantesRequest', 'nombres'),
          edad: BuiltValueNullFieldError.checkNotNull(
              edad, r'EstudiantesRequest', 'edad'),
          codigo: BuiltValueNullFieldError.checkNotNull(
              codigo, r'EstudiantesRequest', 'codigo'),
          correo: BuiltValueNullFieldError.checkNotNull(
              correo, r'EstudiantesRequest', 'correo'),
          semestre: BuiltValueNullFieldError.checkNotNull(
              semestre, r'EstudiantesRequest', 'semestre'),
          contrasea: BuiltValueNullFieldError.checkNotNull(
              contrasea, r'EstudiantesRequest', 'contrasea'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
