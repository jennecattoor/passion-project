import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'daily_reports_record.g.dart';

abstract class DailyReportsRecord
    implements Built<DailyReportsRecord, DailyReportsRecordBuilder> {
  static Serializer<DailyReportsRecord> get serializer =>
      _$dailyReportsRecordSerializer;

  @BuiltValueField(wireName: 'report_date')
  DateTime? get reportDate;

  @BuiltValueField(wireName: 'report_post')
  DocumentReference? get reportPost;

  @BuiltValueField(wireName: 'report_description')
  String? get reportDescription;

  @BuiltValueField(wireName: 'report_workers')
  BuiltList<DocumentReference>? get reportWorkers;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DailyReportsRecordBuilder builder) => builder
    ..reportDescription = ''
    ..reportWorkers = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('daily_reports');

  static Stream<DailyReportsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DailyReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DailyReportsRecord._();
  factory DailyReportsRecord(
          [void Function(DailyReportsRecordBuilder) updates]) =
      _$DailyReportsRecord;

  static DailyReportsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDailyReportsRecordData({
  DateTime? reportDate,
  DocumentReference? reportPost,
  String? reportDescription,
}) {
  final firestoreData = serializers.toFirestore(
    DailyReportsRecord.serializer,
    DailyReportsRecord(
      (d) => d
        ..reportDate = reportDate
        ..reportPost = reportPost
        ..reportDescription = reportDescription
        ..reportWorkers = null,
    ),
  );

  return firestoreData;
}
