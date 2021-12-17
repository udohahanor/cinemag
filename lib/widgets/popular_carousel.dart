import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Discover extends StatefulWidget {
  const Discover({Key key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  var apiUrl =
      "https://api.themoviedb.org/3/discover/movie?api_key=3fca9e88734653353187d7adbdafc504&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1";
  var configUrl =
      "https://api.themoviedb.org/3/configuration?api_key=3fca9e88734653353187d7adbdafc504";

  // ignore: prefer_typing_uninitialized_variables
  var secureBaseUrl;

//Image dimensions
  var posterSize = "w780";

  // ignore: prefer_typing_uninitialized_variables
  var posterPath;
  // ignore: prefer_typing_uninitialized_variables
  var rating;

//Stores the concatenated paths of the Urls
  // ignore: prefer_typing_uninitialized_variables
  var posterImage;

  Future getBaseurl() async {
    http.Response response = await http.get(configUrl);
    var baseData = json.decode(response.body);

    setState(() {
      secureBaseUrl = baseData["images"]["secure_base_url"];
    });
  }

  Future getMovieData() async {
    http.Response response = await http.get(apiUrl);
    var movieInfo = json.decode(response.body);

    setState(() {
      posterPath = movieInfo["results"];
      posterImage = secureBaseUrl + posterSize;
    });
  }

  @override
  void initState() {
    super.initState();
    getBaseurl();
    getMovieData();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: posterPath == null ? 0 : posterPath.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.yellow[900],
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: CachedNetworkImage(
                      imageUrl: posterImage.toString() +
                          posterPath[index]["poster_path"].toString(),
                      width: 130.0,
                      height: 200.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 2.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: 130.0,
                  height: 40.0,
                  child: Text(
                    posterPath[index]["title"].toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'BentonSans',
                      fontWeight: FontWeight.w600,
                      fontSize: 13.0,
                      letterSpacing: 1.2,
                      height: 1.5,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ),
              const SizedBox(height: 2.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Icon(
                      Icons.star,
                      size: 20.0,
                      color: Colors.yellow,
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      posterPath[index]["vote_average"].toDouble().toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'BentonSans',
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                        letterSpacing: 1.2,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
