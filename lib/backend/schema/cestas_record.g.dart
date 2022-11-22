// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cestas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CestasRecord> _$cestasRecordSerializer =
    new _$CestasRecordSerializer();

class _$CestasRecordSerializer implements StructuredSerializer<CestasRecord> {
  @override
  final Iterable<Type> types = const [CestasRecord, _$CestasRecord];
  @override
  final String wireName = 'CestasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CestasRecord object,
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
    value = object.valor;
    if (value != null) {
      result
        ..add('valor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.foto;
    if (value != null) {
      result
        ..add('foto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numeroItens;
    if (value != null) {
      result
        ..add('numeroItens')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.itensCesta;
    if (value != null) {
      result
        ..add('itensCesta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  CestasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CestasRecordBuilder();

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
        case 'valor':
          result.valor = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'foto':
          result.foto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numeroItens':
          result.numeroItens = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'itensCesta':
          result.itensCesta.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$CestasRecord extends CestasRecord {
  @override
  final String? nome;
  @override
  final String? descricao;
  @override
  final double? valor;
  @override
  final String? foto;
  @override
  final int? numeroItens;
  @override
  final BuiltList<DocumentReference<Object?>>? itensCesta;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CestasRecord([void Function(CestasRecordBuilder)? updates]) =>
      (new CestasRecordBuilder()..update(updates))._build();

  _$CestasRecord._(
      {this.nome,
      this.descricao,
      this.valor,
      this.foto,
      this.numeroItens,
      this.itensCesta,
      this.ffRef})
      : super._();

  @override
  CestasRecord rebuild(void Function(CestasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CestasRecordBuilder toBuilder() => new CestasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CestasRecord &&
        nome == other.nome &&
        descricao == other.descricao &&
        valor == other.valor &&
        foto == other.foto &&
        numeroItens == other.numeroItens &&
        itensCesta == other.itensCesta &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nome.hashCode), descricao.hashCode),
                        valor.hashCode),
                    foto.hashCode),
                numeroItens.hashCode),
            itensCesta.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CestasRecord')
          ..add('nome', nome)
          ..add('descricao', descricao)
          ..add('valor', valor)
          ..add('foto', foto)
          ..add('numeroItens', numeroItens)
          ..add('itensCesta', itensCesta)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CestasRecordBuilder
    implements Builder<CestasRecord, CestasRecordBuilder> {
  _$CestasRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  double? _valor;
  double? get valor => _$this._valor;
  set valor(double? valor) => _$this._valor = valor;

  String? _foto;
  String? get foto => _$this._foto;
  set foto(String? foto) => _$this._foto = foto;

  int? _numeroItens;
  int? get numeroItens => _$this._numeroItens;
  set numeroItens(int? numeroItens) => _$this._numeroItens = numeroItens;

  ListBuilder<DocumentReference<Object?>>? _itensCesta;
  ListBuilder<DocumentReference<Object?>> get itensCesta =>
      _$this._itensCesta ??= new ListBuilder<DocumentReference<Object?>>();
  set itensCesta(ListBuilder<DocumentReference<Object?>>? itensCesta) =>
      _$this._itensCesta = itensCesta;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CestasRecordBuilder() {
    CestasRecord._initializeBuilder(this);
  }

  CestasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _descricao = $v.descricao;
      _valor = $v.valor;
      _foto = $v.foto;
      _numeroItens = $v.numeroItens;
      _itensCesta = $v.itensCesta?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CestasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CestasRecord;
  }

  @override
  void update(void Function(CestasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CestasRecord build() => _build();

  _$CestasRecord _build() {
    _$CestasRecord _$result;
    try {
      _$result = _$v ??
          new _$CestasRecord._(
              nome: nome,
              descricao: descricao,
              valor: valor,
              foto: foto,
              numeroItens: numeroItens,
              itensCesta: _itensCesta?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'itensCesta';
        _itensCesta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CestasRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
