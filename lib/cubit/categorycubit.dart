import 'package:bloc/bloc.dart';
import 'package:blogpediav2/services/services.dart';
import 'package:blogpediav2/models/models.dart';
import 'package:equatable/equatable.dart';

part 'categorystate.dart';

class CategoryCubit extends Cubit<KategoriState> {
  CategoryCubit() : super(KategoriInitial());

  Future<void> getKategori() async {
    ApiReturnValue<List<Kategori>> result =
        await KategoriServices.getKategori();

    if (result.value != null) {
      emit(KategoriLoaded(result.value));
    } else {
      emit(KategoriLoadingFailed(result.message));
    }
  }
}
