part of 'chambre_de_discution.dart';

@firestoreSerializable
class Message extends Equatable {
  Message({
    required this.uid,
    required this.contenu,
  });

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);

  Map<String, Object?> toJson() => _$MessageToJson(this);

  Message copyWith({
    String? uid,
    String? contenu,
  }) {
    return Message(
      uid: uid ?? this.uid,
      contenu: contenu ?? this.contenu,
    );
  }

  @Id()
  final String? uid;
  final String contenu;

  @override
  List<Object?> get props => [
        uid,
        contenu,
      ];
}

class MessageBuilder {
  MessageBuilder({
    String? uid,
    String contenu = '',
  })  : _uid = uid,
        _contenu = contenu;

  final String? _uid;
  final String _contenu;

  Message build() {
    return Message(
      uid: _uid,
      contenu: _contenu,
    );
  }

  MessageBuilder withUid(String uid) {
    return MessageBuilder(
      uid: uid,
      contenu: _contenu,
    );
  }

  MessageBuilder withContenu(String contenu) {
    return MessageBuilder(
      uid: _uid,
      contenu: contenu,
    );
  }
}
