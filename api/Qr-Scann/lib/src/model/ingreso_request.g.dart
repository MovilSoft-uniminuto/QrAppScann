// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingreso_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngresoRequest extends IngresoRequest {
  @override
  final Date fechaIngreso;
  @override
  final String horaIngreso;
  @override
  final int idestudiante;

  factory _$IngresoRequest([void Function(IngresoRequestBuilder)? updates]) =>
      (IngresoRequestBuilder()..update(updates))._build();

  _$IngresoRequest._(
      {required this.fechaIngreso,
      required this.horaIngreso,
      required this.idestudiante})
      : super._();
  @override
  IngresoRequest rebuild(void Function(IngresoRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngresoRequestBuilder toBuilder() => IngresoRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngresoRequest &&
        fechaIngreso == other.fechaIngreso &&
        horaIngreso == other.horaIngreso &&
        idestudiante == other.idestudiante;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fechaIngreso.hashCode);
    _$hash = $jc(_$hash, horaIngreso.hashCode);
    _$hash = $jc(_$hash, idestudiante.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngresoRequest')
          ..add('fechaIngreso', fechaIngreso)
          ..add('horaIngreso', horaIngreso)
          ..add('idestudiante', idestudiante))
        .toString();
  }
}

class IngresoRequestBuilder
    implements Builder<IngresoRequest, IngresoRequestBuilder> {
  _$IngresoRequest? _$v;

  Date? _fechaIngreso;
  Date? get fechaIngreso => _$this._fechaIngreso;
  set fechaIngreso(Date? fechaIngreso) => _$this._fechaIngreso = fechaIngreso;

  String? _horaIngreso;
  String? get horaIngreso => _$this._horaIngreso;
  set horaIngreso(String? horaIngreso) => _$this._horaIngreso = horaIngreso;

  int? _idestudiante;
  int? get idestudiante => _$this._idestudiante;
  set idestudiante(int? idestudiante) => _$this._idestudiante = idestudiante;

  IngresoRequestBuilder() {
    IngresoRequest._defaults(this);
  }

  IngresoRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fechaIngreso = $v.fechaIngreso;
      _horaIngreso = $v.horaIngreso;
      _idestudiante = $v.idestudiante;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngresoRequest other) {
    _$v = other as _$IngresoRequest;
  }

  @override
  void update(void Function(IngresoRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngresoRequest build() => _build();

  _$IngresoRequest _build() {
    final _$result = _$v ??
        _$IngresoRequest._(
          fechaIngreso: BuiltValueNullFieldError.checkNotNull(
              fechaIngreso, r'IngresoRequest', 'fechaIngreso'),
          horaIngreso: BuiltValueNullFieldError.checkNotNull(
              horaIngreso, r'IngresoRequest', 'horaIngreso'),
          idestudiante: BuiltValueNullFieldError.checkNotNull(
              idestudiante, r'IngresoRequest', 'idestudiante'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
