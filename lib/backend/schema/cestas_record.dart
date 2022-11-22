import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cestas_record.g.dart';

abstract class CestasRecord
    implements Built<CestasRecord, CestasRecordBuilder> {
  static Serializer<CestasRecord> get serializer => _$cestasRecordSerializer;

  String? get nome;

  String? get descricao;

  double? get valor;

  String? get foto;

  int? get numeroItens;

  BuiltList<DocumentReference>? get itensCesta;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CestasRecordBuilder builder) => builder
    ..nome = ''
    ..descricao = ''
    ..valor = 0.0
    ..foto = ''
    ..numeroItens = 0
    ..itensCesta = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cestas');

  static Stream<CestasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CestasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CestasRecord._();
  factory CestasRecord([void Function(CestasRecordBuilder) updates]) =
      _$CestasRecord;

  static CestasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCestasRecordData({
  String? nome,
  String? descricao,
  double? valor,
  String? foto,
  int? numeroItens,
}) {
  final firestoreData = serializers.toFirestore(
    CestasRecord.serializer,
    CestasRecord(
      (c) => c
        ..nome = nome
        ..descricao = descricao
        ..valor = valor
        ..foto = foto
        ..numeroItens = numeroItens
        ..itensCesta = null,
    ),
  );

  return firestoreData;
}
