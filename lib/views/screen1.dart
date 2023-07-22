import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_ui/controllers/screen1_controller.dart';
import 'package:practice_ui/views/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    Screen1Controller controller = Get.put(Screen1Controller());

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black),
        child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.shifting,
            backgroundColor: Colors.black,
            selectedItemColor: const Color.fromARGB(255, 202, 34, 22),
            currentIndex: 1,
            items: const [
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.play_circle_rounded,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.add_card_outlined, color: Colors.white),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.category, color: Colors.white),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.shopping_bag_rounded, color: Colors.white),
              ),
            ]),
      ),
      backgroundColor: const Color.fromARGB(221, 27, 19, 19),
      appBar: AppBar(
        leading: const Icon(Icons.list_rounded),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Watch'),
      ),
      body: Column(
        children: [
          Container(
            height: 0.48 * height,
            width: double.infinity,
            color: const Color.fromARGB(255, 18, 11, 11),
            child: Image.asset('assets/bg.jpg', fit: BoxFit.cover),
          ),
          SizedBox(
            height: 0.01 * height,
          ),
          Padding(
            padding: EdgeInsets.only(left: 0.06 * width),
            child: Container(
              height: 0.3 * height,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Watch Movies',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 0.05 * height,
                      ),
                    ],
                  ),
                  Obx(
                    () => Expanded(
                        child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.movieData.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Screen2(
                                      overview:
                                          controller.movieData[index].overview,
                                      duration: '2 hr 09 min',
                                      releaseDate: '2017 - Adventure',
                                      coverimage: controller
                                          .movieData[index].backdropPath,
                                      poster: controller
                                          .movieData[index].posterPath,
                                      title: controller.movieData[index].title
                                          .toString()),
                                ));
                          },
                          child: SizedBox(
                            // color: Colors.yellow,
                            height: 0.4 * height,
                            width: 0.3 * width,
                            child: Column(
                              children: [
                                Container(
                                  height: 0.2 * height,
                                  decoration: BoxDecoration(
                                      //color: Colors.deepOrange,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                    controller.movieData[index].posterPath,
                                  ))),
                                ),
                                Container(
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    controller.movieData[index].title
                                        .toString(),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
