class Note {
  final int? id;
  final String title;
  final String content;
  final bool isDone;

  Note({
    this.id,
    required this.title,
    required this.content,
    this.isDone = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'isDone': isDone ? 1 : 0,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      isDone: map['isDone'] == 1,
    );
  }

  Note copyWith({int? id, String? title, String? content, bool? isDone}) {
    return Note(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      isDone: isDone ?? this.isDone,
    );
  }
}
