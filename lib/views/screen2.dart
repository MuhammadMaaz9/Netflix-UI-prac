import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Screen2 extends StatelessWidget {
  String coverimage;
  String poster;
  String title;
  String releaseDate;
  String duration;
  String overview;

  Screen2(
      {super.key,
      required this.coverimage,
      required this.poster,
      required this.title,
      required this.releaseDate,
      required this.duration,
      required this.overview});
  //Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 0.06 * height,
          width: 0.7 * width,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 35, 104, 161),
              borderRadius: BorderRadius.all(Radius.circular(40))),
          child: const Center(
            child: Text(
              'Resume playing',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                  decoration: const BoxDecoration(
                      //Color.fromARGB(255, 227, 169, 82),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.centerRight,
                          colors: [
                    Color.fromARGB(255, 227, 169, 82),
                    Color.fromARGB(255, 227, 169, 82),
                    Color.fromARGB(255, 227, 169, 82),
                    Colors.black,
                    Colors.black,
                  ]))
                  //child: Text('data'),
                  ),
              Container(
                height: 0.35 * height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(coverimage), fit: BoxFit.cover)),
              ),
              Positioned(
                top: 0.27 * height,
                left: 0.06 * width,
                child: Container(
                  height: 0.26 * height,
                  width: 0.33 * width,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(poster))),
                ),
              ),
              Positioned(
                top: 0.36 * height,
                left: 0.43 * width,
                child: Container(
                  height: 0.12 * height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        //maxLines: 2,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            color: Colors.white, fontSize: 0.044 * width),
                      ),
                      Container(
                        height: 0.02 * height,
                        width: 0.1 * width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                        child: const Center(
                          child: Text(
                            '-12',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      RatingBar.builder(
                        itemSize: 0.04 * width,
                        initialRating: 3,
                        minRating: 1,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Text(releaseDate,
                          style: const TextStyle(color: Colors.white)),
                      Text(duration,
                          style: const TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0.54 * height,
                left: 0.06 * width,
                child: const Text('Directed by Jordan Vogt-Roberts',
                    style: TextStyle(color: Colors.white)),
              ),
              Positioned(
                top: 0.57 * height,
                left: 0.06 * width,
                child: Text('The Cast',
                    style: TextStyle(
                        fontSize: 0.044 * width, color: Colors.white)),
              ),
              Positioned(
                  top: 0.61 * height,
                  left: 0.06 * width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/1.jpg',
                        ),
                      ),
                      SizedBox(
                        width: 0.04 * width,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/2.jpg'),
                      ),
                      SizedBox(
                        width: 0.04 * width,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/4.png'),
                      )
                    ],
                  )),
              Positioned(
                  top: 0.68 * height,
                  left: 0.06 * width,
                  child: const Text(
                    'Storyline',
                    style: TextStyle(color: Colors.white),
                  )),
              Positioned(
                top: 0.71 * height,
                left: 0.06 * width,
                child: Container(
                  width: 0.9 * width,
                  height: 0.3 * height,
                  child: Text(
                    overview,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
