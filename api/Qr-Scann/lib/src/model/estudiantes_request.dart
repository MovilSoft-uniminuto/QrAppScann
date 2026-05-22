//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'estudiantes_request.g.dart';

/// EstudiantesRequest
///
/// Properties:
/// * [idPrograma] - Identificador del programa académico al que pertenece el estudiante.
/// * [nombres] - Nombres y apellidos del estudiante.
/// * [edad] - Edad actual del estudiante.
/// * [codigo] - Código único asignado al estudiante por la universidad.
/// * [correo] - Correo electrónico institucional del estudiante.
/// * [semestre] - Semestre actual que cursa el estudiante.
/// * [contrasea] - Contraseña para acceso al sistema.
@BuiltValue()
abstract class EstudiantesRequest
    implements Built<EstudiantesRequest, EstudiantesRequestBuilder> {
  /// Identificador del programa académico al que pertenece el estudiante.
  @BuiltValueField(wireName: r'id_programa')
  int get idPrograma;

  /// Nombres y apellidos del estudiante.
  @BuiltValueField(wireName: r'nombres')
  String get nombres;

  /// Edad actual del estudiante.
  @BuiltValueField(wireName: r'edad')
  int get edad;

  /// Código único asignado al estudiante por la universidad.
  @BuiltValueField(wireName: r'codigo')
  String get codigo;

  /// Correo electrónico institucional del estudiante.
  @BuiltValueField(wireName: r'correo')
  String get correo;

  /// Semestre actual que cursa el estudiante.
  @BuiltValueField(wireName: r'semestre')
  int get semestre;

  /// Contraseña para acceso al sistema.
  @BuiltValueField(wireName: r'contraseña')
  String get contrasea;

  EstudiantesRequest._();

  factory EstudiantesRequest([void updates(EstudiantesRequestBuilder b)]) =
      _$EstudiantesRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EstudiantesRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EstudiantesRequest> get serializer =>
      _$EstudiantesRequestSerializer();
}

class _$EstudiantesRequestSerializer
    implements PrimitiveSerializer<EstudiantesRequest> {
  @override
  final Iterable<Type> types = const [EstudiantesRequest, _$EstudiantesRequest];

  @override
  final String wireName = r'EstudiantesRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EstudiantesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id_programa';
    yield serializers.serialize(
      object.idPrograma,
      specifiedType: const FullType(int),
    );
    yield r'nombres';
    yield serializers.serialize(
      object.nombres,
      specifiedType: const FullType(String),
    );
    yield r'edad';
    yield serializers.serialize(
      object.edad,
      specifiedType: const FullType(int),
    );
    yield r'codigo';
    yield serializers.serialize(
      object.codigo,
      specifiedType: const FullType(String),
    );
    yield r'correo';
    yield serializers.serialize(
      object.correo,
      specifiedType: const FullType(String),
    );
    yield r'semestre';
    yield serializers.serialize(
      object.semestre,
      specifiedType: const FullType(int),
    );
    yield r'contraseña';
    yield serializers.serialize(
      object.contrasea,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EstudiantesRequest object, {
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
    required EstudiantesRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id_programa':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.idPrograma = valueDes;
          break;
        case r'nombres':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.nombres = valueDes;
          break;
        case r'edad':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.edad = valueDes;
          break;
        case r'codigo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.codigo = valueDes;
          break;
        case r'correo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.correo = valueDes;
          break;
        case r'semestre':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.semestre = valueDes;
          break;
        case r'contraseña':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.contrasea = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EstudiantesRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EstudiantesRequestBuilder();
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
