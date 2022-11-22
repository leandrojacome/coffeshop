// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enderecos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnderecosRecord> _$enderecosRecordSerializer =
    new _$EnderecosRecordSerializer();

class _$EnderecosRecordSerializer
    implements StructuredSerializer<EnderecosRecord> {
  @override
  final Iterable<Type> types = const [EnderecosRecord, _$EnderecosRecord];
  @override
  final String wireName = 'EnderecosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EnderecosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.logradouro;
    if (value != null) {
      result
        ..add('logradouro')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numero;
    if (value != null) {
      result
        ..add('numero')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.complemento;
    if (value != null) {
      result
        ..add('complemento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bairro;
    if (value != null) {
      result
        ..add('bairro')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cep;
    if (value != null) {
      result
        ..add('cep')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
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
  EnderecosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnderecosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'logradouro':
          result.logradouro = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numero':
          result.numero = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'complemento':
          result.complemento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bairro':
          result.bairro = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cep':
          result.cep = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
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

class _$EnderecosRecord extends EnderecosRecord {
  @override
  final String? logradouro;
  @override
  final String? numero;
  @override
  final String? complemento;
  @override
  final String? bairro;
  @override
  final String? cep;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EnderecosRecord([void Function(EnderecosRecordBuilder)? updates]) =>
      (new EnderecosRecordBuilder()..update(updates))._build();

  _$EnderecosRecord._(
      {this.logradouro,
      this.numero,
      this.complemento,
      this.bairro,
      this.cep,
      this.user,
      this.ffRef})
      : super._();

  @override
  EnderecosRecord rebuild(void Function(EnderecosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnderecosRecordBuilder toBuilder() =>
      new EnderecosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnderecosRecord &&
        logradouro == other.logradouro &&
        numero == other.numero &&
        complemento == other.complemento &&
        bairro == other.bairro &&
        cep == other.cep &&
        user == other.user &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, logradouro.hashCode), numero.hashCode),
                        complemento.hashCode),
                    bairro.hashCode),
                cep.hashCode),
            user.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnderecosRecord')
          ..add('logradouro', logradouro)
          ..add('numero', numero)
          ..add('complemento', complemento)
          ..add('bairro', bairro)
          ..add('cep', cep)
          ..add('user', user)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EnderecosRecordBuilder
    implements Builder<EnderecosRecord, EnderecosRecordBuilder> {
  _$EnderecosRecord? _$v;

  String? _logradouro;
  String? get logradouro => _$this._logradouro;
  set logradouro(String? logradouro) => _$this._logradouro = logradouro;

  String? _numero;
  String? get numero => _$this._numero;
  set numero(String? numero) => _$this._numero = numero;

  String? _complemento;
  String? get complemento => _$this._complemento;
  set complemento(String? complemento) => _$this._complemento = complemento;

  String? _bairro;
  String? get bairro => _$this._bairro;
  set bairro(String? bairro) => _$this._bairro = bairro;

  String? _cep;
  String? get cep => _$this._cep;
  set cep(String? cep) => _$this._cep = cep;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EnderecosRecordBuilder() {
    EnderecosRecord._initializeBuilder(this);
  }

  EnderecosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logradouro = $v.logradouro;
      _numero = $v.numero;
      _complemento = $v.complemento;
      _bairro = $v.bairro;
      _cep = $v.cep;
      _user = $v.user;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnderecosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnderecosRecord;
  }

  @override
  void update(void Function(EnderecosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnderecosRecord build() => _build();

  _$EnderecosRecord _build() {
    final _$result = _$v ??
        new _$EnderecosRecord._(
            logradouro: logradouro,
            numero: numero,
            complemento: complemento,
            bairro: bairro,
            cep: cep,
            user: user,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
