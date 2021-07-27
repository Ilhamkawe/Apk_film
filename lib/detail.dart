import 'package:apk_film/model/moviemodel.dart';
import 'package:flutter/material.dart';
import 'widget/favoritebutton.dart';

class MovieDetail extends StatelessWidget {
  final MovieModel movie;
  const MovieDetail({Key key, @required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double heightLayout = MediaQuery.of(context).size.height;
    final double widthLayout = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    widthLayout <= 600 ? movie.image : movie.webImg,
                    width: widthLayout,
                    height: 540,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 540,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.black.withOpacity(1),
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.7),
                      ], begin: Alignment.bottomCenter, end: Alignment.center),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        FavoriteButton()
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  movie.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Text(
                            "${movie.rating}/10",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  movie.description,
                  style: TextStyle(
                      color: Colors.white, fontSize: 17, wordSpacing: 5),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: movie.imageList.map((e) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(e)),
                      );
                    }).toList()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
