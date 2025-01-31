import 'package:dartz/dartz.dart';
import 'package:transittrack/core/error/failure.dart';
import 'package:transittrack/core/usecases/usecases.dart';
import 'package:transittrack/features/home/domain/entities/location.dart';
import 'package:transittrack/features/home/domain/repositories/home_repository.dart';

class SearchLocationUsecase
    extends UseCase<List<LocationEntity>, SerachLocationParams> {
  final HomeRepository repository;

  SearchLocationUsecase({required this.repository});

  @override
  Future<Either<Failure, List<LocationEntity>>> call(
      SerachLocationParams params) async {
    return await repository.getPlacAutoCompleteSuggestion(params.input);
  }
}

class SerachLocationParams {
  final String input;

  SerachLocationParams({required this.input});
}
