class Band {
  String id;
  String name;
  int votes;

  Band({required this.id, required this.name, this.votes = 0});

  factory Band.fronMap(Map<String, dynamic> obj) =>
      Band(id: obj['id'], name: obj['name'], votes: obj['votes'] ?? 0);
}
