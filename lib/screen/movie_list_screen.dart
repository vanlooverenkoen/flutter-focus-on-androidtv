import 'package:flutter/widgets.dart';
import 'package:flutter_tv/model/movie.dart';
import 'package:flutter_tv/widget/movie_list_item.dart';

class MovieListScreen extends StatelessWidget {
  static const movies = [
    Movie(
      'The Shawshank Redemption',
      'https://m.media-amazon.com/images/M/MV5BNDE3ODcxYzMtY2YzZC00NmNlLWJiNDMtZDViZWM2MzIxZDYwXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_UX201_CR0,0,201,294_AL_.jpg',
    ),
    Movie(
      'The Godfather',
      'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY294_CR1,0,200,294_AL_.jpg',
    ),
    Movie(
      'The Dark Knight',
      'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX201_CR0,0,201,294_AL_.jpg',
    ),
    Movie(
      "Schindler's List",
      'https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX201_CR0,0,201,294_AL_.jpg',
    ),
    Movie(
      'The Lord of the Rings: The Return of the King',
      'https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX201_CR0,0,201,294_AL_.jpg',
    ),
    Movie(
      '12 Angry Men',
      'https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX201_CR0,0,201,294_AL_.jpg',
    ),
    Movie(
      'The Godfather Part II',
      'https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY294_CR1,0,200,294_AL_.jpg',
    ),
    Movie(
      'Pulp Fiction',
      'https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY294_CR0,0,200,294_AL_.jpg',
    ),
    Movie(
      'Inception',
      'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_UX201_CR0,0,200,294_AL_.jpg',
    ),
  ];

  const MovieListScreen({super.key});


  @override
  Widget build(BuildContext context) => Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: MovieListScreen.movies.length,
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                return MovieListItem(
                  movie: MovieListScreen.movies[index],
                  // autoFocus: index == 0,
                );
              },
            ),
          ),
        ],
      );
}
