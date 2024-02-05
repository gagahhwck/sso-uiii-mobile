// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:profile_ui/utils/constants/api_constants.dart';

// class UIIIHttpHelper {
//   static const String _baseUrl = "https://itdev.uiii.ac.id/api";

//   // get request
//   static Future<Map<String, dynamic>> get(String endpoint) async {
//     final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
//     return _handleResponse(response);
//   }

//   // post request
//   static Future<Map<String, dynamic>> post(
//       String endpoint, dynamic data) async {
//     final response = await http.post(
//       Uri.parse('$_baseUrl/$endpoint'),
//       headers: {"key": UIIIAPIKey.UIIISecretAPIKey},
//       body: json.encode(data)
//     );
//     return _handleResponse(response);
//   }
// }
