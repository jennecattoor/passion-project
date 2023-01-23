import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'lost_childs_record.g.dart';

abstract class LostChildsRecord
    implements Built<LostChildsRecord, LostChildsRecordBuilder> {
  static Serializer<LostChildsRecord> get serializer =>
      _$lostChildsRecordSerializer;

  @BuiltValueField(wireName: 'child_post')
  DocumentReference? get childPost;

  @BuiltValueField(wireName: 'child_description')
  String? get childDescription;

  @BuiltValueField(wireName: 'child_image')
  String? get childImage;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'child_found')
  bool? get childFound;

  @BuiltValueField(wireName: 'created_user')
  String? get createdUser;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LostChildsRecordBuilder builder) => builder
    ..childDescription = ''
    ..childImage = ''
    ..childFound = false
    ..createdUser = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lost_childs');

  static Stream<LostChildsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LostChildsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LostChildsRecord._();
  factory LostChildsRecord([void Function(LostChildsRecordBuilder) updates]) =
      _$LostChildsRecord;

  static LostChildsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLostChildsRecordData({
  DocumentReference? childPost,
  String? childDescription,
  String? childImage,
  DateTime? createdTime,
  bool? childFound,
  String? createdUser,
}) {
  final firestoreData = serializers.toFirestore(
    LostChildsRecord.serializer,
    LostChildsRecord(
      (l) => l
        ..childPost = childPost
        ..childDescription = childDescription
        ..childImage = childImage
        ..createdTime = createdTime
        ..childFound = childFound
        ..createdUser = createdUser,
    ),
  );

  return firestoreData;
}
