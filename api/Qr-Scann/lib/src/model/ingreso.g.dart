// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingreso.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ingreso extends Ingreso {
  @override
  final int idingreso;
  @override
  final Date fechaIngreso;
  @override
  final String horaIngreso;
  @override
  final int idestudiante;

  factory _$Ingreso([void Function(IngresoBuilder)? updates]) =>
      (IngresoBuilder()..update(updates))._build();

  _$Ingreso._(
      {required this.idingreso,
      required this.fechaIngreso,
      required this.horaIngreso,
      required this.idestudiante})
      : super._();
  @override
  Ingreso rebuild(void Function(IngresoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngresoBuilder toBuilder() => IngresoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ingreso &&
        idingreso == other.idingreso &&
        fechaIngreso == other.fechaIngreso &&
        horaIngreso == other.horaIngreso &&
        idestudiante == other.idestudiante;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idingreso.hashCode);
    _$hash = $jc(_$hash, fechaIngreso.hashCode);
    _$hash = $jc(_$hash, horaIngreso.hashCode);
    _$hash = $jc(_$hash, idestudiante.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Ingreso')
          ..add('idingreso', idingreso)
          ..add('fechaIngreso', fechaIngreso)
          ..add('horaIngreso', horaIngreso)
          ..add('idestudiante', idestudiante))
        .toString();
  }
}

class IngresoBuilder implements Builder<Ingreso, IngresoBuilder> {
  _$Ingreso? _$v;

  int? _idingreso;
  int? get idingreso => _$this._idingreso;
  set idingreso(int? idingreso) => _$this._idingreso = idingreso;

  Date? _fechaIngreso;
  Date? get fechaIngreso => _$this._fechaIngreso;
  set fechaIngreso(Date? fechaIngreso) => _$this._fechaIngreso = fechaIngreso;

  String? _horaIngreso;
  String? get horaIngreso => _$this._horaIngreso;
  set horaIngreso(String? horaIngreso) => _$this._horaIngreso = horaIngreso;

  int? _idestudiante;
  int? get idestudiante => _$this._idestudiante;
  set idestudiante(int? idestudiante) => _$this._idestudiante = idestudiante;

  IngresoBuilder() {
    Ingreso._defaults(this);
  }

  IngresoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idingreso = $v.idingreso;
      _fechaIngreso = $v.fechaIngreso;
      _horaIngreso = $v.horaIngreso;
      _idestudiante = $v.idestudiante;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ingreso other) {
    _$v = other as _$Ingreso;
  }

  @override
  void update(void Function(IngresoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ingreso build() => _build();

  _$Ingreso _build() {
    final _$result = _$v ??
        _$Ingreso._(
          idingreso: BuiltValueNullFieldError.checkNotNull(
              idingreso, r'Ingreso', 'idingreso'),
          fechaIngreso: BuiltValueNullFieldError.checkNotNull(
              fechaIngreso, r'Ingreso', 'fechaIngreso'),
          horaIngreso: BuiltValueNullFieldError.checkNotNull(
              horaIngreso, r'Ingreso', 'horaIngreso'),
          idestudiante: BuiltValueNullFieldError.checkNotNull(
              idestudiante, r'Ingreso', 'idestudiante'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
