import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'defects_record.g.dart';

abstract class DefectsRecord
    implements Built<DefectsRecord, DefectsRecordBuilder> {
  static Serializer<DefectsRecord> get serializer => _$defectsRecordSerializer;

  @BuiltValueField(wireName: 'defect_description')
  String? get defectDescription;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'defect_post')
  String? get defectPost;

  @BuiltValueField(wireName: 'defect_image')
  String? get defectImage;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DefectsRecordBuilder builder) => builder
    ..defectDescription = ''
    ..defectPost = ''
    ..defectImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('defects');

  static Stream<DefectsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DefectsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DefectsRecord._();
  factory DefectsRecord([void Function(DefectsRecordBuilder) updates]) =
      _$DefectsRecord;

  static DefectsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDefectsRecordData({
  String? defectDescription,
  DateTime? createdTime,
  String? defectPost,
  String? defectImage,
}) {
  final firestoreData = serializers.toFirestore(
    DefectsRecord.serializer,
    DefectsRecord(
      (d) => d
        ..defectDescription = defectDescription
        ..createdTime = createdTime
        ..defectPost = defectPost
        ..defectImage = defectImage,
    ),
  );

  return firestoreData;
}
