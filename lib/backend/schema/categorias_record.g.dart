// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorias_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriasRecord> _$categoriasRecordSerializer =
    new _$CategoriasRecordSerializer();

class _$CategoriasRecordSerializer
    implements StructuredSerializer<CategoriasRecord> {
  @override
  final Iterable<Type> types = const [CategoriasRecord, _$CategoriasRecord];
  @override
  final String wireName = 'CategoriasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CategoriasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CategoriasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoriasRecord extends CategoriasRecord {
  @override
  final String? nome;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoriasRecord(
          [void Function(CategoriasRecordBuilder)? updates]) =>
      (new CategoriasRecordBuilder()..update(updates))._build();

  _$CategoriasRecord._({this.nome, this.ffRef}) : super._();

  @override
  CategoriasRecord rebuild(void Function(CategoriasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriasRecordBuilder toBuilder() =>
      new CategoriasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriasRecord &&
        nome == other.nome &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nome.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoriasRecord')
          ..add('nome', nome)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoriasRecordBuilder
    implements Builder<CategoriasRecord, CategoriasRecordBuilder> {
  _$CategoriasRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoriasRecordBuilder() {
    CategoriasRecord._initializeBuilder(this);
  }

  CategoriasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriasRecord;
  }

  @override
  void update(void Function(CategoriasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriasRecord build() => _build();

  _$CategoriasRecord _build() {
    final _$result = _$v ?? new _$CategoriasRecord._(nome: nome, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
