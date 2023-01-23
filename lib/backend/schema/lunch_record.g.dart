// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lunch_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LunchRecord> _$lunchRecordSerializer = new _$LunchRecordSerializer();

class _$LunchRecordSerializer implements StructuredSerializer<LunchRecord> {
  @override
  final Iterable<Type> types = const [LunchRecord, _$LunchRecord];
  @override
  final String wireName = 'LunchRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LunchRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.lunchName;
    if (value != null) {
      result
        ..add('lunch_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lunchPhone;
    if (value != null) {
      result
        ..add('lunch_phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lunchCategory;
    if (value != null) {
      result
        ..add('lunch_category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lunchAddress;
    if (value != null) {
      result
        ..add('lunch_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lunchLink;
    if (value != null) {
      result
        ..add('lunch_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lunchDiscount;
    if (value != null) {
      result
        ..add('lunch_discount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  LunchRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LunchRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lunch_name':
          result.lunchName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lunch_phone':
          result.lunchPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lunch_category':
          result.lunchCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lunch_address':
          result.lunchAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lunch_link':
          result.lunchLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lunch_discount':
          result.lunchDiscount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$LunchRecord extends LunchRecord {
  @override
  final String? lunchName;
  @override
  final String? lunchPhone;
  @override
  final String? lunchCategory;
  @override
  final String? lunchAddress;
  @override
  final String? lunchLink;
  @override
  final int? lunchDiscount;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LunchRecord([void Function(LunchRecordBuilder)? updates]) =>
      (new LunchRecordBuilder()..update(updates))._build();

  _$LunchRecord._(
      {this.lunchName,
      this.lunchPhone,
      this.lunchCategory,
      this.lunchAddress,
      this.lunchLink,
      this.lunchDiscount,
      this.ffRef})
      : super._();

  @override
  LunchRecord rebuild(void Function(LunchRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LunchRecordBuilder toBuilder() => new LunchRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LunchRecord &&
        lunchName == other.lunchName &&
        lunchPhone == other.lunchPhone &&
        lunchCategory == other.lunchCategory &&
        lunchAddress == other.lunchAddress &&
        lunchLink == other.lunchLink &&
        lunchDiscount == other.lunchDiscount &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, lunchName.hashCode), lunchPhone.hashCode),
                        lunchCategory.hashCode),
                    lunchAddress.hashCode),
                lunchLink.hashCode),
            lunchDiscount.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LunchRecord')
          ..add('lunchName', lunchName)
          ..add('lunchPhone', lunchPhone)
          ..add('lunchCategory', lunchCategory)
          ..add('lunchAddress', lunchAddress)
          ..add('lunchLink', lunchLink)
          ..add('lunchDiscount', lunchDiscount)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LunchRecordBuilder implements Builder<LunchRecord, LunchRecordBuilder> {
  _$LunchRecord? _$v;

  String? _lunchName;
  String? get lunchName => _$this._lunchName;
  set lunchName(String? lunchName) => _$this._lunchName = lunchName;

  String? _lunchPhone;
  String? get lunchPhone => _$this._lunchPhone;
  set lunchPhone(String? lunchPhone) => _$this._lunchPhone = lunchPhone;

  String? _lunchCategory;
  String? get lunchCategory => _$this._lunchCategory;
  set lunchCategory(String? lunchCategory) =>
      _$this._lunchCategory = lunchCategory;

  String? _lunchAddress;
  String? get lunchAddress => _$this._lunchAddress;
  set lunchAddress(String? lunchAddress) => _$this._lunchAddress = lunchAddress;

  String? _lunchLink;
  String? get lunchLink => _$this._lunchLink;
  set lunchLink(String? lunchLink) => _$this._lunchLink = lunchLink;

  int? _lunchDiscount;
  int? get lunchDiscount => _$this._lunchDiscount;
  set lunchDiscount(int? lunchDiscount) =>
      _$this._lunchDiscount = lunchDiscount;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LunchRecordBuilder() {
    LunchRecord._initializeBuilder(this);
  }

  LunchRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lunchName = $v.lunchName;
      _lunchPhone = $v.lunchPhone;
      _lunchCategory = $v.lunchCategory;
      _lunchAddress = $v.lunchAddress;
      _lunchLink = $v.lunchLink;
      _lunchDiscount = $v.lunchDiscount;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LunchRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LunchRecord;
  }

  @override
  void update(void Function(LunchRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LunchRecord build() => _build();

  _$LunchRecord _build() {
    final _$result = _$v ??
        new _$LunchRecord._(
            lunchName: lunchName,
            lunchPhone: lunchPhone,
            lunchCategory: lunchCategory,
            lunchAddress: lunchAddress,
            lunchLink: lunchLink,
            lunchDiscount: lunchDiscount,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
