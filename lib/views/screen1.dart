import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_ui/controllers/screen1_controller.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    Screen1Controller controller = Get.put(Screen1Controller());

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(221, 27, 19, 19),
      appBar: AppBar(
        leading: Icon(Icons.list_rounded),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Watch'),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset('assets/bg.jpg', fit: BoxFit.cover),
            height: 0.48 * height,
            width: double.infinity,
            color: Color.fromARGB(255, 18, 11, 11),
          ),
          SizedBox(
            height: 0.05 * height,
          ),
          Row(
            children: [
              Text(
                'Watch Movies',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Obx(
            () => Expanded(
                child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.movieData.length,
              itemBuilder: (context, index) {
                return Container(
                  // color: Colors.yellow,
                  height: 50,
                  width: 140,
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            //color: Colors.deepOrange,
                            image: DecorationImage(
                                image: NetworkImage(
                          controller.movieData[index].posterPath,
                        ))),
                      ),
                      Container(
                        child: Text(
                          controller.movieData[index].title.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                );
              },
            )),
          )
        ],
      ),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


// ListView.builder(
                //   itemCount: controller.movieData.length,
                //   itemBuilder: (context, index) {
                //     return ListTile(
                //       leading: Image.network(
                //         controller.movieData[index].posterPath,
                //         height: 50,
                //         width: 50,
                //       ),
                //       title: Text(
                //         controller.movieData[index].title.toString(),
                //         style: TextStyle(color: Colors.black),
                //       ),
                //     );
                //   },
                // ),