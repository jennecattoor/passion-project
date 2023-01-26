import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'working_arrangement_record.g.dart';

abstract class WorkingArrangementRecord
    implements
        Built<WorkingArrangementRecord, WorkingArrangementRecordBuilder> {
  static Serializer<WorkingArrangementRecord> get serializer =>
      _$workingArrangementRecordSerializer;

  @BuiltValueField(wireName: 'user_id')
  DocumentReference? get userId;

  @BuiltValueField(wireName: 'working_day')
  DateTime? get workingDay;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WorkingArrangementRecordBuilder builder) =>
      builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('working_arrangement');

  static Stream<WorkingArrangementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WorkingArrangementRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WorkingArrangementRecord._();
  factory WorkingArrangementRecord(
          [void Function(WorkingArrangementRecordBuilder) updates]) =
      _$WorkingArrangementRecord;

  static WorkingArrangementRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWorkingArrangementRecordData({
  DocumentReference? userId,
  DateTime? workingDay,
}) {
  final firestoreData = serializers.toFirestore(
    WorkingArrangementRecord.serializer,
    WorkingArrangementRecord(
      (w) => w
        ..userId = userId
        ..workingDay = workingDay,
    ),
  );

  return firestoreData;
}
