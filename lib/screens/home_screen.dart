import 'package:cinemag/widgets/nowplaying_carousel.dart';
import 'package:cinemag/widgets/popular_carousel.dart';
import 'package:cinemag/widgets/tv_carousel.dart';
import 'package:cinemag/widgets/upcoming_carousel.dart';
import 'package:cinemag/widgets/upcoming_carouselSlider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Discover',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'BentonSans',
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,
                    letterSpacing: 1.2,
                  ),
                ),
                Icon(
                  Icons.search,
                  size: 25.0,
                  color: Colors.yellow[900],
                ),
              ],
            ),
            SizedBox(height: 10.0),
            UpcomingCarouselSlider(),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'TV',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'BentonSans',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    letterSpacing: 1.2,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.yellow[900],
                    fontFamily: 'BentonSans',
                    fontSize: 15.0,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            TVCarousel(),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Trending',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'BentonSans',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    letterSpacing: 1.2,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.yellow[900],
                    fontFamily: 'BentonSans',
                    fontSize: 15.0,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Upcoming(),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Popular',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'BentonSans',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    letterSpacing: 1.2,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.yellow[900],
                    fontFamily: 'BentonSans',
                    fontSize: 15.0,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Discover(),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Must Watch',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'BentonSans',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    letterSpacing: 1.2,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.yellow[900],
                    fontFamily: 'BentonSans',
                    fontSize: 15.0,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            MovieCarousel(),
          ],
        ),
      ),
    );
  }
}
