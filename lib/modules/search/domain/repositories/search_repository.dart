import 'package:flutter_app_login/modules/search/domain/entities/result_search.dart';
import 'package:flutter_app_login/modules/search/domain/erros/erros.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepository{
  Future<Either<FailureSearch,List<ResultSearch>>> search(String searchText);
}