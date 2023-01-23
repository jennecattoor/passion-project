import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'events_record.g.dart';

abstract class EventsRecord
    implements Built<EventsRecord, EventsRecordBuilder> {
  static Serializer<EventsRecord> get serializer => _$eventsRecordSerializer;

  @BuiltValueField(wireName: 'event_name')
  String? get eventName;

  @BuiltValueField(wireName: 'event_location')
  String? get eventLocation;

  @BuiltValueField(wireName: 'event_description')
  String? get eventDescription;

  @BuiltValueField(wireName: 'event_date')
  DateTime? get eventDate;

  @BuiltValueField(wireName: 'event_image')
  String? get eventImage;

  @BuiltValueField(wireName: 'event_category')
  String? get eventCategory;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EventsRecordBuilder builder) => builder
    ..eventName = ''
    ..eventLocation = ''
    ..eventDescription = ''
    ..eventImage = ''
    ..eventCategory = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EventsRecord._();
  factory EventsRecord([void Function(EventsRecordBuilder) updates]) =
      _$EventsRecord;

  static EventsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEventsRecordData({
  String? eventName,
  String? eventLocation,
  String? eventDescription,
  DateTime? eventDate,
  String? eventImage,
  String? eventCategory,
}) {
  final firestoreData = serializers.toFirestore(
    EventsRecord.serializer,
    EventsRecord(
      (e) => e
        ..eventName = eventName
        ..eventLocation = eventLocation
        ..eventDescription = eventDescription
        ..eventDate = eventDate
        ..eventImage = eventImage
        ..eventCategory = eventCategory,
    ),
  );

  return firestoreData;
}
