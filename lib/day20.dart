import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/constants/constants.dart';
import 'package:thirty_days_beginner_ui_basics/models/movie_model.dart';
import 'package:thirty_days_beginner_ui_basics/widgets/movie_card.dart';

class MoviesHomePage extends StatelessWidget {
  const MoviesHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("TMDB Movies",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          backgroundColor: const Color.fromARGB(255, 8, 42, 103),
          foregroundColor: Colors.white,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                //aligning items frim start
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  //Section for latest movies
                  titleHeader(title: "Latest Movies"),
                  MoviesList(
                    movies: latestMovies,
                  ),

                  const SizedBox(height: 18),
                  //Section for recommended movies
                  titleHeader(title: "Recommended Movies"),
                  MoviesList(
                    movies: recommendedMovies,
                  ),
                  const SizedBox(height: 25),
                ],
              )),
        ));
  }
}

// reusable title header //using named parameters
Widget titleHeader({required String title}) {
  //Adding a view all text
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        //Adding space between the items
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const Text(
            'View All',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 8, 42, 103)),
          ),
        ],
      ));
}

//movies list
class MoviesList extends StatelessWidget {
  //creating a movies list
  final List<Movie> movies;
  const MoviesList({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];
            return MovieCard(movie: movie);
          }),
    );
  }
}
