import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'lunch_record.g.dart';

abstract class LunchRecord implements Built<LunchRecord, LunchRecordBuilder> {
  static Serializer<LunchRecord> get serializer => _$lunchRecordSerializer;

  @BuiltValueField(wireName: 'lunch_name')
  String? get lunchName;

  @BuiltValueField(wireName: 'lunch_phone')
  String? get lunchPhone;

  @BuiltValueField(wireName: 'lunch_category')
  String? get lunchCategory;

  @BuiltValueField(wireName: 'lunch_address')
  String? get lunchAddress;

  @BuiltValueField(wireName: 'lunch_link')
  String? get lunchLink;

  @BuiltValueField(wireName: 'lunch_discount')
  int? get lunchDiscount;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LunchRecordBuilder builder) => builder
    ..lunchName = ''
    ..lunchPhone = ''
    ..lunchCategory = ''
    ..lunchAddress = ''
    ..lunchLink = ''
    ..lunchDiscount = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lunch');

  static Stream<LunchRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LunchRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LunchRecord._();
  factory LunchRecord([void Function(LunchRecordBuilder) updates]) =
      _$LunchRecord;

  static LunchRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLunchRecordData({
  String? lunchName,
  String? lunchPhone,
  String? lunchCategory,
  String? lunchAddress,
  String? lunchLink,
  int? lunchDiscount,
}) {
  final firestoreData = serializers.toFirestore(
    LunchRecord.serializer,
    LunchRecord(
      (l) => l
        ..lunchName = lunchName
        ..lunchPhone = lunchPhone
        ..lunchCategory = lunchCategory
        ..lunchAddress = lunchAddress
        ..lunchLink = lunchLink
        ..lunchDiscount = lunchDiscount,
    ),
  );

  return firestoreData;
}
