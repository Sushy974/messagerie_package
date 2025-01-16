import 'package:equatable/equatable.dart';

/// {@template user}
/// User model
///
/// [User.empty] represents an unauthenticated user.
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user}
  const User({
    required this.id,
    this.email,
    this.name,
    this.photo,
    this.isAnonymous,
    this.lastSignInTime,
    this.creationTime,
  });

  /// The current user's email address.
  final String? email;

  /// The current user's id.
  final String id;

  /// The current user's name (display name).
  final String? name;

  /// Url for the current user's photo.
  final String? photo;

  final bool? isAnonymous;
  final DateTime? lastSignInTime;
  final DateTime? creationTime;

  /// Empty user which represents an unauthenticated user.
  static const empty = User(id: '');

  /// Convenience getter to determine whether the current user is empty.
  bool get isNotAnonymous => isAnonymous == false;

  bool get isConnectedById => name?.isEmpty ?? true;

  bool get isNotConnectedById => name?.isNotEmpty ?? false;

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;

  /// Convenience getter to determine whether the current user is first login.
  bool get isFirstLogin => creationTime == lastSignInTime;

  /// Convenience getter to determine whether the current user
  /// is not first login.
  bool get isNotFirstLogin => creationTime != lastSignInTime;

  User copyWith({
    String? email,
    String? id,
    String? name,
    String? photo,
    bool? isAnonymous,
    DateTime? lastSignInTime,
    DateTime? creationTime,
  }) {
    return User(
      email: email ?? this.email,
      id: id ?? this.id,
      name: name ?? this.name,
      photo: photo ?? this.photo,
      isAnonymous: isAnonymous ?? this.isAnonymous,
      lastSignInTime: lastSignInTime ?? this.lastSignInTime,
      creationTime: creationTime ?? this.creationTime,
    );
  }

  @override
  List<Object?> get props =>
      [email, id, name, photo, isAnonymous, lastSignInTime, creationTime];

  Map<String, dynamic> toJson() {
    return {
      'email': this.email,
      'id': this.id,
      'name': this.name,
      'photo': this.photo,
      'isAnonymous': this.isAnonymous,
      'lastSignInTime': this.lastSignInTime?.millisecondsSinceEpoch,
      'creationTime': this.creationTime?.millisecondsSinceEpoch,
    };
  }

  factory User.fromJson(Map<dynamic, dynamic> map) {
    return User(
      email: map['email'] as String?,
      id: map['id'] as String,
      name: map['name'] as String?,
      photo: map['photo'] as String?,
      isAnonymous: map['isAnonymous'] as bool?,
      lastSignInTime: map['lastSignInTime'] == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(map['lastSignInTime'] as int),
      creationTime: map['creationTime'] == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(map['creationTime'] as int),
    );
  }
}
