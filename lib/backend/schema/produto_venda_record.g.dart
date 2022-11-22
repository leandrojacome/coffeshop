// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_venda_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdutoVendaRecord> _$produtoVendaRecordSerializer =
    new _$ProdutoVendaRecordSerializer();

class _$ProdutoVendaRecordSerializer
    implements StructuredSerializer<ProdutoVendaRecord> {
  @override
  final Iterable<Type> types = const [ProdutoVendaRecord, _$ProdutoVendaRecord];
  @override
  final String wireName = 'ProdutoVendaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProdutoVendaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.quantidade;
    if (value != null) {
      result
        ..add('quantidade')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.valorSubTotal;
    if (value != null) {
      result
        ..add('valorSubTotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cesta;
    if (value != null) {
      result
        ..add('cesta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  ProdutoVendaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdutoVendaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'quantidade':
          result.quantidade = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'valorSubTotal':
          result.valorSubTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cesta':
          result.cesta = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$ProdutoVendaRecord extends ProdutoVendaRecord {
  @override
  final int? quantidade;
  @override
  final double? valorSubTotal;
  @override
  final DocumentReference<Object?>? cesta;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProdutoVendaRecord(
          [void Function(ProdutoVendaRecordBuilder)? updates]) =>
      (new ProdutoVendaRecordBuilder()..update(updates))._build();

  _$ProdutoVendaRecord._(
      {this.quantidade, this.valorSubTotal, this.cesta, this.ffRef})
      : super._();

  @override
  ProdutoVendaRecord rebuild(
          void Function(ProdutoVendaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdutoVendaRecordBuilder toBuilder() =>
      new ProdutoVendaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdutoVendaRecord &&
        quantidade == other.quantidade &&
        valorSubTotal == other.valorSubTotal &&
        cesta == other.cesta &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, quantidade.hashCode), valorSubTotal.hashCode),
            cesta.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProdutoVendaRecord')
          ..add('quantidade', quantidade)
          ..add('valorSubTotal', valorSubTotal)
          ..add('cesta', cesta)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProdutoVendaRecordBuilder
    implements Builder<ProdutoVendaRecord, ProdutoVendaRecordBuilder> {
  _$ProdutoVendaRecord? _$v;

  int? _quantidade;
  int? get quantidade => _$this._quantidade;
  set quantidade(int? quantidade) => _$this._quantidade = quantidade;

  double? _valorSubTotal;
  double? get valorSubTotal => _$this._valorSubTotal;
  set valorSubTotal(double? valorSubTotal) =>
      _$this._valorSubTotal = valorSubTotal;

  DocumentReference<Object?>? _cesta;
  DocumentReference<Object?>? get cesta => _$this._cesta;
  set cesta(DocumentReference<Object?>? cesta) => _$this._cesta = cesta;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProdutoVendaRecordBuilder() {
    ProdutoVendaRecord._initializeBuilder(this);
  }

  ProdutoVendaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quantidade = $v.quantidade;
      _valorSubTotal = $v.valorSubTotal;
      _cesta = $v.cesta;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdutoVendaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdutoVendaRecord;
  }

  @override
  void update(void Function(ProdutoVendaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProdutoVendaRecord build() => _build();

  _$ProdutoVendaRecord _build() {
    final _$result = _$v ??
        new _$ProdutoVendaRecord._(
            quantidade: quantidade,
            valorSubTotal: valorSubTotal,
            cesta: cesta,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
