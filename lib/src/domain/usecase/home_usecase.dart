// features/authentication/domain/usecases/login_usecase.dart

import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/data/models/home_response.dart';
import 'package:scube_task/src/domain/entites/home_entity.dart';
import 'package:scube_task/src/domain/repositories/i_home_repository.dart';


class HomeUseCase {
  final IHomeRepository repository;

  HomeUseCase({required this.repository});

  Future<Result<HomeEntity, Failure>> getHomeData() async {


    final result = await repository.getHomeData();

    if (result is FailureResult) {
      return FailureResult((result as FailureResult).error);
    }

    return Success(_mapHomeResponseToEntity((result as Success).data as HomeResponse));
  }
}

HomeEntity _mapHomeResponseToEntity(HomeResponse response) {
    return HomeEntity(
      categories: response.homepage_categories
          .map((c) => CategoryEntity(
                title: c.name,
                icon: c.icon,
              ))
          .toList(),
      newArrivals: response.newArrivalProducts
          .map((p) => ProductEntity(
                id: p.id,
                name: p.name,
                image: p.thumb_image,
                rating: double.tryParse(p.averageRating) ?? 0.0,
                price: p.offer_price ?? p.price.toDouble(),
                oldPrice: p.offer_price != null ? p.price.toDouble() : null,
              ))
          .toList(),
    );
  }

