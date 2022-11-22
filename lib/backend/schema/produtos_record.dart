import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'produtos_record.g.dart';

abstract class ProdutosRecord
    implements Built<ProdutosRecord, ProdutosRecordBuilder> {
  static Serializer<ProdutosRecord> get serializer =>
      _$produtosRecordSerializer;

  String? get nome;

  String? get descricao;

  String? get foto;

  DocumentReference? get categoria;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProdutosRecordBuilder builder) => builder
    ..nome = ''
    ..descricao = ''
    ..foto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produtos');

  static Stream<ProdutosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProdutosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProdutosRecord._();
  factory ProdutosRecord([void Function(ProdutosRecordBuilder) updates]) =
      _$ProdutosRecord;

  static ProdutosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProdutosRecordData({
  String? nome,
  String? descricao,
  String? foto,
  DocumentReference? categoria,
}) {
  final firestoreData = serializers.toFirestore(
    ProdutosRecord.serializer,
    ProdutosRecord(
      (p) => p
        ..nome = nome
        ..descricao = descricao
        ..foto = foto
        ..categoria = categoria,
    ),
  );

  return firestoreData;
}
