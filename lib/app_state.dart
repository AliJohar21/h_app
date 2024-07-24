import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _UID = prefs.getString('ff_UID') ?? _UID;
    });
    _safeInit(() {
      _clockedIn = prefs.getBool('ff_clockedIn') ?? _clockedIn;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _makephoto = false;
  bool get makephoto => _makephoto;
  set makephoto(bool value) {
    _makephoto = value;
  }

  String _fileBase64 = '';
  String get fileBase64 => _fileBase64;
  set fileBase64(String value) {
    _fileBase64 = value;
  }

  String _UID = '';
  String get UID => _UID;
  set UID(String value) {
    _UID = value;
    prefs.setString('ff_UID', value);
  }

  bool _clockedIn = false;
  bool get clockedIn => _clockedIn;
  set clockedIn(bool value) {
    _clockedIn = value;
    prefs.setBool('ff_clockedIn', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
