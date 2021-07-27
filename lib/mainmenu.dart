import 'package:flutter/material.dart';
import 'widget/favoritebutton.dart';
import 'model/moviemodel.dart';
import 'detail.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  var movieInfo = {
    "title": movieList[0].title,
    "desc": movieList[0].description,
    "img": movieList[0].image,
    "genre": movieList[0].genre,
    "webImg": movieList[0].webImg,
  };

  @override
  Widget build(BuildContext context) {
    final double heightLayout = MediaQuery.of(context).size.height;
    final double widthLayout = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              widthLayout <= 600 ? movieInfo['img'] : movieInfo['webImg'],
              width: widthLayout,
              fit: BoxFit.cover,
            ),
            Container(
              height: heightLayout,
              width: widthLayout,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black,
                Colors.black,
                Colors.black.withOpacity(1),
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.8),
              ], begin: Alignment.bottomCenter, end: Alignment.center)),
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      child: Container(
                        width: widthLayout,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Explore",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      // padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(6),
                            width: widthLayout,
                            // color: Colors.red,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  movieInfo['title'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  movieInfo['desc'],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  movieInfo['genre'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Popular Movie",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: widthLayout,
                            height: 200,
                            child: ListView.builder(
                              itemCount: movieList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                final MovieModel movie = movieList[index];
                                return InkWell(
                                  onLongPress: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (builder) {
                                      return MovieDetail(
                                        movie: movie,
                                      );
                                    }));
                                  },
                                  onTap: () {
                                    setState(() {
                                      this.movieInfo = {
                                        "title": movie.title,
                                        "desc": movie.description,
                                        "img": movie.image,
                                        "genre": movie.genre,
                                        "webImg": movie.webImg
                                      };
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(movie.image),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
