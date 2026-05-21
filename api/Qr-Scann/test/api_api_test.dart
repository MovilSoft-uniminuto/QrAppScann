import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ApiApi
void main() {
  final instance = Openapi().getApiApi();

  group(ApiApi, () {
    // Lista los estudiantes registrados
    //
    // Este endpoint devuelve todos los estudiantes actualmente registrados en el sistema.
    //
    //Future<BuiltList<Estudiantes>> apiV1EstudiantesCreate(EstudiantesRequest estudiantesRequest, { String buscar }) async
    test('test apiV1EstudiantesCreate', () async {
      // TODO
    });

    // Lista los estudiantes registrados
    //
    // Este endpoint devuelve todos los estudiantes actualmente registrados en el sistema.
    //
    //Future<BuiltList<Estudiantes>> apiV1EstudiantesList({ String buscar }) async
    test('test apiV1EstudiantesList', () async {
      // TODO
    });

    // Obtiene el detalle de un estudiante
    //
    // Este endpoint devuelve la información detallada de un estudiante específico, dado su ID.
    //
    //Future<Estudiantes> apiV1EstudiantesRetrieve(int idestudiante) async
    test('test apiV1EstudiantesRetrieve', () async {
      // TODO
    });

    // Lista los ingresos registrados
    //
    // Este endpoint devuelve todos los ingresos registrados en el sistema.
    //
    //Future<BuiltList<Ingreso>> apiV1IngresoCreate(IngresoRequest ingresoRequest) async
    test('test apiV1IngresoCreate', () async {
      // TODO
    });

    // Lista los ingresos registrados
    //
    // Este endpoint devuelve todos los ingresos registrados en el sistema.
    //
    //Future<BuiltList<Ingreso>> apiV1IngresoList() async
    test('test apiV1IngresoList', () async {
      // TODO
    });

    // Obtiene el detalle de un ingreso
    //
    // Este endpoint devuelve la información detallada de un ingreso específico, dado su ID.
    //
    //Future<Ingreso> apiV1IngresoRetrieve(int idingreso) async
    test('test apiV1IngresoRetrieve', () async {
      // TODO
    });

  });
}
