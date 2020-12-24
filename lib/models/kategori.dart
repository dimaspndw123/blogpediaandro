part of 'models.dart';

class Kategori extends Equatable {
  final int id;
  final String nama;
  // final String nama;
  // final String username;
  // final String judul;
  // final String slug;
  // final String isiPost;
  // final String fileGambar;
  // final int jmlhKomentar;
  // final DateTime tglInsert;
  // final DateTime tglUpdate;

  Kategori({
    this.id,
    this.nama,
    // this.nama,
    // this.username,
    // this.judul,
    // this.slug,
    // this.isiPost,
    // this.fileGambar,
    // this.jmlhKomentar,
    // this.tglInsert,
    // this.tglUpdate,
  });

  factory Kategori.fromJson(Map<String, dynamic> data) {
    return Kategori(
      id: int.parse(data["id"].toString()),
      nama: data["nama"],
      // idkategori: int.parse(data["idkategori"].toString()),
      // nama: data["namakategori"],
      // username: data["namapenulis"],
      // slug: data["slug"],
      // isiPost: data["isi_post"],
      // fileGambar: baseURLImg + 'post/' + data['file_gambar'].toString(),
      // fileGambar: baseURLImg + 'post/artikel1.jpg',
      // jmlhKomentar: int.parse(data["jmlhkomentar"].toString()),
      // tglInsert: DateTime.parse(data["tgl_insert"].toString()),
      // tglUpdate: DateTime.parse(data["tgl_update"].toString()),
    );
  }

  Kategori copyWith({
    int id,
    String nama,
    // int idKategori,
    // String namaKategori,
    // String namaPenulis,
    // String slug,
    // String isiPost,
    // String fileGambar,
    // int jmlhkomentar,
    // DateTime tglInsert,
    // DateTime tglUpdate,
  }) {
    return Kategori(
      id: id ?? this.id,
      nama: nama ?? this.nama,
      // idKategori: idKategori ?? this.idKategori,
      // namaKategori: namaKategori ?? this.namaKategori,
      // namaPenulis: namaPenulis ?? this.namaPenulis,
      // slug: slug ?? this.slug,
      // isiPost: isiPost ?? this.isiPost,
      // fileGambar: fileGambar ?? this.fileGambar,
      // jmlhKomentar: jmlhKomentar ?? this.jmlhKomentar,
      // tglInsert: tglInsert ?? this.tglInsert,
      // tglUpdate: tglUpdate ?? this.tglUpdate,
    );
  }

  @override
  List<Object> get props => [
        id,
        nama,
        // idKategori,
        // namaKategori,
        // namaPenulis,
        // slug,
        // isiPost,
        // fileGambar,
        // jmlhKomentar,
        // tglInsert,
        // tglUpdate
      ];
}
