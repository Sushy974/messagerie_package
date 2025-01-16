part of 'chambre_de_discution.dart';

@firestoreSerializable
class MessageText extends Equatable implements Message {
  MessageText({
    this.uid,
    required this.contenu,
  });

  factory MessageText.fromJson(Map<String, Object?> json) =>
      _$MessageTextFromJson(json);

  Map<String, Object?> toJson() => _$MessageTextToJson(this);

  @override
  Message copyWith({
    String? uid,
    String? contenu,
  }) {
    return MessageText(
      uid: uid ?? this.uid,
      contenu: contenu ?? this.contenu,
    );
  }

  @Id()
  final String? uid;
  @override
  final String contenu;

  @override
  List<Object?> get props => [
        uid,
        contenu,
      ];
}
