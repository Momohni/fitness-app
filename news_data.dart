import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class NewsData with ChangeNotifier {
  Map<String, dynamic> _map = {};
  bool _error = false;
  String _errorMessage = '';

  Future<void> get fetchData async {
    final response = await get(Uri.parse(
        'https://newsdata.io/api/1/news?apikey=pub_20190cbf8e2229371a0e11cc976fdf1635c9d&q=pegasus&language=en'));
    if (response.statusCode == 200) {
      try {
        _map = jsonDecode(response.body);
        _error = false;
      } catch (e) {
        _error = true;
        _errorMessage = e.toString();
        _map = {};
      }
    } else {
      _error = true;
      _errorMessage = 'Error: Check you internet connection';
      _map = {};
    }
    notifyListeners();
  }

  void initialValues() {
    _error = false;
    _errorMessage = '';
    _map = {};
    notifyListeners();
  }

  Map<String, dynamic> get map => _map;
  bool get error => _error;
  String get errorMessage => _errorMessage;
}
