// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_preferences_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LeavePreferencesRecord> _$leavePreferencesRecordSerializer =
    new _$LeavePreferencesRecordSerializer();

class _$LeavePreferencesRecordSerializer
    implements StructuredSerializer<LeavePreferencesRecord> {
  @override
  final Iterable<Type> types = const [
    LeavePreferencesRecord,
    _$LeavePreferencesRecord
  ];
  @override
  final String wireName = 'LeavePreferencesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LeavePreferencesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date1;
    if (value != null) {
      result
        ..add('date1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.date2;
    if (value != null) {
      result
        ..add('date2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.date3;
    if (value != null) {
      result
        ..add('date3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.date4;
    if (value != null) {
      result
        ..add('date4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.date5;
    if (value != null) {
      result
        ..add('date5')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.date6;
    if (value != null) {
      result
        ..add('date6')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
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
  LeavePreferencesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LeavePreferencesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date1':
          result.date1 = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'date2':
          result.date2 = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'date3':
          result.date3 = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'date4':
          result.date4 = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'date5':
          result.date5 = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'date6':
          result.date6 = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
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

class _$LeavePreferencesRecord extends LeavePreferencesRecord {
  @override
  final String? userName;
  @override
  final DateTime? date1;
  @override
  final DateTime? date2;
  @override
  final DateTime? date3;
  @override
  final DateTime? date4;
  @override
  final DateTime? date5;
  @override
  final DateTime? date6;
  @override
  final DocumentReference<Object?>? uid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LeavePreferencesRecord(
          [void Function(LeavePreferencesRecordBuilder)? updates]) =>
      (new LeavePreferencesRecordBuilder()..update(updates))._build();

  _$LeavePreferencesRecord._(
      {this.userName,
      this.date1,
      this.date2,
      this.date3,
      this.date4,
      this.date5,
      this.date6,
      this.uid,
      this.ffRef})
      : super._();

  @override
  LeavePreferencesRecord rebuild(
          void Function(LeavePreferencesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeavePreferencesRecordBuilder toBuilder() =>
      new LeavePreferencesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeavePreferencesRecord &&
        userName == other.userName &&
        date1 == other.date1 &&
        date2 == other.date2 &&
        date3 == other.date3 &&
        date4 == other.date4 &&
        date5 == other.date5 &&
        date6 == other.date6 &&
        uid == other.uid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, userName.hashCode), date1.hashCode),
                                date2.hashCode),
                            date3.hashCode),
                        date4.hashCode),
                    date5.hashCode),
                date6.hashCode),
            uid.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LeavePreferencesRecord')
          ..add('userName', userName)
          ..add('date1', date1)
          ..add('date2', date2)
          ..add('date3', date3)
          ..add('date4', date4)
          ..add('date5', date5)
          ..add('date6', date6)
          ..add('uid', uid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LeavePreferencesRecordBuilder
    implements Builder<LeavePreferencesRecord, LeavePreferencesRecordBuilder> {
  _$LeavePreferencesRecord? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  DateTime? _date1;
  DateTime? get date1 => _$this._date1;
  set date1(DateTime? date1) => _$this._date1 = date1;

  DateTime? _date2;
  DateTime? get date2 => _$this._date2;
  set date2(DateTime? date2) => _$this._date2 = date2;

  DateTime? _date3;
  DateTime? get date3 => _$this._date3;
  set date3(DateTime? date3) => _$this._date3 = date3;

  DateTime? _date4;
  DateTime? get date4 => _$this._date4;
  set date4(DateTime? date4) => _$this._date4 = date4;

  DateTime? _date5;
  DateTime? get date5 => _$this._date5;
  set date5(DateTime? date5) => _$this._date5 = date5;

  DateTime? _date6;
  DateTime? get date6 => _$this._date6;
  set date6(DateTime? date6) => _$this._date6 = date6;

  DocumentReference<Object?>? _uid;
  DocumentReference<Object?>? get uid => _$this._uid;
  set uid(DocumentReference<Object?>? uid) => _$this._uid = uid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LeavePreferencesRecordBuilder() {
    LeavePreferencesRecord._initializeBuilder(this);
  }

  LeavePreferencesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _date1 = $v.date1;
      _date2 = $v.date2;
      _date3 = $v.date3;
      _date4 = $v.date4;
      _date5 = $v.date5;
      _date6 = $v.date6;
      _uid = $v.uid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeavePreferencesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LeavePreferencesRecord;
  }

  @override
  void update(void Function(LeavePreferencesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeavePreferencesRecord build() => _build();

  _$LeavePreferencesRecord _build() {
    final _$result = _$v ??
        new _$LeavePreferencesRecord._(
            userName: userName,
            date1: date1,
            date2: date2,
            date3: date3,
            date4: date4,
            date5: date5,
            date6: date6,
            uid: uid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
