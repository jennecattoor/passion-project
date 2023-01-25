// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'defects_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DefectsRecord> _$defectsRecordSerializer =
    new _$DefectsRecordSerializer();

class _$DefectsRecordSerializer implements StructuredSerializer<DefectsRecord> {
  @override
  final Iterable<Type> types = const [DefectsRecord, _$DefectsRecord];
  @override
  final String wireName = 'DefectsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DefectsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.defectDescription;
    if (value != null) {
      result
        ..add('defect_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.defectPost;
    if (value != null) {
      result
        ..add('defect_post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.defectImage;
    if (value != null) {
      result
        ..add('defect_image')
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
  DefectsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DefectsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'defect_description':
          result.defectDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'defect_post':
          result.defectPost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'defect_image':
          result.defectImage = serializers.deserialize(value,
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

class _$DefectsRecord extends DefectsRecord {
  @override
  final String? defectDescription;
  @override
  final DateTime? createdTime;
  @override
  final String? defectPost;
  @override
  final String? defectImage;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DefectsRecord([void Function(DefectsRecordBuilder)? updates]) =>
      (new DefectsRecordBuilder()..update(updates))._build();

  _$DefectsRecord._(
      {this.defectDescription,
      this.createdTime,
      this.defectPost,
      this.defectImage,
      this.ffRef})
      : super._();

  @override
  DefectsRecord rebuild(void Function(DefectsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DefectsRecordBuilder toBuilder() => new DefectsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefectsRecord &&
        defectDescription == other.defectDescription &&
        createdTime == other.createdTime &&
        defectPost == other.defectPost &&
        defectImage == other.defectImage &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, defectDescription.hashCode), createdTime.hashCode),
                defectPost.hashCode),
            defectImage.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DefectsRecord')
          ..add('defectDescription', defectDescription)
          ..add('createdTime', createdTime)
          ..add('defectPost', defectPost)
          ..add('defectImage', defectImage)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DefectsRecordBuilder
    implements Builder<DefectsRecord, DefectsRecordBuilder> {
  _$DefectsRecord? _$v;

  String? _defectDescription;
  String? get defectDescription => _$this._defectDescription;
  set defectDescription(String? defectDescription) =>
      _$this._defectDescription = defectDescription;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _defectPost;
  String? get defectPost => _$this._defectPost;
  set defectPost(String? defectPost) => _$this._defectPost = defectPost;

  String? _defectImage;
  String? get defectImage => _$this._defectImage;
  set defectImage(String? defectImage) => _$this._defectImage = defectImage;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DefectsRecordBuilder() {
    DefectsRecord._initializeBuilder(this);
  }

  DefectsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defectDescription = $v.defectDescription;
      _createdTime = $v.createdTime;
      _defectPost = $v.defectPost;
      _defectImage = $v.defectImage;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DefectsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DefectsRecord;
  }

  @override
  void update(void Function(DefectsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DefectsRecord build() => _build();

  _$DefectsRecord _build() {
    final _$result = _$v ??
        new _$DefectsRecord._(
            defectDescription: defectDescription,
            createdTime: createdTime,
            defectPost: defectPost,
            defectImage: defectImage,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
