import 'package:flutter_sample/data/local/category.dart';
import 'package:flutter_sample/data/remote/response/genre_list_response.dart';
import 'package:flutter_sample/data/remote/response/movie_detail_response.dart';
import 'package:flutter_sample/data/remote/response/movie_gallery_response.dart';
import 'package:flutter_sample/data/remote/response/movie_list_response.dart';

import 'response/cast_crew_response.dart';

abstract class IApiMovie {
  Future<MovieListResponse> getMovieByCategory(Category category, int page);

  Future<MovieListResponse> getDiscoverMovie(int page);

  Future<GenreListResponse> getGenresList();

  Future<MovieListResponse> getMovieByGenreId(int genreId, int page);

  Future<MovieDetailResponse> getMovieDetail(int movieId);

  Future<MovieGalleryResponse> getMovieGallery(int movieId);

  Future<CastCrewResponse> getCastCrewMovie(int movieId);

  Future<MovieListResponse> searchMovies(String query);

}
