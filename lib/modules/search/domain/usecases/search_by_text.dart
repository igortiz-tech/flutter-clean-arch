import 'package:flutter_app_login/modules/search/domain/entities/result_search.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_app_login/modules/search/domain/erros/erros.dart';
import 'package:flutter_app_login/modules/search/domain/repositories/search_repository.dart';

abstract class SearchByText {
   Future<Either<FailureSearch,List<ResultSearch>>> call(String searchText);
}

class SearchByTextImpl implements SearchByText {

  final SearchRepository repository;

  SearchByTextImpl(this.repository);

  @override
  Future<Either<FailureSearch, List<ResultSearch>>> call(String searchText) async {
    return repository.search(searchText);
  }
   
}