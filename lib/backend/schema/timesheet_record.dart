import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimesheetRecord extends FirestoreRecord {
  TimesheetRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "clockin" field.
  String? _clockin;
  String get clockin => _clockin ?? '';
  bool hasClockin() => _clockin != null;

  // "clockout" field.
  String? _clockout;
  String get clockout => _clockout ?? '';
  bool hasClockout() => _clockout != null;

  // "totalhours" field.
  String? _totalhours;
  String get totalhours => _totalhours ?? '';
  bool hasTotalhours() => _totalhours != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _clockin = snapshotData['clockin'] as String?;
    _clockout = snapshotData['clockout'] as String?;
    _totalhours = snapshotData['totalhours'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('timesheet')
          : FirebaseFirestore.instance.collectionGroup('timesheet');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('timesheet').doc(id);

  static Stream<TimesheetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TimesheetRecord.fromSnapshot(s));

  static Future<TimesheetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TimesheetRecord.fromSnapshot(s));

  static TimesheetRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TimesheetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TimesheetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TimesheetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TimesheetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TimesheetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTimesheetRecordData({
  String? clockin,
  String? clockout,
  String? totalhours,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clockin': clockin,
      'clockout': clockout,
      'totalhours': totalhours,
    }.withoutNulls,
  );

  return firestoreData;
}

class TimesheetRecordDocumentEquality implements Equality<TimesheetRecord> {
  const TimesheetRecordDocumentEquality();

  @override
  bool equals(TimesheetRecord? e1, TimesheetRecord? e2) {
    return e1?.clockin == e2?.clockin &&
        e1?.clockout == e2?.clockout &&
        e1?.totalhours == e2?.totalhours;
  }

  @override
  int hash(TimesheetRecord? e) =>
      const ListEquality().hash([e?.clockin, e?.clockout, e?.totalhours]);

  @override
  bool isValidKey(Object? o) => o is TimesheetRecord;
}
