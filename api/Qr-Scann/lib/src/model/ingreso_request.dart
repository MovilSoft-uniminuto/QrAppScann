//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingreso_request.g.dart';

/// IngresoRequest
///
/// Properties:
/// * [fechaIngreso] - Fecha en la que el estudiante ingresó.
/// * [horaIngreso] - Hora exacta en la que el estudiante ingresó.
/// * [idestudiante] - Estudiante que realizó el ingreso.
@BuiltValue()
abstract class IngresoRequest
    implements Built<IngresoRequest, IngresoRequestBuilder> {
  /// Fecha en la que el estudiante ingresó.
  @BuiltValueField(wireName: r'fecha_ingreso')
  Date get fechaIngreso;

  /// Hora exacta en la que el estudiante ingresó.
  @BuiltValueField(wireName: r'hora_ingreso')
  String get horaIngreso;

  /// Estudiante que realizó el ingreso.
  @BuiltValueField(wireName: r'idestudiante')
  int get idestudiante;

  IngresoRequest._();

  factory IngresoRequest([void updates(IngresoRequestBuilder b)]) =
      _$IngresoRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngresoRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngresoRequest> get serializer =>
      _$IngresoRequestSerializer();
}

class _$IngresoRequestSerializer
    implements PrimitiveSerializer<IngresoRequest> {
  @override
  final Iterable<Type> types = const [IngresoRequest, _$IngresoRequest];

  @override
  final String wireName = r'IngresoRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngresoRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    IngresoRequest object, {
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
    required IngresoRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  IngresoRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngresoRequestBuilder();
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
