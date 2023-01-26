// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_reports_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyReportsRecord> _$dailyReportsRecordSerializer =
    new _$DailyReportsRecordSerializer();

class _$DailyReportsRecordSerializer
    implements StructuredSerializer<DailyReportsRecord> {
  @override
  final Iterable<Type> types = const [DailyReportsRecord, _$DailyReportsRecord];
  @override
  final String wireName = 'DailyReportsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DailyReportsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.reportDate;
    if (value != null) {
      result
        ..add('report_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reportPost;
    if (value != null) {
      result
        ..add('report_post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.reportDescription;
    if (value != null) {
      result
        ..add('report_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reportWorkers;
    if (value != null) {
      result
        ..add('report_workers')
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
  DailyReportsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyReportsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'report_date':
          result.reportDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'report_post':
          result.reportPost = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'report_description':
          result.reportDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'report_workers':
          result.reportWorkers.replace(serializers.deserialize(value,
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

class _$DailyReportsRecord extends DailyReportsRecord {
  @override
  final DateTime? reportDate;
  @override
  final DocumentReference<Object?>? reportPost;
  @override
  final String? reportDescription;
  @override
  final BuiltList<DocumentReference<Object?>>? reportWorkers;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DailyReportsRecord(
          [void Function(DailyReportsRecordBuilder)? updates]) =>
      (new DailyReportsRecordBuilder()..update(updates))._build();

  _$DailyReportsRecord._(
      {this.reportDate,
      this.reportPost,
      this.reportDescription,
      this.reportWorkers,
      this.ffRef})
      : super._();

  @override
  DailyReportsRecord rebuild(
          void Function(DailyReportsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyReportsRecordBuilder toBuilder() =>
      new DailyReportsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyReportsRecord &&
        reportDate == other.reportDate &&
        reportPost == other.reportPost &&
        reportDescription == other.reportDescription &&
        reportWorkers == other.reportWorkers &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, reportDate.hashCode), reportPost.hashCode),
                reportDescription.hashCode),
            reportWorkers.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyReportsRecord')
          ..add('reportDate', reportDate)
          ..add('reportPost', reportPost)
          ..add('reportDescription', reportDescription)
          ..add('reportWorkers', reportWorkers)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DailyReportsRecordBuilder
    implements Builder<DailyReportsRecord, DailyReportsRecordBuilder> {
  _$DailyReportsRecord? _$v;

  DateTime? _reportDate;
  DateTime? get reportDate => _$this._reportDate;
  set reportDate(DateTime? reportDate) => _$this._reportDate = reportDate;

  DocumentReference<Object?>? _reportPost;
  DocumentReference<Object?>? get reportPost => _$this._reportPost;
  set reportPost(DocumentReference<Object?>? reportPost) =>
      _$this._reportPost = reportPost;

  String? _reportDescription;
  String? get reportDescription => _$this._reportDescription;
  set reportDescription(String? reportDescription) =>
      _$this._reportDescription = reportDescription;

  ListBuilder<DocumentReference<Object?>>? _reportWorkers;
  ListBuilder<DocumentReference<Object?>> get reportWorkers =>
      _$this._reportWorkers ??= new ListBuilder<DocumentReference<Object?>>();
  set reportWorkers(ListBuilder<DocumentReference<Object?>>? reportWorkers) =>
      _$this._reportWorkers = reportWorkers;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DailyReportsRecordBuilder() {
    DailyReportsRecord._initializeBuilder(this);
  }

  DailyReportsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportDate = $v.reportDate;
      _reportPost = $v.reportPost;
      _reportDescription = $v.reportDescription;
      _reportWorkers = $v.reportWorkers?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyReportsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailyReportsRecord;
  }

  @override
  void update(void Function(DailyReportsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyReportsRecord build() => _build();

  _$DailyReportsRecord _build() {
    _$DailyReportsRecord _$result;
    try {
      _$result = _$v ??
          new _$DailyReportsRecord._(
              reportDate: reportDate,
              reportPost: reportPost,
              reportDescription: reportDescription,
              reportWorkers: _reportWorkers?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reportWorkers';
        _reportWorkers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DailyReportsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
