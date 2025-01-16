// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chambre_de_discution.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ChambreDeDiscutionCollectionReference
    implements
        ChambreDeDiscutionQuery,
        FirestoreCollectionReference<ChambreDeDiscution,
            ChambreDeDiscutionQuerySnapshot> {
  factory ChambreDeDiscutionCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ChambreDeDiscutionCollectionReference;

  static ChambreDeDiscution fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return ChambreDeDiscution.fromJson(
        {'uid': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    ChambreDeDiscution value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('uid');
  }

  @override
  CollectionReference<ChambreDeDiscution> get reference;

  @override
  ChambreDeDiscutionDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ChambreDeDiscutionDocumentReference> add(ChambreDeDiscution value);
}

class _$ChambreDeDiscutionCollectionReference extends _$ChambreDeDiscutionQuery
    implements ChambreDeDiscutionCollectionReference {
  factory _$ChambreDeDiscutionCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ChambreDeDiscutionCollectionReference._(
      firestore.collection('chambre_de_discutions').withConverter(
            fromFirestore: ChambreDeDiscutionCollectionReference.fromFirestore,
            toFirestore: ChambreDeDiscutionCollectionReference.toFirestore,
          ),
    );
  }

  _$ChambreDeDiscutionCollectionReference._(
    CollectionReference<ChambreDeDiscution> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<ChambreDeDiscution> get reference =>
      super.reference as CollectionReference<ChambreDeDiscution>;

  @override
  ChambreDeDiscutionDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ChambreDeDiscutionDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ChambreDeDiscutionDocumentReference> add(ChambreDeDiscution value) {
    return reference
        .add(value)
        .then((ref) => ChambreDeDiscutionDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ChambreDeDiscutionCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ChambreDeDiscutionDocumentReference
    extends FirestoreDocumentReference<ChambreDeDiscution,
        ChambreDeDiscutionDocumentSnapshot> {
  factory ChambreDeDiscutionDocumentReference(
          DocumentReference<ChambreDeDiscution> reference) =
      _$ChambreDeDiscutionDocumentReference;

  DocumentReference<ChambreDeDiscution> get reference;

  /// A reference to the [ChambreDeDiscutionCollectionReference] containing this document.
  ChambreDeDiscutionCollectionReference get parent {
    return _$ChambreDeDiscutionCollectionReference(reference.firestore);
  }

  late final MessageCollectionReference messages = _$MessageCollectionReference(
    reference,
  );

  @override
  Stream<ChambreDeDiscutionDocumentSnapshot> snapshots();

  @override
  Future<ChambreDeDiscutionDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    ChambreDeDiscution model, {
    SetOptions? options,
    FieldValue uidUtilisateurConcernerFieldValue,
    FieldValue dernierMessageFieldValue,
    FieldValue urlImageDiscutionFieldValue,
    FieldValue dateDeCreationFieldValue,
    FieldValue dateDeDernierModificationFieldValue,
    FieldValue uidUtilisateurAyantLueLeDernierMessageFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    ChambreDeDiscution model, {
    SetOptions? options,
    FieldValue uidUtilisateurConcernerFieldValue,
    FieldValue dernierMessageFieldValue,
    FieldValue urlImageDiscutionFieldValue,
    FieldValue dateDeCreationFieldValue,
    FieldValue dateDeDernierModificationFieldValue,
    FieldValue uidUtilisateurAyantLueLeDernierMessageFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    ChambreDeDiscution model, {
    SetOptions? options,
    FieldValue uidUtilisateurConcernerFieldValue,
    FieldValue dernierMessageFieldValue,
    FieldValue urlImageDiscutionFieldValue,
    FieldValue dateDeCreationFieldValue,
    FieldValue dateDeDernierModificationFieldValue,
    FieldValue uidUtilisateurAyantLueLeDernierMessageFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    List<String> uidUtilisateurConcerner,
    FieldValue uidUtilisateurConcernerFieldValue,
    Message? dernierMessage,
    FieldValue dernierMessageFieldValue,
    String urlImageDiscution,
    FieldValue urlImageDiscutionFieldValue,
    DateTime dateDeCreation,
    FieldValue dateDeCreationFieldValue,
    DateTime dateDeDernierModification,
    FieldValue dateDeDernierModificationFieldValue,
    List<String> uidUtilisateurAyantLueLeDernierMessage,
    FieldValue uidUtilisateurAyantLueLeDernierMessageFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    List<String> uidUtilisateurConcerner,
    FieldValue uidUtilisateurConcernerFieldValue,
    Message? dernierMessage,
    FieldValue dernierMessageFieldValue,
    String urlImageDiscution,
    FieldValue urlImageDiscutionFieldValue,
    DateTime dateDeCreation,
    FieldValue dateDeCreationFieldValue,
    DateTime dateDeDernierModification,
    FieldValue dateDeDernierModificationFieldValue,
    List<String> uidUtilisateurAyantLueLeDernierMessage,
    FieldValue uidUtilisateurAyantLueLeDernierMessageFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    List<String> uidUtilisateurConcerner,
    FieldValue uidUtilisateurConcernerFieldValue,
    Message? dernierMessage,
    FieldValue dernierMessageFieldValue,
    String urlImageDiscution,
    FieldValue urlImageDiscutionFieldValue,
    DateTime dateDeCreation,
    FieldValue dateDeCreationFieldValue,
    DateTime dateDeDernierModification,
    FieldValue dateDeDernierModificationFieldValue,
    List<String> uidUtilisateurAyantLueLeDernierMessage,
    FieldValue uidUtilisateurAyantLueLeDernierMessageFieldValue,
  });
}

class _$ChambreDeDiscutionDocumentReference extends FirestoreDocumentReference<
        ChambreDeDiscution, ChambreDeDiscutionDocumentSnapshot>
    implements ChambreDeDiscutionDocumentReference {
  _$ChambreDeDiscutionDocumentReference(this.reference);

  @override
  final DocumentReference<ChambreDeDiscution> reference;

  /// A reference to the [ChambreDeDiscutionCollectionReference] containing this document.
  ChambreDeDiscutionCollectionReference get parent {
    return _$ChambreDeDiscutionCollectionReference(reference.firestore);
  }

  late final MessageCollectionReference messages = _$MessageCollectionReference(
    reference,
  );

  @override
  Stream<ChambreDeDiscutionDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ChambreDeDiscutionDocumentSnapshot._);
  }

  @override
  Future<ChambreDeDiscutionDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ChambreDeDiscutionDocumentSnapshot._);
  }

  @override
  Future<ChambreDeDiscutionDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction
        .get(reference)
        .then(ChambreDeDiscutionDocumentSnapshot._);
  }

  Future<void> set(
    ChambreDeDiscution model, {
    SetOptions? options,
    FieldValue? uidUtilisateurConcernerFieldValue,
    FieldValue? dernierMessageFieldValue,
    FieldValue? urlImageDiscutionFieldValue,
    FieldValue? dateDeCreationFieldValue,
    FieldValue? dateDeDernierModificationFieldValue,
    FieldValue? uidUtilisateurAyantLueLeDernierMessageFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (uidUtilisateurConcernerFieldValue != null)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurConcerner']!:
            uidUtilisateurConcernerFieldValue,
      if (dernierMessageFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dernierMessage']!:
            dernierMessageFieldValue,
      if (urlImageDiscutionFieldValue != null)
        _$ChambreDeDiscutionFieldMap['urlImageDiscution']!:
            urlImageDiscutionFieldValue,
      if (dateDeCreationFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dateDeCreation']!:
            dateDeCreationFieldValue,
      if (dateDeDernierModificationFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dateDeDernierModification']!:
            dateDeDernierModificationFieldValue,
      if (uidUtilisateurAyantLueLeDernierMessageFieldValue != null)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurAyantLueLeDernierMessage']!:
            uidUtilisateurAyantLueLeDernierMessageFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    ChambreDeDiscution model, {
    SetOptions? options,
    FieldValue? uidUtilisateurConcernerFieldValue,
    FieldValue? dernierMessageFieldValue,
    FieldValue? urlImageDiscutionFieldValue,
    FieldValue? dateDeCreationFieldValue,
    FieldValue? dateDeDernierModificationFieldValue,
    FieldValue? uidUtilisateurAyantLueLeDernierMessageFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (uidUtilisateurConcernerFieldValue != null)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurConcerner']!:
            uidUtilisateurConcernerFieldValue,
      if (dernierMessageFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dernierMessage']!:
            dernierMessageFieldValue,
      if (urlImageDiscutionFieldValue != null)
        _$ChambreDeDiscutionFieldMap['urlImageDiscution']!:
            urlImageDiscutionFieldValue,
      if (dateDeCreationFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dateDeCreation']!:
            dateDeCreationFieldValue,
      if (dateDeDernierModificationFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dateDeDernierModification']!:
            dateDeDernierModificationFieldValue,
      if (uidUtilisateurAyantLueLeDernierMessageFieldValue != null)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurAyantLueLeDernierMessage']!:
            uidUtilisateurAyantLueLeDernierMessageFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    ChambreDeDiscution model, {
    SetOptions? options,
    FieldValue? uidUtilisateurConcernerFieldValue,
    FieldValue? dernierMessageFieldValue,
    FieldValue? urlImageDiscutionFieldValue,
    FieldValue? dateDeCreationFieldValue,
    FieldValue? dateDeDernierModificationFieldValue,
    FieldValue? uidUtilisateurAyantLueLeDernierMessageFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (uidUtilisateurConcernerFieldValue != null)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurConcerner']!:
            uidUtilisateurConcernerFieldValue,
      if (dernierMessageFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dernierMessage']!:
            dernierMessageFieldValue,
      if (urlImageDiscutionFieldValue != null)
        _$ChambreDeDiscutionFieldMap['urlImageDiscution']!:
            urlImageDiscutionFieldValue,
      if (dateDeCreationFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dateDeCreation']!:
            dateDeCreationFieldValue,
      if (dateDeDernierModificationFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dateDeDernierModification']!:
            dateDeDernierModificationFieldValue,
      if (uidUtilisateurAyantLueLeDernierMessageFieldValue != null)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurAyantLueLeDernierMessage']!:
            uidUtilisateurAyantLueLeDernierMessageFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? uidUtilisateurConcerner = _sentinel,
    FieldValue? uidUtilisateurConcernerFieldValue,
    Object? dernierMessage = _sentinel,
    FieldValue? dernierMessageFieldValue,
    Object? urlImageDiscution = _sentinel,
    FieldValue? urlImageDiscutionFieldValue,
    Object? dateDeCreation = _sentinel,
    FieldValue? dateDeCreationFieldValue,
    Object? dateDeDernierModification = _sentinel,
    FieldValue? dateDeDernierModificationFieldValue,
    Object? uidUtilisateurAyantLueLeDernierMessage = _sentinel,
    FieldValue? uidUtilisateurAyantLueLeDernierMessageFieldValue,
  }) async {
    assert(
      uidUtilisateurConcerner == _sentinel ||
          uidUtilisateurConcernerFieldValue == null,
      "Cannot specify both uidUtilisateurConcerner and uidUtilisateurConcernerFieldValue",
    );
    assert(
      dernierMessage == _sentinel || dernierMessageFieldValue == null,
      "Cannot specify both dernierMessage and dernierMessageFieldValue",
    );
    assert(
      urlImageDiscution == _sentinel || urlImageDiscutionFieldValue == null,
      "Cannot specify both urlImageDiscution and urlImageDiscutionFieldValue",
    );
    assert(
      dateDeCreation == _sentinel || dateDeCreationFieldValue == null,
      "Cannot specify both dateDeCreation and dateDeCreationFieldValue",
    );
    assert(
      dateDeDernierModification == _sentinel ||
          dateDeDernierModificationFieldValue == null,
      "Cannot specify both dateDeDernierModification and dateDeDernierModificationFieldValue",
    );
    assert(
      uidUtilisateurAyantLueLeDernierMessage == _sentinel ||
          uidUtilisateurAyantLueLeDernierMessageFieldValue == null,
      "Cannot specify both uidUtilisateurAyantLueLeDernierMessage and uidUtilisateurAyantLueLeDernierMessageFieldValue",
    );
    final json = {
      if (uidUtilisateurConcerner != _sentinel)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurConcerner']!:
            _$ChambreDeDiscutionPerFieldToJson.uidUtilisateurConcerner(
                uidUtilisateurConcerner as List<String>),
      if (uidUtilisateurConcernerFieldValue != null)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurConcerner']!:
            uidUtilisateurConcernerFieldValue,
      if (dernierMessage != _sentinel)
        _$ChambreDeDiscutionFieldMap['dernierMessage']!:
            _$ChambreDeDiscutionPerFieldToJson
                .dernierMessage(dernierMessage as Message?),
      if (dernierMessageFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dernierMessage']!:
            dernierMessageFieldValue,
      if (urlImageDiscution != _sentinel)
        _$ChambreDeDiscutionFieldMap['urlImageDiscution']!:
            _$ChambreDeDiscutionPerFieldToJson
                .urlImageDiscution(urlImageDiscution as String),
      if (urlImageDiscutionFieldValue != null)
        _$ChambreDeDiscutionFieldMap['urlImageDiscution']!:
            urlImageDiscutionFieldValue,
      if (dateDeCreation != _sentinel)
        _$ChambreDeDiscutionFieldMap['dateDeCreation']!:
            _$ChambreDeDiscutionPerFieldToJson
                .dateDeCreation(dateDeCreation as DateTime),
      if (dateDeCreationFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dateDeCreation']!:
            dateDeCreationFieldValue,
      if (dateDeDernierModification != _sentinel)
        _$ChambreDeDiscutionFieldMap['dateDeDernierModification']!:
            _$ChambreDeDiscutionPerFieldToJson.dateDeDernierModification(
                dateDeDernierModification as DateTime),
      if (dateDeDernierModificationFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dateDeDernierModification']!:
            dateDeDernierModificationFieldValue,
      if (uidUtilisateurAyantLueLeDernierMessage != _sentinel)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurAyantLueLeDernierMessage']!:
            _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurAyantLueLeDernierMessage(
                    uidUtilisateurAyantLueLeDernierMessage as List<String>),
      if (uidUtilisateurAyantLueLeDernierMessageFieldValue != null)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurAyantLueLeDernierMessage']!:
            uidUtilisateurAyantLueLeDernierMessageFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? uidUtilisateurConcerner = _sentinel,
    FieldValue? uidUtilisateurConcernerFieldValue,
    Object? dernierMessage = _sentinel,
    FieldValue? dernierMessageFieldValue,
    Object? urlImageDiscution = _sentinel,
    FieldValue? urlImageDiscutionFieldValue,
    Object? dateDeCreation = _sentinel,
    FieldValue? dateDeCreationFieldValue,
    Object? dateDeDernierModification = _sentinel,
    FieldValue? dateDeDernierModificationFieldValue,
    Object? uidUtilisateurAyantLueLeDernierMessage = _sentinel,
    FieldValue? uidUtilisateurAyantLueLeDernierMessageFieldValue,
  }) {
    assert(
      uidUtilisateurConcerner == _sentinel ||
          uidUtilisateurConcernerFieldValue == null,
      "Cannot specify both uidUtilisateurConcerner and uidUtilisateurConcernerFieldValue",
    );
    assert(
      dernierMessage == _sentinel || dernierMessageFieldValue == null,
      "Cannot specify both dernierMessage and dernierMessageFieldValue",
    );
    assert(
      urlImageDiscution == _sentinel || urlImageDiscutionFieldValue == null,
      "Cannot specify both urlImageDiscution and urlImageDiscutionFieldValue",
    );
    assert(
      dateDeCreation == _sentinel || dateDeCreationFieldValue == null,
      "Cannot specify both dateDeCreation and dateDeCreationFieldValue",
    );
    assert(
      dateDeDernierModification == _sentinel ||
          dateDeDernierModificationFieldValue == null,
      "Cannot specify both dateDeDernierModification and dateDeDernierModificationFieldValue",
    );
    assert(
      uidUtilisateurAyantLueLeDernierMessage == _sentinel ||
          uidUtilisateurAyantLueLeDernierMessageFieldValue == null,
      "Cannot specify both uidUtilisateurAyantLueLeDernierMessage and uidUtilisateurAyantLueLeDernierMessageFieldValue",
    );
    final json = {
      if (uidUtilisateurConcerner != _sentinel)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurConcerner']!:
            _$ChambreDeDiscutionPerFieldToJson.uidUtilisateurConcerner(
                uidUtilisateurConcerner as List<String>),
      if (uidUtilisateurConcernerFieldValue != null)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurConcerner']!:
            uidUtilisateurConcernerFieldValue,
      if (dernierMessage != _sentinel)
        _$ChambreDeDiscutionFieldMap['dernierMessage']!:
            _$ChambreDeDiscutionPerFieldToJson
                .dernierMessage(dernierMessage as Message?),
      if (dernierMessageFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dernierMessage']!:
            dernierMessageFieldValue,
      if (urlImageDiscution != _sentinel)
        _$ChambreDeDiscutionFieldMap['urlImageDiscution']!:
            _$ChambreDeDiscutionPerFieldToJson
                .urlImageDiscution(urlImageDiscution as String),
      if (urlImageDiscutionFieldValue != null)
        _$ChambreDeDiscutionFieldMap['urlImageDiscution']!:
            urlImageDiscutionFieldValue,
      if (dateDeCreation != _sentinel)
        _$ChambreDeDiscutionFieldMap['dateDeCreation']!:
            _$ChambreDeDiscutionPerFieldToJson
                .dateDeCreation(dateDeCreation as DateTime),
      if (dateDeCreationFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dateDeCreation']!:
            dateDeCreationFieldValue,
      if (dateDeDernierModification != _sentinel)
        _$ChambreDeDiscutionFieldMap['dateDeDernierModification']!:
            _$ChambreDeDiscutionPerFieldToJson.dateDeDernierModification(
                dateDeDernierModification as DateTime),
      if (dateDeDernierModificationFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dateDeDernierModification']!:
            dateDeDernierModificationFieldValue,
      if (uidUtilisateurAyantLueLeDernierMessage != _sentinel)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurAyantLueLeDernierMessage']!:
            _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurAyantLueLeDernierMessage(
                    uidUtilisateurAyantLueLeDernierMessage as List<String>),
      if (uidUtilisateurAyantLueLeDernierMessageFieldValue != null)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurAyantLueLeDernierMessage']!:
            uidUtilisateurAyantLueLeDernierMessageFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? uidUtilisateurConcerner = _sentinel,
    FieldValue? uidUtilisateurConcernerFieldValue,
    Object? dernierMessage = _sentinel,
    FieldValue? dernierMessageFieldValue,
    Object? urlImageDiscution = _sentinel,
    FieldValue? urlImageDiscutionFieldValue,
    Object? dateDeCreation = _sentinel,
    FieldValue? dateDeCreationFieldValue,
    Object? dateDeDernierModification = _sentinel,
    FieldValue? dateDeDernierModificationFieldValue,
    Object? uidUtilisateurAyantLueLeDernierMessage = _sentinel,
    FieldValue? uidUtilisateurAyantLueLeDernierMessageFieldValue,
  }) {
    assert(
      uidUtilisateurConcerner == _sentinel ||
          uidUtilisateurConcernerFieldValue == null,
      "Cannot specify both uidUtilisateurConcerner and uidUtilisateurConcernerFieldValue",
    );
    assert(
      dernierMessage == _sentinel || dernierMessageFieldValue == null,
      "Cannot specify both dernierMessage and dernierMessageFieldValue",
    );
    assert(
      urlImageDiscution == _sentinel || urlImageDiscutionFieldValue == null,
      "Cannot specify both urlImageDiscution and urlImageDiscutionFieldValue",
    );
    assert(
      dateDeCreation == _sentinel || dateDeCreationFieldValue == null,
      "Cannot specify both dateDeCreation and dateDeCreationFieldValue",
    );
    assert(
      dateDeDernierModification == _sentinel ||
          dateDeDernierModificationFieldValue == null,
      "Cannot specify both dateDeDernierModification and dateDeDernierModificationFieldValue",
    );
    assert(
      uidUtilisateurAyantLueLeDernierMessage == _sentinel ||
          uidUtilisateurAyantLueLeDernierMessageFieldValue == null,
      "Cannot specify both uidUtilisateurAyantLueLeDernierMessage and uidUtilisateurAyantLueLeDernierMessageFieldValue",
    );
    final json = {
      if (uidUtilisateurConcerner != _sentinel)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurConcerner']!:
            _$ChambreDeDiscutionPerFieldToJson.uidUtilisateurConcerner(
                uidUtilisateurConcerner as List<String>),
      if (uidUtilisateurConcernerFieldValue != null)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurConcerner']!:
            uidUtilisateurConcernerFieldValue,
      if (dernierMessage != _sentinel)
        _$ChambreDeDiscutionFieldMap['dernierMessage']!:
            _$ChambreDeDiscutionPerFieldToJson
                .dernierMessage(dernierMessage as Message?),
      if (dernierMessageFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dernierMessage']!:
            dernierMessageFieldValue,
      if (urlImageDiscution != _sentinel)
        _$ChambreDeDiscutionFieldMap['urlImageDiscution']!:
            _$ChambreDeDiscutionPerFieldToJson
                .urlImageDiscution(urlImageDiscution as String),
      if (urlImageDiscutionFieldValue != null)
        _$ChambreDeDiscutionFieldMap['urlImageDiscution']!:
            urlImageDiscutionFieldValue,
      if (dateDeCreation != _sentinel)
        _$ChambreDeDiscutionFieldMap['dateDeCreation']!:
            _$ChambreDeDiscutionPerFieldToJson
                .dateDeCreation(dateDeCreation as DateTime),
      if (dateDeCreationFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dateDeCreation']!:
            dateDeCreationFieldValue,
      if (dateDeDernierModification != _sentinel)
        _$ChambreDeDiscutionFieldMap['dateDeDernierModification']!:
            _$ChambreDeDiscutionPerFieldToJson.dateDeDernierModification(
                dateDeDernierModification as DateTime),
      if (dateDeDernierModificationFieldValue != null)
        _$ChambreDeDiscutionFieldMap['dateDeDernierModification']!:
            dateDeDernierModificationFieldValue,
      if (uidUtilisateurAyantLueLeDernierMessage != _sentinel)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurAyantLueLeDernierMessage']!:
            _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurAyantLueLeDernierMessage(
                    uidUtilisateurAyantLueLeDernierMessage as List<String>),
      if (uidUtilisateurAyantLueLeDernierMessageFieldValue != null)
        _$ChambreDeDiscutionFieldMap['uidUtilisateurAyantLueLeDernierMessage']!:
            uidUtilisateurAyantLueLeDernierMessageFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ChambreDeDiscutionDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ChambreDeDiscutionQuery
    implements
        QueryReference<ChambreDeDiscution, ChambreDeDiscutionQuerySnapshot> {
  @override
  ChambreDeDiscutionQuery limit(int limit);

  @override
  ChambreDeDiscutionQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ChambreDeDiscutionQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ChambreDeDiscutionQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  ChambreDeDiscutionQuery whereUidUtilisateurConcerner({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    String? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  });

  ChambreDeDiscutionQuery whereDernierMessage({
    Message? isEqualTo,
    Message? isNotEqualTo,
    Message? isLessThan,
    Message? isLessThanOrEqualTo,
    Message? isGreaterThan,
    Message? isGreaterThanOrEqualTo,
    List<Message?>? whereIn,
    List<Message?>? whereNotIn,
    bool? isNull,
  });

  ChambreDeDiscutionQuery whereUrlImageDiscution({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  ChambreDeDiscutionQuery whereDateDeCreation({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  ChambreDeDiscutionQuery whereDateDeDernierModification({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  ChambreDeDiscutionQuery whereUidUtilisateurAyantLueLeDernierMessage({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    String? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ChambreDeDiscutionQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  });

  ChambreDeDiscutionQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  });

  ChambreDeDiscutionQuery orderByUidUtilisateurConcerner({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  });

  ChambreDeDiscutionQuery orderByDernierMessage({
    bool descending = false,
    Message? startAt,
    Message? startAfter,
    Message? endAt,
    Message? endBefore,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  });

  ChambreDeDiscutionQuery orderByUrlImageDiscution({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  });

  ChambreDeDiscutionQuery orderByDateDeCreation({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  });

  ChambreDeDiscutionQuery orderByDateDeDernierModification({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  });

  ChambreDeDiscutionQuery orderByUidUtilisateurAyantLueLeDernierMessage({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  });
}

class _$ChambreDeDiscutionQuery
    extends QueryReference<ChambreDeDiscution, ChambreDeDiscutionQuerySnapshot>
    implements ChambreDeDiscutionQuery {
  _$ChambreDeDiscutionQuery(
    this._collection, {
    required Query<ChambreDeDiscution> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ChambreDeDiscutionQuerySnapshot> snapshots(
      [SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ChambreDeDiscutionQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ChambreDeDiscutionQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ChambreDeDiscutionQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ChambreDeDiscutionQuery limit(int limit) {
    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery limitToLast(int limit) {
    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery whereUidUtilisateurConcerner({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ChambreDeDiscutionFieldMap['uidUtilisateurConcerner']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurConcerner(isEqualTo as List<String>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurConcerner(isNotEqualTo as List<String>)
            : null,
        isLessThan: isLessThan != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurConcerner(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurConcerner(isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurConcerner(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurConcerner(isGreaterThanOrEqualTo as List<String>)
            : null,
        arrayContains: arrayContains != null
            ? (_$ChambreDeDiscutionPerFieldToJson
                        .uidUtilisateurConcerner([arrayContains as String])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurConcerner(arrayContainsAny) as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery whereDernierMessage({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<Message?>? whereIn,
    List<Message?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ChambreDeDiscutionFieldMap['dernierMessage']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ChambreDeDiscutionPerFieldToJson
                .dernierMessage(isEqualTo as Message?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ChambreDeDiscutionPerFieldToJson
                .dernierMessage(isNotEqualTo as Message?)
            : null,
        isLessThan: isLessThan != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .dernierMessage(isLessThan as Message?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .dernierMessage(isLessThanOrEqualTo as Message?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .dernierMessage(isGreaterThan as Message?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .dernierMessage(isGreaterThanOrEqualTo as Message?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ChambreDeDiscutionPerFieldToJson.dernierMessage(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ChambreDeDiscutionPerFieldToJson.dernierMessage(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery whereUrlImageDiscution({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ChambreDeDiscutionFieldMap['urlImageDiscution']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ChambreDeDiscutionPerFieldToJson
                .urlImageDiscution(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ChambreDeDiscutionPerFieldToJson
                .urlImageDiscution(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .urlImageDiscution(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .urlImageDiscution(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .urlImageDiscution(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .urlImageDiscution(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map(
            (e) => _$ChambreDeDiscutionPerFieldToJson.urlImageDiscution(e)),
        whereNotIn: whereNotIn?.map(
            (e) => _$ChambreDeDiscutionPerFieldToJson.urlImageDiscution(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery whereDateDeCreation({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ChambreDeDiscutionFieldMap['dateDeCreation']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ChambreDeDiscutionPerFieldToJson
                .dateDeCreation(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ChambreDeDiscutionPerFieldToJson
                .dateDeCreation(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .dateDeCreation(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .dateDeCreation(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .dateDeCreation(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .dateDeCreation(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ChambreDeDiscutionPerFieldToJson.dateDeCreation(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ChambreDeDiscutionPerFieldToJson.dateDeCreation(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery whereDateDeDernierModification({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ChambreDeDiscutionFieldMap['dateDeDernierModification']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ChambreDeDiscutionPerFieldToJson
                .dateDeDernierModification(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ChambreDeDiscutionPerFieldToJson
                .dateDeDernierModification(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .dateDeDernierModification(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .dateDeDernierModification(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .dateDeDernierModification(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .dateDeDernierModification(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) =>
            _$ChambreDeDiscutionPerFieldToJson.dateDeDernierModification(e)),
        whereNotIn: whereNotIn?.map((e) =>
            _$ChambreDeDiscutionPerFieldToJson.dateDeDernierModification(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery whereUidUtilisateurAyantLueLeDernierMessage({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ChambreDeDiscutionFieldMap['uidUtilisateurAyantLueLeDernierMessage']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurAyantLueLeDernierMessage(
                    isEqualTo as List<String>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurAyantLueLeDernierMessage(
                    isNotEqualTo as List<String>)
            : null,
        isLessThan: isLessThan != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurAyantLueLeDernierMessage(
                    isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurAyantLueLeDernierMessage(
                    isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurAyantLueLeDernierMessage(
                    isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ChambreDeDiscutionPerFieldToJson
                .uidUtilisateurAyantLueLeDernierMessage(
                    isGreaterThanOrEqualTo as List<String>)
            : null,
        arrayContains: arrayContains != null
            ? (_$ChambreDeDiscutionPerFieldToJson
                    .uidUtilisateurAyantLueLeDernierMessage(
                        [arrayContains as String]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$ChambreDeDiscutionPerFieldToJson
                    .uidUtilisateurAyantLueLeDernierMessage(arrayContainsAny)
                as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery orderByUidUtilisateurConcerner({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ChambreDeDiscutionFieldMap['uidUtilisateurConcerner']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery orderByDernierMessage({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ChambreDeDiscutionFieldMap['dernierMessage']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery orderByUrlImageDiscution({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ChambreDeDiscutionFieldMap['urlImageDiscution']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery orderByDateDeCreation({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ChambreDeDiscutionFieldMap['dateDeCreation']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery orderByDateDeDernierModification({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ChambreDeDiscutionFieldMap['dateDeDernierModification']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ChambreDeDiscutionQuery orderByUidUtilisateurAyantLueLeDernierMessage({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChambreDeDiscutionDocumentSnapshot? startAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endAtDocument,
    ChambreDeDiscutionDocumentSnapshot? endBeforeDocument,
    ChambreDeDiscutionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ChambreDeDiscutionFieldMap['uidUtilisateurAyantLueLeDernierMessage']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChambreDeDiscutionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ChambreDeDiscutionQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ChambreDeDiscutionDocumentSnapshot
    extends FirestoreDocumentSnapshot<ChambreDeDiscution> {
  ChambreDeDiscutionDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ChambreDeDiscution> snapshot;

  @override
  ChambreDeDiscutionDocumentReference get reference {
    return ChambreDeDiscutionDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ChambreDeDiscution? data;
}

class ChambreDeDiscutionQuerySnapshot extends FirestoreQuerySnapshot<
    ChambreDeDiscution, ChambreDeDiscutionQueryDocumentSnapshot> {
  ChambreDeDiscutionQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ChambreDeDiscutionQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ChambreDeDiscution> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ChambreDeDiscutionQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ChambreDeDiscutionDocumentSnapshot._,
      );
    }).toList();

    return ChambreDeDiscutionQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ChambreDeDiscutionDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ChambreDeDiscutionDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<ChambreDeDiscutionDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ChambreDeDiscution> snapshot;

  @override
  final List<ChambreDeDiscutionQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ChambreDeDiscutionDocumentSnapshot>>
      docChanges;
}

class ChambreDeDiscutionQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ChambreDeDiscution>
    implements ChambreDeDiscutionDocumentSnapshot {
  ChambreDeDiscutionQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ChambreDeDiscution> snapshot;

  @override
  final ChambreDeDiscution data;

  @override
  ChambreDeDiscutionDocumentReference get reference {
    return ChambreDeDiscutionDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class MessageCollectionReference
    implements
        MessageQuery,
        FirestoreCollectionReference<Message, MessageQuerySnapshot> {
  factory MessageCollectionReference(
    DocumentReference<ChambreDeDiscution> parent,
  ) = _$MessageCollectionReference;

  static Message fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Message.fromJson({'uid': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Message value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('uid');
  }

  @override
  CollectionReference<Message> get reference;

  /// A reference to the containing [ChambreDeDiscutionDocumentReference] if this is a subcollection.
  ChambreDeDiscutionDocumentReference get parent;

  @override
  MessageDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<MessageDocumentReference> add(Message value);
}

class _$MessageCollectionReference extends _$MessageQuery
    implements MessageCollectionReference {
  factory _$MessageCollectionReference(
    DocumentReference<ChambreDeDiscution> parent,
  ) {
    return _$MessageCollectionReference._(
      ChambreDeDiscutionDocumentReference(parent),
      parent.collection('messages').withConverter(
            fromFirestore: MessageCollectionReference.fromFirestore,
            toFirestore: MessageCollectionReference.toFirestore,
          ),
    );
  }

  _$MessageCollectionReference._(
    this.parent,
    CollectionReference<Message> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final ChambreDeDiscutionDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Message> get reference =>
      super.reference as CollectionReference<Message>;

  @override
  MessageDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return MessageDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<MessageDocumentReference> add(Message value) {
    return reference.add(value).then((ref) => MessageDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$MessageCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class MessageDocumentReference
    extends FirestoreDocumentReference<Message, MessageDocumentSnapshot> {
  factory MessageDocumentReference(DocumentReference<Message> reference) =
      _$MessageDocumentReference;

  DocumentReference<Message> get reference;

  /// A reference to the [MessageCollectionReference] containing this document.
  MessageCollectionReference get parent {
    return _$MessageCollectionReference(
      reference.parent.parent!.withConverter<ChambreDeDiscution>(
        fromFirestore: ChambreDeDiscutionCollectionReference.fromFirestore,
        toFirestore: ChambreDeDiscutionCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<MessageDocumentSnapshot> snapshots();

  @override
  Future<MessageDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Message model, {
    SetOptions? options,
    FieldValue contenuFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Message model, {
    SetOptions? options,
    FieldValue contenuFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Message model, {
    SetOptions? options,
    FieldValue contenuFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String contenu,
    FieldValue contenuFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String contenu,
    FieldValue contenuFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String contenu,
    FieldValue contenuFieldValue,
  });
}

class _$MessageDocumentReference
    extends FirestoreDocumentReference<Message, MessageDocumentSnapshot>
    implements MessageDocumentReference {
  _$MessageDocumentReference(this.reference);

  @override
  final DocumentReference<Message> reference;

  /// A reference to the [MessageCollectionReference] containing this document.
  MessageCollectionReference get parent {
    return _$MessageCollectionReference(
      reference.parent.parent!.withConverter<ChambreDeDiscution>(
        fromFirestore: ChambreDeDiscutionCollectionReference.fromFirestore,
        toFirestore: ChambreDeDiscutionCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<MessageDocumentSnapshot> snapshots() {
    return reference.snapshots().map(MessageDocumentSnapshot._);
  }

  @override
  Future<MessageDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MessageDocumentSnapshot._);
  }

  @override
  Future<MessageDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(MessageDocumentSnapshot._);
  }

  Future<void> set(
    Message model, {
    SetOptions? options,
    FieldValue? contenuFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (contenuFieldValue != null)
        _$MessageFieldMap['contenu']!: contenuFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Message model, {
    SetOptions? options,
    FieldValue? contenuFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (contenuFieldValue != null)
        _$MessageFieldMap['contenu']!: contenuFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Message model, {
    SetOptions? options,
    FieldValue? contenuFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (contenuFieldValue != null)
        _$MessageFieldMap['contenu']!: contenuFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? contenu = _sentinel,
    FieldValue? contenuFieldValue,
  }) async {
    assert(
      contenu == _sentinel || contenuFieldValue == null,
      "Cannot specify both contenu and contenuFieldValue",
    );
    final json = {
      if (contenu != _sentinel)
        _$MessageFieldMap['contenu']!:
            _$MessagePerFieldToJson.contenu(contenu as String),
      if (contenuFieldValue != null)
        _$MessageFieldMap['contenu']!: contenuFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? contenu = _sentinel,
    FieldValue? contenuFieldValue,
  }) {
    assert(
      contenu == _sentinel || contenuFieldValue == null,
      "Cannot specify both contenu and contenuFieldValue",
    );
    final json = {
      if (contenu != _sentinel)
        _$MessageFieldMap['contenu']!:
            _$MessagePerFieldToJson.contenu(contenu as String),
      if (contenuFieldValue != null)
        _$MessageFieldMap['contenu']!: contenuFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? contenu = _sentinel,
    FieldValue? contenuFieldValue,
  }) {
    assert(
      contenu == _sentinel || contenuFieldValue == null,
      "Cannot specify both contenu and contenuFieldValue",
    );
    final json = {
      if (contenu != _sentinel)
        _$MessageFieldMap['contenu']!:
            _$MessagePerFieldToJson.contenu(contenu as String),
      if (contenuFieldValue != null)
        _$MessageFieldMap['contenu']!: contenuFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class MessageQuery
    implements QueryReference<Message, MessageQuerySnapshot> {
  @override
  MessageQuery limit(int limit);

  @override
  MessageQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  MessageQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  MessageQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  MessageQuery whereContenu({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  MessageQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByContenu({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });
}

class _$MessageQuery extends QueryReference<Message, MessageQuerySnapshot>
    implements MessageQuery {
  _$MessageQuery(
    this._collection, {
    required Query<Message> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<MessageQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(MessageQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<MessageQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MessageQuerySnapshot._fromQuerySnapshot);
  }

  @override
  MessageQuery limit(int limit) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MessageQuery limitToLast(int limit) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MessageQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MessageQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MessageQuery whereContenu({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['contenu']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$MessagePerFieldToJson.contenu(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$MessagePerFieldToJson.contenu(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$MessagePerFieldToJson.contenu(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MessagePerFieldToJson.contenu(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MessagePerFieldToJson.contenu(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MessagePerFieldToJson.contenu(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$MessagePerFieldToJson.contenu(e)),
        whereNotIn: whereNotIn?.map((e) => _$MessagePerFieldToJson.contenu(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MessageQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  MessageQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  MessageQuery orderByContenu({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$MessageFieldMap['contenu']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$MessageQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class MessageDocumentSnapshot extends FirestoreDocumentSnapshot<Message> {
  MessageDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Message> snapshot;

  @override
  MessageDocumentReference get reference {
    return MessageDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Message? data;
}

class MessageQuerySnapshot
    extends FirestoreQuerySnapshot<Message, MessageQueryDocumentSnapshot> {
  MessageQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory MessageQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Message> snapshot,
  ) {
    final docs = snapshot.docs.map(MessageQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        MessageDocumentSnapshot._,
      );
    }).toList();

    return MessageQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<MessageDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    MessageDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<MessageDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Message> snapshot;

  @override
  final List<MessageQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<MessageDocumentSnapshot>> docChanges;
}

class MessageQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Message>
    implements MessageDocumentSnapshot {
  MessageQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Message> snapshot;

  @override
  final Message data;

  @override
  MessageDocumentReference get reference {
    return MessageDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChambreDeDiscution _$ChambreDeDiscutionFromJson(Map<String, dynamic> json) =>
    ChambreDeDiscution(
      uid: json['uid'] as String?,
      uidUtilisateurConcerner:
          (json['uidUtilisateurConcerner'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      dernierMessage: json['dernierMessage'] == null
          ? null
          : Message.fromJson(json['dernierMessage'] as Map<String, dynamic>),
      urlImageDiscution: json['urlImageDiscution'] as String,
      dateDeCreation: const FirestoreDateTimeConverter()
          .fromJson(json['dateDeCreation'] as Timestamp),
      dateDeDernierModification: const FirestoreDateTimeConverter()
          .fromJson(json['dateDeDernierModification'] as Timestamp),
      uidUtilisateurAyantLueLeDernierMessage:
          (json['uidUtilisateurAyantLueLeDernierMessage'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

const _$ChambreDeDiscutionFieldMap = <String, String>{
  'uid': 'uid',
  'uidUtilisateurConcerner': 'uidUtilisateurConcerner',
  'dernierMessage': 'dernierMessage',
  'urlImageDiscution': 'urlImageDiscution',
  'dateDeCreation': 'dateDeCreation',
  'dateDeDernierModification': 'dateDeDernierModification',
  'uidUtilisateurAyantLueLeDernierMessage':
      'uidUtilisateurAyantLueLeDernierMessage',
};

// ignore: unused_element
abstract class _$ChambreDeDiscutionPerFieldToJson {
  // ignore: unused_element
  static Object? uid(String? instance) => instance;
  // ignore: unused_element
  static Object? uidUtilisateurConcerner(List<String> instance) => instance;
  // ignore: unused_element
  static Object? dernierMessage(Message? instance) => instance?.toJson();
  // ignore: unused_element
  static Object? urlImageDiscution(String instance) => instance;
  // ignore: unused_element
  static Object? dateDeCreation(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? dateDeDernierModification(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? uidUtilisateurAyantLueLeDernierMessage(
          List<String> instance) =>
      instance;
}

Map<String, dynamic> _$ChambreDeDiscutionToJson(ChambreDeDiscution instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'uidUtilisateurConcerner': instance.uidUtilisateurConcerner,
      'dernierMessage': instance.dernierMessage?.toJson(),
      'urlImageDiscution': instance.urlImageDiscution,
      'dateDeCreation':
          const FirestoreDateTimeConverter().toJson(instance.dateDeCreation),
      'dateDeDernierModification': const FirestoreDateTimeConverter()
          .toJson(instance.dateDeDernierModification),
      'uidUtilisateurAyantLueLeDernierMessage':
          instance.uidUtilisateurAyantLueLeDernierMessage,
    };

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      uid: json['uid'] as String?,
      contenu: json['contenu'] as String,
    );

const _$MessageFieldMap = <String, String>{
  'uid': 'uid',
  'contenu': 'contenu',
};

// ignore: unused_element
abstract class _$MessagePerFieldToJson {
  // ignore: unused_element
  static Object? uid(String? instance) => instance;
  // ignore: unused_element
  static Object? contenu(String instance) => instance;
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'uid': instance.uid,
      'contenu': instance.contenu,
    };

MessageText _$MessageTextFromJson(Map<String, dynamic> json) => MessageText(
      uid: json['uid'] as String?,
      contenu: json['contenu'] as String,
    );

const _$MessageTextFieldMap = <String, String>{
  'uid': 'uid',
  'contenu': 'contenu',
};

// ignore: unused_element
abstract class _$MessageTextPerFieldToJson {
  // ignore: unused_element
  static Object? uid(String? instance) => instance;
  // ignore: unused_element
  static Object? contenu(String instance) => instance;
}

Map<String, dynamic> _$MessageTextToJson(MessageText instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'contenu': instance.contenu,
    };
