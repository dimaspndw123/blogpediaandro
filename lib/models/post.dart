part of 'models.dart';

class Post extends Equatable {
  final int idpost;
  final int idkategori;
  final String judul;
  final String isi_post;
  final String username;
  final String file_gambar;

  Post({
    this.idpost,
    this.idkategori,
    this.judul,
    this.isi_post,
    this.username,
    this.file_gambar,
  });

  factory Post.fromJson(Map<String, dynamic> data) {
    return Post(
      idpost: int.parse(data["idpost"].toString()),
      idkategori: int.parse(data["idkategori"].toString()),
      judul: data["judul"],
      isi_post: data["isi_post"],
      username: data["username"],
      file_gambar: data["file_gambar"],
    );
  }

  Post copyWith({
    int idpost,
    int idkategori,
    String judul,
    String isi_post,
    String username,
    String file_gambar,
  }) {
    return Post(
      idpost: idpost ?? this.idpost,
      idkategori: idkategori ?? this.idkategori,
      judul: judul ?? this.judul,
      isi_post: isi_post ?? this.isi_post,
      username: username ?? this.username,
      file_gambar: file_gambar ?? this.file_gambar,
    );
  }

  @override
  List<Object> get props => [
        idpost,
        idkategori,
        judul,
        isi_post,
        username,
        file_gambar,
      ];
}
