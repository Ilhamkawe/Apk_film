class MovieModel {
  String title;
  String description;
  String genre;
  String releaseYear;
  String image;
  String webImg;
  int rating;
  List<String> imageList;

  MovieModel(
      {this.title,
      this.description,
      this.genre,
      this.releaseYear,
      this.image,
      this.webImg,
      this.rating,
      this.imageList});
}

var movieList = [
  MovieModel(
      title: "Boruto",
      description:
          "Several years after the end of the Shinobi War, Naruto's son Boruto is about to enter the Chûnin exams alongside Sarada Uchiha and the mysterious Mitsuki.",
      genre: "Fantasy - Adventure",
      releaseYear: '2015',
      image: 'images/boruto.jpg',
      webImg: 'images/boruto.jpg',
      rating: 10,
      imageList: [
        'https://wallpaper.dog/large/17114722.jpg',
        'https://wallpaperaccess.com/full/456868.jpg',
        'https://c4.wallpaperflare.com/wallpaper/525/897/284/uzumaki-boruto-uchiha-sarada-mitsuki-naruto-wallpaper-preview.jpg'
      ]),
  MovieModel(
      title: "Eureka Seven",
      description:
          "Renton, a young rebel fighter in bio-armor who's trying to save his best friend, Eureka, who was mysteriously kidnapped.",
      genre: "Mecha - Adventure",
      releaseYear: '2005',
      image: 'images/e7.jpg',
      webImg: 'images/web/e72.jpg',
      rating: 10,
      imageList: [
        'https://wallpaperaccess.com/full/188933.jpg',
        'https://www.kibrispdr.org/data/eureka-seven-wallpaper-1.jpg',
        'https://wallpaperaccess.com/full/188928.jpg'
      ]),
  MovieModel(
      title: "Dota2 : Dragonblood",
      description:
          "Set in a fantasy world, the story follows a Dragon Knight, Davion who hunts dragons to make the world a safer place.",
      genre: "Fantasy - Adventure",
      releaseYear: '2021',
      image: 'images/Dragonblood.jpg',
      webImg: 'images/web/Dragonblood2.jpg',
      rating: 10,
      imageList: [
        'https://wallpapercave.com/wp/wp8932459.jpg',
        'https://cinemags.co.id/wp-content/uploads/2021/02/DOTA-date-announcement_Thumb_16x9.jpg',
        'https://i.pinimg.com/originals/7d/89/4f/7d894f60b62218ae895f145cf564365e.jpg'
      ]),
  MovieModel(
      title: "OP : Strong World",
      genre: "Adventure",
      description:
          "Monkey D. Luffy and his crew must stop Shiki from carrying out his plans.",
      releaseYear: '2009',
      image: 'images/opstrrongworld.jpg',
      webImg: 'images/web/opstrrongworld2.jpg',
      rating: 9,
      imageList: [
        'https://i.pinimg.com/originals/da/30/88/da3088a284b7c2438b8c46ebc8cc4644.jpg',
        'https://wallpaperaccess.com/full/4064436.png',
        'https://3.bp.blogspot.com/-gpOxplLqxzA/V-c10F2D08I/AAAAAAAAByE/zOJtf2nAK8AK__Zj2wqfanbC7whjgxdRwCLcB/s1600/one-piece-hd-wallpaper-5.png'
      ]),
];
