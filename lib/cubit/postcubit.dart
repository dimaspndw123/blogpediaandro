import 'package:bloc/bloc.dart';
import 'package:blogpediav2/services/services.dart';
import 'package:blogpediav2/models/models.dart';
import 'package:equatable/equatable.dart';

part 'poststate.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostInitial());

  Future<void> getPosts({int idKategori, String keyword}) async {
    ApiReturnValue<List<Post>> result =
        await PostServices.getPosts(idKategori: idKategori, keyword: keyword);

    if (result.value != null) {
      emit(PostLoaded(result.value));
    } else {
      emit(PostLoadingFailed(result.message));
    }
  }
}
