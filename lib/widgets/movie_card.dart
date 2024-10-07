import 'package:flutter/material.dart';
import 'package:thirty_days_beginner_ui_basics/models/movie_model.dart';

class MovieCard extends StatelessWidget {
  //adding a movie model
  final Movie movie;
  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xfff5f5f5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(right: 16),
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Adding an image
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  movie.imagePath,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
            const SizedBox(height: 9),

            //Adding the movie title
            Text(
              movie.title,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            //Adding the release date
            Text(
              movie.releaseDate,
              style: const TextStyle(fontSize: 16),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            //Adding the movie rating
            Text(
              '⭐ ${movie.rating}',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
