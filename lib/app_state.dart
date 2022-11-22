import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _sacola =
        prefs.getStringList('ff_sacola')?.map((path) => path.ref).toList() ??
            _sacola;
  }

  late SharedPreferences prefs;

  List<DocumentReference> _sacola = [];
  List<DocumentReference> get sacola => _sacola;
  set sacola(List<DocumentReference> _value) {
    _sacola = _value;
    prefs.setStringList('ff_sacola', _value.map((x) => x.path).toList());
  }

  void addToSacola(DocumentReference _value) {
    _sacola.add(_value);
    prefs.setStringList('ff_sacola', _sacola.map((x) => x.path).toList());
  }

  void removeFromSacola(DocumentReference _value) {
    _sacola.remove(_value);
    prefs.setStringList('ff_sacola', _sacola.map((x) => x.path).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
