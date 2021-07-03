import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UpcomingCarouselSlider extends StatefulWidget {
  @override
  _UpcomingCarouselSliderState createState() => _UpcomingCarouselSliderState();
}

class _UpcomingCarouselSliderState extends State<UpcomingCarouselSlider> {
  var apiUrl =
      "https://api.themoviedb.org/3/movie/upcoming?api_key=3fca9e88734653353187d7adbdafc504&language=en-US&page=1";
  var configUrl =
      "https://api.themoviedb.org/3/configuration?api_key=3fca9e88734653353187d7adbdafc504";

  var secureBaseUrl;

//Image dimensions
  var backdropSize = "w1280";

  var backdropPath;

//Stores the concatenated paths of the Urls
  var backdropImage;

  Future getBaseurl() async {
    http.Response response = await http.get(configUrl);
    var baseData = json.decode(response.body);

    setState(() {
      this.secureBaseUrl = baseData["images"]["secure_base_url"].toString();
    });
  }

  Future getMovieData() async {
    http.Response response = await http.get(apiUrl);
    var movieInfo = json.decode(response.body);

    setState(() {
      this.backdropPath = movieInfo["results"];
      this.backdropImage = secureBaseUrl + backdropSize;
    });
  }

  @override
  void initState() {
    super.initState();
    this.getBaseurl();
    this.getMovieData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          initialPage: 0,
          autoPlay: true,
          reverse: false,
          autoPlayInterval: Duration(seconds: 5),
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          enableInfiniteScroll: true,
          autoPlayCurve: Curves.easeInOut,
        ),
        itemCount: backdropPath == null ? 0 : backdropPath.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Colors.yellow[900],
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: CachedNetworkImage(
                  imageUrl: backdropImage.toString() +
                      backdropPath[index]["backdrop_path"].toString(),
                  width: MediaQuery.of(context).size.width,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}