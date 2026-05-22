//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/estudiantes.dart';
import 'package:openapi/src/model/estudiantes_request.dart';
import 'package:openapi/src/model/ingreso.dart';
import 'package:openapi/src/model/ingreso_request.dart';

part 'serializers.g.dart';

@SerializersFor([Estudiantes, EstudiantesRequest, Ingreso, IngresoRequest])
Serializers serializers =
    (_$serializers.toBuilder()
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(Ingreso)]),
            () => ListBuilder<Ingreso>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(Estudiantes)]),
            () => ListBuilder<Estudiantes>(),
          )
          ..add(const OneOfSerializer())
          ..add(const AnyOfSerializer())
          ..add(const DateSerializer())
          ..add(Iso8601DateTimeSerializer()))
        .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
