class Card {
  int id;
  String title;
  String content;

  Card({this.id, this.title, this.content});

  Card.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    title = map['title'];
    content = map['content'];
  }

  @override
  String toString() {
    return 'ID: $id, TITLE: $title, CONTENT: $content';
  }
}
