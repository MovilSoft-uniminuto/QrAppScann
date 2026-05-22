//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingreso.g.dart';

/// Ingreso
///
/// Properties:
/// * [idingreso] - Identificador único del registro de ingreso.
/// * [fechaIngreso] - Fecha en la que el estudiante ingresó.
/// * [horaIngreso] - Hora exacta en la que el estudiante ingresó.
/// * [idestudiante] - Estudiante que realizó el ingreso.
@BuiltValue()
abstract class Ingreso implements Built<Ingreso, IngresoBuilder> {
  /// Identificador único del registro de ingreso.
  @BuiltValueField(wireName: r'idingreso')
  int get idingreso;

  /// Fecha en la que el estudiante ingresó.
  @BuiltValueField(wireName: r'fecha_ingreso')
  Date get fechaIngreso;

  /// Hora exacta en la que el estudiante ingresó.
  @BuiltValueField(wireName: r'hora_ingreso')
  String get horaIngreso;

  /// Estudiante que realizó el ingreso.
  @BuiltValueField(wireName: r'idestudiante')
  int get idestudiante;

  Ingreso._();

  factory Ingreso([void updates(IngresoBuilder b)]) = _$Ingreso;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngresoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Ingreso> get serializer => _$IngresoSerializer();
}

class _$IngresoSerializer implements PrimitiveSerializer<Ingreso> {
  @override
  final Iterable<Type> types = const [Ingreso, _$Ingreso];

  @override
  final String wireName = r'Ingreso';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Ingreso object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'idingreso';
    yield serializers.serialize(
      object.idingreso,
      specifiedType: const FullType(int),
    );
    yield r'fecha_ingreso';
    yield serializers.serialize(
      object.fechaIngreso,
      specifiedType: const FullType(Date),
    );
    yield r'hora_ingreso';
    yield serializers.serialize(
      object.horaIngreso,
      specifiedType: const FullType(String),
    );
    yield r'idestudiante';
    yield serializers.serialize(
      object.idestudiante,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Ingreso object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IngresoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'idingreso':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.idingreso = valueDes;
          break;
        case r'fecha_ingreso':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Date),
                  )
                  as Date;
          result.fechaIngreso = valueDes;
          break;
        case r'hora_ingreso':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.horaIngreso = valueDes;
          break;
        case r'idestudiante':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.idestudiante = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Ingreso deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngresoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
