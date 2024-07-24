import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UDetailsRecord extends FirestoreRecord {
  UDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Fname" field.
  String? _fname;
  String get fname => _fname ?? '';
  bool hasFname() => _fname != null;

  // "Lname" field.
  String? _lname;
  String get lname => _lname ?? '';
  bool hasLname() => _lname != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phonenum" field.
  int? _phonenum;
  int get phonenum => _phonenum ?? 0;
  bool hasPhonenum() => _phonenum != null;

  // "university" field.
  String? _university;
  String get university => _university ?? '';
  bool hasUniversity() => _university != null;

  // "major" field.
  String? _major;
  String get major => _major ?? '';
  bool hasMajor() => _major != null;

  // "reqhours" field.
  int? _reqhours;
  int get reqhours => _reqhours ?? 0;
  bool hasReqhours() => _reqhours != null;

  // "startdate" field.
  String? _startdate;
  String get startdate => _startdate ?? '';
  bool hasStartdate() => _startdate != null;

  // "enddate" field.
  String? _enddate;
  String get enddate => _enddate ?? '';
  bool hasEnddate() => _enddate != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "UID" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _fname = snapshotData['Fname'] as String?;
    _lname = snapshotData['Lname'] as String?;
    _email = snapshotData['email'] as String?;
    _phonenum = castToType<int>(snapshotData['phonenum']);
    _university = snapshotData['university'] as String?;
    _major = snapshotData['major'] as String?;
    _reqhours = castToType<int>(snapshotData['reqhours']);
    _startdate = snapshotData['startdate'] as String?;
    _enddate = snapshotData['enddate'] as String?;
    _department = snapshotData['department'] as String?;
    _uid = snapshotData['UID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('U_details');

  static Stream<UDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UDetailsRecord.fromSnapshot(s));

  static Future<UDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UDetailsRecord.fromSnapshot(s));

  static UDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUDetailsRecordData({
  String? fname,
  String? lname,
  String? email,
  int? phonenum,
  String? university,
  String? major,
  int? reqhours,
  String? startdate,
  String? enddate,
  String? department,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Fname': fname,
      'Lname': lname,
      'email': email,
      'phonenum': phonenum,
      'university': university,
      'major': major,
      'reqhours': reqhours,
      'startdate': startdate,
      'enddate': enddate,
      'department': department,
      'UID': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class UDetailsRecordDocumentEquality implements Equality<UDetailsRecord> {
  const UDetailsRecordDocumentEquality();

  @override
  bool equals(UDetailsRecord? e1, UDetailsRecord? e2) {
    return e1?.fname == e2?.fname &&
        e1?.lname == e2?.lname &&
        e1?.email == e2?.email &&
        e1?.phonenum == e2?.phonenum &&
        e1?.university == e2?.university &&
        e1?.major == e2?.major &&
        e1?.reqhours == e2?.reqhours &&
        e1?.startdate == e2?.startdate &&
        e1?.enddate == e2?.enddate &&
        e1?.department == e2?.department &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(UDetailsRecord? e) => const ListEquality().hash([
        e?.fname,
        e?.lname,
        e?.email,
        e?.phonenum,
        e?.university,
        e?.major,
        e?.reqhours,
        e?.startdate,
        e?.enddate,
        e?.department,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is UDetailsRecord;
}
