import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'enderecos_record.g.dart';

abstract class EnderecosRecord
    implements Built<EnderecosRecord, EnderecosRecordBuilder> {
  static Serializer<EnderecosRecord> get serializer =>
      _$enderecosRecordSerializer;

  String? get logradouro;

  String? get numero;

  String? get complemento;

  String? get bairro;

  String? get cep;

  DocumentReference? get user;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EnderecosRecordBuilder builder) => builder
    ..logradouro = ''
    ..numero = ''
    ..complemento = ''
    ..bairro = ''
    ..cep = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('enderecos');

  static Stream<EnderecosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EnderecosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EnderecosRecord._();
  factory EnderecosRecord([void Function(EnderecosRecordBuilder) updates]) =
      _$EnderecosRecord;

  static EnderecosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEnderecosRecordData({
  String? logradouro,
  String? numero,
  String? complemento,
  String? bairro,
  String? cep,
  DocumentReference? user,
}) {
  final firestoreData = serializers.toFirestore(
    EnderecosRecord.serializer,
    EnderecosRecord(
      (e) => e
        ..logradouro = logradouro
        ..numero = numero
        ..complemento = complemento
        ..bairro = bairro
        ..cep = cep
        ..user = user,
    ),
  );

  return firestoreData;
}
