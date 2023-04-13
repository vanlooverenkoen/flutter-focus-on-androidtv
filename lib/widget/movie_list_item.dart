import 'package:flutter/material.dart';
import 'package:flutter_tv/model/movie.dart';

class MovieListItem extends StatefulWidget {
  final Movie movie;
  final bool autoFocus;

  const MovieListItem({
    required this.movie,
    this.autoFocus = false,
    super.key,
  });

  @override
  State<MovieListItem> createState() => _MovieListItemState();
}

class _MovieListItemState extends State<MovieListItem> {
  late FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode(debugLabel: 'movie_list_item_focus_node_${widget.movie.title}');
    _focusNode.addListener(_onFocusChanged);
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChanged);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: widget.autoFocus,
      focusNode: _focusNode,
      child: AspectRatio(
        aspectRatio: 9 / 16,
        child: Column(
          children: [
            Expanded(
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  border: _focusNode.hasFocus
                      ? Border.all(
                          color: Colors.amber,
                          width: 2,
                        )
                      : null,
                ),
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 200),
                child: SizedBox(
                  width: 200,
                  child: Image.network(
                    widget.movie.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              widget.movie.title,
              style: const TextStyle(color: Colors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  void _onFocusChanged() => setState(() {});
}
