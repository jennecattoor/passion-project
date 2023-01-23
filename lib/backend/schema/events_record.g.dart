// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventsRecord> _$eventsRecordSerializer =
    new _$EventsRecordSerializer();

class _$EventsRecordSerializer implements StructuredSerializer<EventsRecord> {
  @override
  final Iterable<Type> types = const [EventsRecord, _$EventsRecord];
  @override
  final String wireName = 'EventsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EventsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.eventName;
    if (value != null) {
      result
        ..add('event_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventLocation;
    if (value != null) {
      result
        ..add('event_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventDescription;
    if (value != null) {
      result
        ..add('event_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventDate;
    if (value != null) {
      result
        ..add('event_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.eventImage;
    if (value != null) {
      result
        ..add('event_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventCategory;
    if (value != null) {
      result
        ..add('event_category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  EventsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'event_name':
          result.eventName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'event_location':
          result.eventLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'event_description':
          result.eventDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'event_date':
          result.eventDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'event_image':
          result.eventImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'event_category':
          result.eventCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$EventsRecord extends EventsRecord {
  @override
  final String? eventName;
  @override
  final String? eventLocation;
  @override
  final String? eventDescription;
  @override
  final DateTime? eventDate;
  @override
  final String? eventImage;
  @override
  final String? eventCategory;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EventsRecord([void Function(EventsRecordBuilder)? updates]) =>
      (new EventsRecordBuilder()..update(updates))._build();

  _$EventsRecord._(
      {this.eventName,
      this.eventLocation,
      this.eventDescription,
      this.eventDate,
      this.eventImage,
      this.eventCategory,
      this.ffRef})
      : super._();

  @override
  EventsRecord rebuild(void Function(EventsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventsRecordBuilder toBuilder() => new EventsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventsRecord &&
        eventName == other.eventName &&
        eventLocation == other.eventLocation &&
        eventDescription == other.eventDescription &&
        eventDate == other.eventDate &&
        eventImage == other.eventImage &&
        eventCategory == other.eventCategory &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, eventName.hashCode), eventLocation.hashCode),
                        eventDescription.hashCode),
                    eventDate.hashCode),
                eventImage.hashCode),
            eventCategory.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventsRecord')
          ..add('eventName', eventName)
          ..add('eventLocation', eventLocation)
          ..add('eventDescription', eventDescription)
          ..add('eventDate', eventDate)
          ..add('eventImage', eventImage)
          ..add('eventCategory', eventCategory)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EventsRecordBuilder
    implements Builder<EventsRecord, EventsRecordBuilder> {
  _$EventsRecord? _$v;

  String? _eventName;
  String? get eventName => _$this._eventName;
  set eventName(String? eventName) => _$this._eventName = eventName;

  String? _eventLocation;
  String? get eventLocation => _$this._eventLocation;
  set eventLocation(String? eventLocation) =>
      _$this._eventLocation = eventLocation;

  String? _eventDescription;
  String? get eventDescription => _$this._eventDescription;
  set eventDescription(String? eventDescription) =>
      _$this._eventDescription = eventDescription;

  DateTime? _eventDate;
  DateTime? get eventDate => _$this._eventDate;
  set eventDate(DateTime? eventDate) => _$this._eventDate = eventDate;

  String? _eventImage;
  String? get eventImage => _$this._eventImage;
  set eventImage(String? eventImage) => _$this._eventImage = eventImage;

  String? _eventCategory;
  String? get eventCategory => _$this._eventCategory;
  set eventCategory(String? eventCategory) =>
      _$this._eventCategory = eventCategory;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EventsRecordBuilder() {
    EventsRecord._initializeBuilder(this);
  }

  EventsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventName = $v.eventName;
      _eventLocation = $v.eventLocation;
      _eventDescription = $v.eventDescription;
      _eventDate = $v.eventDate;
      _eventImage = $v.eventImage;
      _eventCategory = $v.eventCategory;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventsRecord;
  }

  @override
  void update(void Function(EventsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventsRecord build() => _build();

  _$EventsRecord _build() {
    final _$result = _$v ??
        new _$EventsRecord._(
            eventName: eventName,
            eventLocation: eventLocation,
            eventDescription: eventDescription,
            eventDate: eventDate,
            eventImage: eventImage,
            eventCategory: eventCategory,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
