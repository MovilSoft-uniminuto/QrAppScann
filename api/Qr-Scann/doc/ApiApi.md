# openapi.api.ApiApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1EstudiantesCreate**](ApiApi.md#apiv1estudiantescreate) | **POST** /api/v1/estudiantes/ | Lista los estudiantes registrados
[**apiV1EstudiantesList**](ApiApi.md#apiv1estudianteslist) | **GET** /api/v1/estudiantes/ | Lista los estudiantes registrados
[**apiV1EstudiantesRetrieve**](ApiApi.md#apiv1estudiantesretrieve) | **GET** /api/v1/estudiantes/{idestudiante}/ | Obtiene el detalle de un estudiante
[**apiV1IngresoCreate**](ApiApi.md#apiv1ingresocreate) | **POST** /api/v1/ingreso/ | Lista los ingresos registrados
[**apiV1IngresoList**](ApiApi.md#apiv1ingresolist) | **GET** /api/v1/ingreso/ | Lista los ingresos registrados
[**apiV1IngresoRetrieve**](ApiApi.md#apiv1ingresoretrieve) | **GET** /api/v1/ingreso/{idingreso}/ | Obtiene el detalle de un ingreso


# **apiV1EstudiantesCreate**
> BuiltList<Estudiantes> apiV1EstudiantesCreate(estudiantesRequest, buscar)

Lista los estudiantes registrados

Este endpoint devuelve todos los estudiantes actualmente registrados en el sistema.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getApiApi();
final EstudiantesRequest estudiantesRequest = [{"id":1,"nombre":"Juan Pérez","codigo":"12345"}]; // EstudiantesRequest | 
final String buscar = buscar_example; // String | Filtro de búsqueda por nombre o código

try {
    final response = api.apiV1EstudiantesCreate(estudiantesRequest, buscar);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiApi->apiV1EstudiantesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **estudiantesRequest** | [**EstudiantesRequest**](EstudiantesRequest.md)|  | 
 **buscar** | **String**| Filtro de búsqueda por nombre o código | [optional] 

### Return type

[**BuiltList&lt;Estudiantes&gt;**](Estudiantes.md)

### Authorization

[basicAuth](../README.md#basicAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1EstudiantesList**
> BuiltList<Estudiantes> apiV1EstudiantesList(buscar)

Lista los estudiantes registrados

Este endpoint devuelve todos los estudiantes actualmente registrados en el sistema.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getApiApi();
final String buscar = buscar_example; // String | Filtro de búsqueda por nombre o código

try {
    final response = api.apiV1EstudiantesList(buscar);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiApi->apiV1EstudiantesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buscar** | **String**| Filtro de búsqueda por nombre o código | [optional] 

### Return type

[**BuiltList&lt;Estudiantes&gt;**](Estudiantes.md)

### Authorization

[basicAuth](../README.md#basicAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1EstudiantesRetrieve**
> Estudiantes apiV1EstudiantesRetrieve(idestudiante)

Obtiene el detalle de un estudiante

Este endpoint devuelve la información detallada de un estudiante específico, dado su ID.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getApiApi();
final int idestudiante = 56; // int | 

try {
    final response = api.apiV1EstudiantesRetrieve(idestudiante);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiApi->apiV1EstudiantesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idestudiante** | **int**|  | 

### Return type

[**Estudiantes**](Estudiantes.md)

### Authorization

[basicAuth](../README.md#basicAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1IngresoCreate**
> BuiltList<Ingreso> apiV1IngresoCreate(ingresoRequest)

Lista los ingresos registrados

Este endpoint devuelve todos los ingresos registrados en el sistema.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getApiApi();
final IngresoRequest ingresoRequest = [{"id":1,"estudiante":1,"fecha":"2025-05-02T12:00:00Z"}]; // IngresoRequest | 

try {
    final response = api.apiV1IngresoCreate(ingresoRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiApi->apiV1IngresoCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingresoRequest** | [**IngresoRequest**](IngresoRequest.md)|  | 

### Return type

[**BuiltList&lt;Ingreso&gt;**](Ingreso.md)

### Authorization

[basicAuth](../README.md#basicAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1IngresoList**
> BuiltList<Ingreso> apiV1IngresoList()

Lista los ingresos registrados

Este endpoint devuelve todos los ingresos registrados en el sistema.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getApiApi();

try {
    final response = api.apiV1IngresoList();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiApi->apiV1IngresoList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Ingreso&gt;**](Ingreso.md)

### Authorization

[basicAuth](../README.md#basicAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1IngresoRetrieve**
> Ingreso apiV1IngresoRetrieve(idingreso)

Obtiene el detalle de un ingreso

Este endpoint devuelve la información detallada de un ingreso específico, dado su ID.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api = Openapi().getApiApi();
final int idingreso = 56; // int | 

try {
    final response = api.apiV1IngresoRetrieve(idingreso);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiApi->apiV1IngresoRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idingreso** | **int**|  | 

### Return type

[**Ingreso**](Ingreso.md)

### Authorization

[basicAuth](../README.md#basicAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

