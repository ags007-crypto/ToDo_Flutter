class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
  static List<ToDo> todolist() {
    return [
      ToDo(id: '01', todoText: 'Go to Gym', isDone: true),
      ToDo(id: '02', todoText: 'Play Tennis', isDone: true),
      ToDo(id: '03', todoText: 'Office Work', isDone: true),
      ToDo(id: '04', todoText: 'Pickup friend', isDone: false),
      ToDo(id: '05', todoText: 'Laundry', isDone: false),
      ToDo(id: '06', todoText: 'Meeting with Friends', isDone: true),
      ToDo(id: '07', todoText: 'Framework for New project', isDone: false),
    ];
  }
}
