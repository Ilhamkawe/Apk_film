import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
            print(isFavorite);
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
          color: Colors.red,
          size: 30,
        ));
  }
}
