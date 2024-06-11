// models/todo.dart

class Todo {
  final String task;
  final DateTime createdAt;

  Todo({
    required this.task,
    required this.createdAt,
  });

  Map<String, dynamic> toJson() => {
    'task': task,
    'createdAt': createdAt.toIso8601String(),
  };

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
    task: json['task'],
    createdAt: DateTime.parse(json['createdAt']),
  );
}
