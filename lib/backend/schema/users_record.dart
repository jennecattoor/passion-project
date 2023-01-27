import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  bool? get admin;

  @BuiltValueField(wireName: 'lifeguard_post')
  DocumentReference? get lifeguardPost;

  @BuiltValueField(wireName: 'user_accepted')
  bool? get userAccepted;

  @BuiltValueField(wireName: 'post_number')
  int? get postNumber;

  @BuiltValueField(wireName: 'user_has_post')
  bool? get userHasPost;

  @BuiltValueField(wireName: 'user_submitted_preferences')
  bool? get userSubmittedPreferences;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..admin = false
    ..userAccepted = false
    ..postNumber = 0
    ..userHasPost = false
    ..userSubmittedPreferences = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? admin,
  DocumentReference? lifeguardPost,
  bool? userAccepted,
  int? postNumber,
  bool? userHasPost,
  bool? userSubmittedPreferences,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..admin = admin
        ..lifeguardPost = lifeguardPost
        ..userAccepted = userAccepted
        ..postNumber = postNumber
        ..userHasPost = userHasPost
        ..userSubmittedPreferences = userSubmittedPreferences,
    ),
  );

  return firestoreData;
}
