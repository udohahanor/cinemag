import 'package:cinemag/database/carousel_list.dart';
import 'package:flutter/material.dart';

class MovieCarousel extends StatefulWidget {
  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    @override
    void dispose() {
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: AspectRatio(
        aspectRatio: 1.7,
        child: PageView.builder(
          itemCount: carousel.length,
          itemBuilder: (context, index) => MovieCard(
            carousels: carousel[index],
          ),
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final Carousel carousels;

  const MovieCard({Key key, this.carousels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: Colors.yellow[900],
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              image: AssetImage(carousels.imageUrl),
              width: 400.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
