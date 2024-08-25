class Todo {
  int? id;
  String nama;
  String deskripsi;
  bool done;

  Todo(this.nama, this.deskripsi, {this.done = false, this.id});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nama': nama,
      'deskripsi': deskripsi,
      'done': done ? 1 : 0,
    };
  }

  // Pastikan konstruktor dari map juga didefinisikan jika kamu menggunakannya
  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      map['nama'],
      map['deskripsi'],
      done: map['done'] == 1,
      id: map['id'],
    );
  }
}
