import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  final VoidCallback onMovieListSelected;
  final VoidCallback onTvShowListSelected;

  const SideMenu({
    required this.onMovieListSelected,
    required this.onTvShowListSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        width: 200,
        color: const Color(0xFF1E1E1E),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: onMovieListSelected,
                child: const Text('Movies'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: onTvShowListSelected,
                child: const Text('Tv Shows'),
              ),
            ],
          ),
        ),
      );
}
