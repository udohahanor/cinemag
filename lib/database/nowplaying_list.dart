class PlayingMovies
{
  final String imageUrl;
  final String title;
  final double rating;
  final String genre;
  final String duration;

  PlayingMovies({
    this.imageUrl,
    this.title,
    this.rating,
    this.genre,
    this.duration,
  });

}

final List<PlayingMovies> playingMovies = [
  PlayingMovies(
      imageUrl: 'assets/nowplaying/10daysinsuncity.jpg',
      title: '10 Days in Sun City',
      rating: 4.5,
      genre: 'Drama',
      duration: '98 mins'
  ),
  PlayingMovies(
      imageUrl: 'assets/nowplaying/93days.jpg',
      title: '93 Days',
      rating: 3.0,
      genre: 'Thriller',
      duration: '108 mins'
  ),
  PlayingMovies(
      imageUrl: 'assets/nowplaying/inmycountry.jpg',
      title: 'In My Country',
      rating: 2.5,
      genre: 'Thriller',
      duration: '102 mins'
  ),
  PlayingMovies(
      imageUrl: 'assets/nowplaying/momsatwar.jpg',
      title: 'Mom at War',
      rating: 4.0,
      genre: 'Comedy',
      duration: '112 mins'
  ),
  PlayingMovies(
      imageUrl: 'assets/nowplaying/newmoney.jpg',
      title: 'New Money',
      rating: 2.0,
      genre: 'Drama',
      duration: '97 mins'
  ),
  PlayingMovies(
      imageUrl: 'assets/nowplaying/tatu.jpg',
      title: 'New Money',
      rating: 3.0,
      genre: 'Thriller',
      duration: '100 mins'
  ),
  PlayingMovies(
      imageUrl: 'assets/nowplaying/upnorth.jpg',
      title: 'Upnorth',
      rating: 4.0,
      genre: 'Drama',
      duration: '96 mins'
  ),
];