import 'package:dartz/dartz.dart';
import 'package:flutter_app_login/modules/search/domain/entities/result_search.dart';
import 'package:flutter_app_login/modules/search/domain/erros/erros.dart';
import 'package:flutter_app_login/modules/search/domain/repositories/search_repository.dart';
import 'package:flutter_app_login/modules/search/domain/usecases/search_by_text.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'search_by_text_test.mocks.dart';

// class SearchRepositoryMock extends Mock implements SearchRepository{}
@GenerateMocks([SearchRepository])
main() {
  final repository =  MockSearchRepository();
  final usecase = SearchByTextImpl(repository);

  test('Return list resultSearch', () async{
    when(repository.search(any)).thenAnswer((_) async => Right(<ResultSearch>[]));
    
    final result = await usecase("Igor");
    // expect(result, isA<Right>());
    // expect(result.isRight(), isA<List<ResultSearch>>());
    expect(result.fold(id, id), isA<List<ResultSearch>>());
  });


  /*test('Return error: ', () async{
    when(repository.search(any)).thenAnswer((_) async => Right(<ResultSearch>[]));

    final result = await usecase(null);
    expect(result.fold(id, id), isA<InvalidTextError>());
  });*/
}