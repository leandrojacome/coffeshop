// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produtos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdutosRecord> _$produtosRecordSerializer =
    new _$ProdutosRecordSerializer();

class _$ProdutosRecordSerializer
    implements StructuredSerializer<ProdutosRecord> {
  @override
  final Iterable<Type> types = const [ProdutosRecord, _$ProdutosRecord];
  @override
  final String wireName = 'ProdutosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProdutosRecord object,
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
    value = object.descricao;
    if (value != null) {
      result
        ..add('descricao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.foto;
    if (value != null) {
      result
        ..add('foto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoria;
    if (value != null) {
      result
        ..add('categoria')
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
  ProdutosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdutosRecordBuilder();

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
        case 'descricao':
          result.descricao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'foto':
          result.foto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'categoria':
          result.categoria = serializers.deserialize(value,
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

class _$ProdutosRecord extends ProdutosRecord {
  @override
  final String? nome;
  @override
  final String? descricao;
  @override
  final String? foto;
  @override
  final DocumentReference<Object?>? categoria;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProdutosRecord([void Function(ProdutosRecordBuilder)? updates]) =>
      (new ProdutosRecordBuilder()..update(updates))._build();

  _$ProdutosRecord._(
      {this.nome, this.descricao, this.foto, this.categoria, this.ffRef})
      : super._();

  @override
  ProdutosRecord rebuild(void Function(ProdutosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdutosRecordBuilder toBuilder() =>
      new ProdutosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdutosRecord &&
        nome == other.nome &&
        descricao == other.descricao &&
        foto == other.foto &&
        categoria == other.categoria &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, nome.hashCode), descricao.hashCode), foto.hashCode),
            categoria.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProdutosRecord')
          ..add('nome', nome)
          ..add('descricao', descricao)
          ..add('foto', foto)
          ..add('categoria', categoria)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProdutosRecordBuilder
    implements Builder<ProdutosRecord, ProdutosRecordBuilder> {
  _$ProdutosRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  String? _foto;
  String? get foto => _$this._foto;
  set foto(String? foto) => _$this._foto = foto;

  DocumentReference<Object?>? _categoria;
  DocumentReference<Object?>? get categoria => _$this._categoria;
  set categoria(DocumentReference<Object?>? categoria) =>
      _$this._categoria = categoria;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProdutosRecordBuilder() {
    ProdutosRecord._initializeBuilder(this);
  }

  ProdutosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _descricao = $v.descricao;
      _foto = $v.foto;
      _categoria = $v.categoria;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdutosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdutosRecord;
  }

  @override
  void update(void Function(ProdutosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProdutosRecord build() => _build();

  _$ProdutosRecord _build() {
    final _$result = _$v ??
        new _$ProdutosRecord._(
            nome: nome,
            descricao: descricao,
            foto: foto,
            categoria: categoria,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
