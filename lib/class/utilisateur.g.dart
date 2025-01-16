// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utilisateur.dart';

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
abstract class UtilisateurCollectionReference
    implements
        UtilisateurQuery,
        FirestoreCollectionReference<Utilisateur, UtilisateurQuerySnapshot> {
  factory UtilisateurCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$UtilisateurCollectionReference;

  static Utilisateur fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Utilisateur.fromJson({'uid': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Utilisateur value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('uid');
  }

  @override
  CollectionReference<Utilisateur> get reference;

  @override
  UtilisateurDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UtilisateurDocumentReference> add(Utilisateur value);
}

class _$UtilisateurCollectionReference extends _$UtilisateurQuery
    implements UtilisateurCollectionReference {
  factory _$UtilisateurCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UtilisateurCollectionReference._(
      firestore.collection('utilisateurs').withConverter(
            fromFirestore: UtilisateurCollectionReference.fromFirestore,
            toFirestore: UtilisateurCollectionReference.toFirestore,
          ),
    );
  }

  _$UtilisateurCollectionReference._(
    CollectionReference<Utilisateur> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Utilisateur> get reference =>
      super.reference as CollectionReference<Utilisateur>;

  @override
  UtilisateurDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UtilisateurDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UtilisateurDocumentReference> add(Utilisateur value) {
    return reference
        .add(value)
        .then((ref) => UtilisateurDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UtilisateurCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UtilisateurDocumentReference extends FirestoreDocumentReference<
    Utilisateur, UtilisateurDocumentSnapshot> {
  factory UtilisateurDocumentReference(
          DocumentReference<Utilisateur> reference) =
      _$UtilisateurDocumentReference;

  DocumentReference<Utilisateur> get reference;

  /// A reference to the [UtilisateurCollectionReference] containing this document.
  UtilisateurCollectionReference get parent {
    return _$UtilisateurCollectionReference(reference.firestore);
  }

  @override
  Stream<UtilisateurDocumentSnapshot> snapshots();

  @override
  Future<UtilisateurDocumentSnapshot> get([GetOptions? options]);

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
    Utilisateur model, {
    SetOptions? options,
    FieldValue nomFieldValue,
    FieldValue urlPhotoFieldValue,
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
    Utilisateur model, {
    SetOptions? options,
    FieldValue nomFieldValue,
    FieldValue urlPhotoFieldValue,
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
    Utilisateur model, {
    SetOptions? options,
    FieldValue nomFieldValue,
    FieldValue urlPhotoFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String nom,
    FieldValue nomFieldValue,
    String? urlPhoto,
    FieldValue urlPhotoFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String nom,
    FieldValue nomFieldValue,
    String? urlPhoto,
    FieldValue urlPhotoFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String nom,
    FieldValue nomFieldValue,
    String? urlPhoto,
    FieldValue urlPhotoFieldValue,
  });
}

class _$UtilisateurDocumentReference
    extends FirestoreDocumentReference<Utilisateur, UtilisateurDocumentSnapshot>
    implements UtilisateurDocumentReference {
  _$UtilisateurDocumentReference(this.reference);

  @override
  final DocumentReference<Utilisateur> reference;

  /// A reference to the [UtilisateurCollectionReference] containing this document.
  UtilisateurCollectionReference get parent {
    return _$UtilisateurCollectionReference(reference.firestore);
  }

  @override
  Stream<UtilisateurDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UtilisateurDocumentSnapshot._);
  }

  @override
  Future<UtilisateurDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UtilisateurDocumentSnapshot._);
  }

  @override
  Future<UtilisateurDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UtilisateurDocumentSnapshot._);
  }

  Future<void> set(
    Utilisateur model, {
    SetOptions? options,
    FieldValue? nomFieldValue,
    FieldValue? urlPhotoFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (nomFieldValue != null) _$UtilisateurFieldMap['nom']!: nomFieldValue,
      if (urlPhotoFieldValue != null)
        _$UtilisateurFieldMap['urlPhoto']!: urlPhotoFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Utilisateur model, {
    SetOptions? options,
    FieldValue? nomFieldValue,
    FieldValue? urlPhotoFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nomFieldValue != null) _$UtilisateurFieldMap['nom']!: nomFieldValue,
      if (urlPhotoFieldValue != null)
        _$UtilisateurFieldMap['urlPhoto']!: urlPhotoFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Utilisateur model, {
    SetOptions? options,
    FieldValue? nomFieldValue,
    FieldValue? urlPhotoFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nomFieldValue != null) _$UtilisateurFieldMap['nom']!: nomFieldValue,
      if (urlPhotoFieldValue != null)
        _$UtilisateurFieldMap['urlPhoto']!: urlPhotoFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? nom = _sentinel,
    FieldValue? nomFieldValue,
    Object? urlPhoto = _sentinel,
    FieldValue? urlPhotoFieldValue,
  }) async {
    assert(
      nom == _sentinel || nomFieldValue == null,
      "Cannot specify both nom and nomFieldValue",
    );
    assert(
      urlPhoto == _sentinel || urlPhotoFieldValue == null,
      "Cannot specify both urlPhoto and urlPhotoFieldValue",
    );
    final json = {
      if (nom != _sentinel)
        _$UtilisateurFieldMap['nom']!:
            _$UtilisateurPerFieldToJson.nom(nom as String),
      if (nomFieldValue != null) _$UtilisateurFieldMap['nom']!: nomFieldValue,
      if (urlPhoto != _sentinel)
        _$UtilisateurFieldMap['urlPhoto']!:
            _$UtilisateurPerFieldToJson.urlPhoto(urlPhoto as String?),
      if (urlPhotoFieldValue != null)
        _$UtilisateurFieldMap['urlPhoto']!: urlPhotoFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? nom = _sentinel,
    FieldValue? nomFieldValue,
    Object? urlPhoto = _sentinel,
    FieldValue? urlPhotoFieldValue,
  }) {
    assert(
      nom == _sentinel || nomFieldValue == null,
      "Cannot specify both nom and nomFieldValue",
    );
    assert(
      urlPhoto == _sentinel || urlPhotoFieldValue == null,
      "Cannot specify both urlPhoto and urlPhotoFieldValue",
    );
    final json = {
      if (nom != _sentinel)
        _$UtilisateurFieldMap['nom']!:
            _$UtilisateurPerFieldToJson.nom(nom as String),
      if (nomFieldValue != null) _$UtilisateurFieldMap['nom']!: nomFieldValue,
      if (urlPhoto != _sentinel)
        _$UtilisateurFieldMap['urlPhoto']!:
            _$UtilisateurPerFieldToJson.urlPhoto(urlPhoto as String?),
      if (urlPhotoFieldValue != null)
        _$UtilisateurFieldMap['urlPhoto']!: urlPhotoFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? nom = _sentinel,
    FieldValue? nomFieldValue,
    Object? urlPhoto = _sentinel,
    FieldValue? urlPhotoFieldValue,
  }) {
    assert(
      nom == _sentinel || nomFieldValue == null,
      "Cannot specify both nom and nomFieldValue",
    );
    assert(
      urlPhoto == _sentinel || urlPhotoFieldValue == null,
      "Cannot specify both urlPhoto and urlPhotoFieldValue",
    );
    final json = {
      if (nom != _sentinel)
        _$UtilisateurFieldMap['nom']!:
            _$UtilisateurPerFieldToJson.nom(nom as String),
      if (nomFieldValue != null) _$UtilisateurFieldMap['nom']!: nomFieldValue,
      if (urlPhoto != _sentinel)
        _$UtilisateurFieldMap['urlPhoto']!:
            _$UtilisateurPerFieldToJson.urlPhoto(urlPhoto as String?),
      if (urlPhotoFieldValue != null)
        _$UtilisateurFieldMap['urlPhoto']!: urlPhotoFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UtilisateurDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UtilisateurQuery
    implements QueryReference<Utilisateur, UtilisateurQuerySnapshot> {
  @override
  UtilisateurQuery limit(int limit);

  @override
  UtilisateurQuery limitToLast(int limit);

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
  UtilisateurQuery whereFieldPath(
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

  UtilisateurQuery whereDocumentId({
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

  UtilisateurQuery whereNom({
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

  UtilisateurQuery whereUrlPhoto({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
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
  UtilisateurQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  });

  UtilisateurQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  });

  UtilisateurQuery orderByNom({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  });

  UtilisateurQuery orderByUrlPhoto({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  });
}

class _$UtilisateurQuery
    extends QueryReference<Utilisateur, UtilisateurQuerySnapshot>
    implements UtilisateurQuery {
  _$UtilisateurQuery(
    this._collection, {
    required Query<Utilisateur> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UtilisateurQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(UtilisateurQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UtilisateurQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UtilisateurQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UtilisateurQuery limit(int limit) {
    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UtilisateurQuery limitToLast(int limit) {
    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UtilisateurQuery whereFieldPath(
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
    return _$UtilisateurQuery(
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
  UtilisateurQuery whereDocumentId({
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
    return _$UtilisateurQuery(
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
  UtilisateurQuery whereNom({
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
    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UtilisateurFieldMap['nom']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UtilisateurPerFieldToJson.nom(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UtilisateurPerFieldToJson.nom(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UtilisateurPerFieldToJson.nom(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UtilisateurPerFieldToJson.nom(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UtilisateurPerFieldToJson.nom(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UtilisateurPerFieldToJson.nom(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UtilisateurPerFieldToJson.nom(e)),
        whereNotIn: whereNotIn?.map((e) => _$UtilisateurPerFieldToJson.nom(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UtilisateurQuery whereUrlPhoto({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UtilisateurFieldMap['urlPhoto']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UtilisateurPerFieldToJson.urlPhoto(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UtilisateurPerFieldToJson.urlPhoto(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$UtilisateurPerFieldToJson.urlPhoto(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UtilisateurPerFieldToJson
                .urlPhoto(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UtilisateurPerFieldToJson.urlPhoto(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UtilisateurPerFieldToJson
                .urlPhoto(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$UtilisateurPerFieldToJson.urlPhoto(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UtilisateurPerFieldToJson.urlPhoto(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UtilisateurQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
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

    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UtilisateurQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
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

    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UtilisateurQuery orderByNom({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UtilisateurFieldMap['nom']!,
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

    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UtilisateurQuery orderByUrlPhoto({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UtilisateurFieldMap['urlPhoto']!, descending: descending);
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

    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UtilisateurQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UtilisateurDocumentSnapshot
    extends FirestoreDocumentSnapshot<Utilisateur> {
  UtilisateurDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Utilisateur> snapshot;

  @override
  UtilisateurDocumentReference get reference {
    return UtilisateurDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Utilisateur? data;
}

class UtilisateurQuerySnapshot extends FirestoreQuerySnapshot<Utilisateur,
    UtilisateurQueryDocumentSnapshot> {
  UtilisateurQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UtilisateurQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Utilisateur> snapshot,
  ) {
    final docs = snapshot.docs.map(UtilisateurQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UtilisateurDocumentSnapshot._,
      );
    }).toList();

    return UtilisateurQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UtilisateurDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UtilisateurDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UtilisateurDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Utilisateur> snapshot;

  @override
  final List<UtilisateurQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UtilisateurDocumentSnapshot>> docChanges;
}

class UtilisateurQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Utilisateur>
    implements UtilisateurDocumentSnapshot {
  UtilisateurQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Utilisateur> snapshot;

  @override
  final Utilisateur data;

  @override
  UtilisateurDocumentReference get reference {
    return UtilisateurDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Utilisateur _$UtilisateurFromJson(Map<String, dynamic> json) => Utilisateur(
      nom: json['nom'] as String,
      uid: json['uid'] as String?,
      urlPhoto: json['urlPhoto'] as String?,
    );

const _$UtilisateurFieldMap = <String, String>{
  'nom': 'nom',
  'uid': 'uid',
  'urlPhoto': 'urlPhoto',
};

// ignore: unused_element
abstract class _$UtilisateurPerFieldToJson {
  // ignore: unused_element
  static Object? nom(String instance) => instance;
  // ignore: unused_element
  static Object? uid(String? instance) => instance;
  // ignore: unused_element
  static Object? urlPhoto(String? instance) => instance;
}

Map<String, dynamic> _$UtilisateurToJson(Utilisateur instance) =>
    <String, dynamic>{
      'nom': instance.nom,
      'uid': instance.uid,
      'urlPhoto': instance.urlPhoto,
    };
