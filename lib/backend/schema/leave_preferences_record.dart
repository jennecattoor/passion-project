import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'leave_preferences_record.g.dart';

abstract class LeavePreferencesRecord
    implements Built<LeavePreferencesRecord, LeavePreferencesRecordBuilder> {
  static Serializer<LeavePreferencesRecord> get serializer =>
      _$leavePreferencesRecordSerializer;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  DateTime? get date1;

  DateTime? get date2;

  DateTime? get date3;

  DateTime? get date4;

  DateTime? get date5;

  DateTime? get date6;

  DocumentReference? get uid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LeavePreferencesRecordBuilder builder) =>
      builder..userName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('leave_preferences');

  static Stream<LeavePreferencesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LeavePreferencesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LeavePreferencesRecord._();
  factory LeavePreferencesRecord(
          [void Function(LeavePreferencesRecordBuilder) updates]) =
      _$LeavePreferencesRecord;

  static LeavePreferencesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLeavePreferencesRecordData({
  String? userName,
  DateTime? date1,
  DateTime? date2,
  DateTime? date3,
  DateTime? date4,
  DateTime? date5,
  DateTime? date6,
  DocumentReference? uid,
}) {
  final firestoreData = serializers.toFirestore(
    LeavePreferencesRecord.serializer,
    LeavePreferencesRecord(
      (l) => l
        ..userName = userName
        ..date1 = date1
        ..date2 = date2
        ..date3 = date3
        ..date4 = date4
        ..date5 = date5
        ..date6 = date6
        ..uid = uid,
    ),
  );

  return firestoreData;
}
