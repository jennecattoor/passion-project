// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lost_childs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LostChildsRecord> _$lostChildsRecordSerializer =
    new _$LostChildsRecordSerializer();

class _$LostChildsRecordSerializer
    implements StructuredSerializer<LostChildsRecord> {
  @override
  final Iterable<Type> types = const [LostChildsRecord, _$LostChildsRecord];
  @override
  final String wireName = 'LostChildsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LostChildsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.childPost;
    if (value != null) {
      result
        ..add('child_post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.childDescription;
    if (value != null) {
      result
        ..add('child_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.childImage;
    if (value != null) {
      result
        ..add('child_image')
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
    value = object.childFound;
    if (value != null) {
      result
        ..add('child_found')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  LostChildsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LostChildsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'child_post':
          result.childPost = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'child_description':
          result.childDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'child_image':
          result.childImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'child_found':
          result.childFound = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$LostChildsRecord extends LostChildsRecord {
  @override
  final DocumentReference<Object?>? childPost;
  @override
  final String? childDescription;
  @override
  final String? childImage;
  @override
  final DateTime? createdTime;
  @override
  final bool? childFound;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LostChildsRecord(
          [void Function(LostChildsRecordBuilder)? updates]) =>
      (new LostChildsRecordBuilder()..update(updates))._build();

  _$LostChildsRecord._(
      {this.childPost,
      this.childDescription,
      this.childImage,
      this.createdTime,
      this.childFound,
      this.ffRef})
      : super._();

  @override
  LostChildsRecord rebuild(void Function(LostChildsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LostChildsRecordBuilder toBuilder() =>
      new LostChildsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LostChildsRecord &&
        childPost == other.childPost &&
        childDescription == other.childDescription &&
        childImage == other.childImage &&
        createdTime == other.createdTime &&
        childFound == other.childFound &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, childPost.hashCode), childDescription.hashCode),
                    childImage.hashCode),
                createdTime.hashCode),
            childFound.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LostChildsRecord')
          ..add('childPost', childPost)
          ..add('childDescription', childDescription)
          ..add('childImage', childImage)
          ..add('createdTime', createdTime)
          ..add('childFound', childFound)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LostChildsRecordBuilder
    implements Builder<LostChildsRecord, LostChildsRecordBuilder> {
  _$LostChildsRecord? _$v;

  DocumentReference<Object?>? _childPost;
  DocumentReference<Object?>? get childPost => _$this._childPost;
  set childPost(DocumentReference<Object?>? childPost) =>
      _$this._childPost = childPost;

  String? _childDescription;
  String? get childDescription => _$this._childDescription;
  set childDescription(String? childDescription) =>
      _$this._childDescription = childDescription;

  String? _childImage;
  String? get childImage => _$this._childImage;
  set childImage(String? childImage) => _$this._childImage = childImage;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  bool? _childFound;
  bool? get childFound => _$this._childFound;
  set childFound(bool? childFound) => _$this._childFound = childFound;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LostChildsRecordBuilder() {
    LostChildsRecord._initializeBuilder(this);
  }

  LostChildsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _childPost = $v.childPost;
      _childDescription = $v.childDescription;
      _childImage = $v.childImage;
      _createdTime = $v.createdTime;
      _childFound = $v.childFound;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LostChildsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LostChildsRecord;
  }

  @override
  void update(void Function(LostChildsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LostChildsRecord build() => _build();

  _$LostChildsRecord _build() {
    final _$result = _$v ??
        new _$LostChildsRecord._(
            childPost: childPost,
            childDescription: childDescription,
            childImage: childImage,
            createdTime: createdTime,
            childFound: childFound,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
