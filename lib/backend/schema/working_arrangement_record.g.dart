// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_arrangement_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkingArrangementRecord> _$workingArrangementRecordSerializer =
    new _$WorkingArrangementRecordSerializer();

class _$WorkingArrangementRecordSerializer
    implements StructuredSerializer<WorkingArrangementRecord> {
  @override
  final Iterable<Type> types = const [
    WorkingArrangementRecord,
    _$WorkingArrangementRecord
  ];
  @override
  final String wireName = 'WorkingArrangementRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WorkingArrangementRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.workingDay;
    if (value != null) {
      result
        ..add('working_day')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  WorkingArrangementRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkingArrangementRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'working_day':
          result.workingDay = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$WorkingArrangementRecord extends WorkingArrangementRecord {
  @override
  final DocumentReference<Object?>? userId;
  @override
  final DateTime? workingDay;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WorkingArrangementRecord(
          [void Function(WorkingArrangementRecordBuilder)? updates]) =>
      (new WorkingArrangementRecordBuilder()..update(updates))._build();

  _$WorkingArrangementRecord._({this.userId, this.workingDay, this.ffRef})
      : super._();

  @override
  WorkingArrangementRecord rebuild(
          void Function(WorkingArrangementRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkingArrangementRecordBuilder toBuilder() =>
      new WorkingArrangementRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkingArrangementRecord &&
        userId == other.userId &&
        workingDay == other.workingDay &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, userId.hashCode), workingDay.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkingArrangementRecord')
          ..add('userId', userId)
          ..add('workingDay', workingDay)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WorkingArrangementRecordBuilder
    implements
        Builder<WorkingArrangementRecord, WorkingArrangementRecordBuilder> {
  _$WorkingArrangementRecord? _$v;

  DocumentReference<Object?>? _userId;
  DocumentReference<Object?>? get userId => _$this._userId;
  set userId(DocumentReference<Object?>? userId) => _$this._userId = userId;

  DateTime? _workingDay;
  DateTime? get workingDay => _$this._workingDay;
  set workingDay(DateTime? workingDay) => _$this._workingDay = workingDay;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WorkingArrangementRecordBuilder() {
    WorkingArrangementRecord._initializeBuilder(this);
  }

  WorkingArrangementRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _workingDay = $v.workingDay;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkingArrangementRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkingArrangementRecord;
  }

  @override
  void update(void Function(WorkingArrangementRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkingArrangementRecord build() => _build();

  _$WorkingArrangementRecord _build() {
    final _$result = _$v ??
        new _$WorkingArrangementRecord._(
            userId: userId, workingDay: workingDay, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
