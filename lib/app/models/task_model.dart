const String tableNotes = 'notes';

class NoteFields {
  static final List<String> values = [
    /// Add all fields
    id, description, day, month
  ];

  static const String id = '_id';
  static const String description = 'description';
  static const String day = 'day';
  static const String month = 'month';
}

class Note {
  final int? id;
  final String description;
  final String day;
  final String month;

  const Note({
    this.id,
    required this.description,
    required this.day,
    required this.month,
  });

  Note copy({
    int? id,
    bool? isImportant,
    int? number,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      Note(
        id: id ?? this.id,
        description: description ?? this.description,
        day: day,
        month: month,
      );

  static Note fromJson(Map<String, Object?> json) => Note(
        id: json[NoteFields.id] as int?,
        description: json[NoteFields.description] as String,
        day: json[NoteFields.day] as String,
        month: json[NoteFields.month] as String,
      );

  Map<String, Object?> toJson() => {
        NoteFields.id: id,
        NoteFields.description: description,
        NoteFields.day: day,
        NoteFields.month: month,
      };
}
