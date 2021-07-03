class Carousel
{
  String imageUrl;
  String title;
  String rating;
  String genre;
  String duration;

  Carousel({
    this.imageUrl,
    this.title,
    this.rating,
    this.genre,
    this.duration,
  });

}

final List<Carousel> carousel = [
  Carousel(
      imageUrl: 'assets/carousel/callofthewild.jpg',
      title: 'Call Of The Wild',
      rating: 'PG-13',
      genre: 'Adventure, Drama',
      duration: '100 mins'
  ),
  Carousel(
      imageUrl: 'assets/carousel/ipman.jpg',
      title: 'IP Man 4: The Finale',
      rating: 'PG-15',
      genre: 'Action, Biography, Drama, History',
      duration: '107 mins'
  ),
  Carousel(
      imageUrl: 'assets/carousel/istillbelieve.jpg',
      title: 'I Still Believe',
      rating: 'PG-13',
      genre: 'Drama, Music, Romance',
      duration: '116 mins'
  ),
  Carousel(
      imageUrl: 'assets/carousel/softwork.jpg',
      title: 'Soft Work',
      rating: 'PG-15',
      genre: 'Action, Drama, Thriller',
      duration: '115 mins'
  ),
  Carousel(
      imageUrl: 'assets/carousel/sonic.jpg',
      title: 'Sonic The Hedgehog',
      rating: 'PG-13',
      genre: 'Action, Adventure, Comedy, Sci-Fi',
      duration: '99 mins'
  ),
  Carousel(
      imageUrl: 'assets/carousel/thewayback.jpg',
      title: 'The Way Back',
      rating: 'PG-15',
      genre: 'Drama, Sport',
      duration: '108 mins'
  ),
  Carousel(
      imageUrl: 'assets/carousel/whostheboss.jpg',
      title: 'Who\'s The Boss',
      rating: 'PG',
      genre: 'Drama, Comedy',
      duration: '110 mins'
  ),
];