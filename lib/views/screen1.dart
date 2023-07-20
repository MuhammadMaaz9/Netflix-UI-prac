import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_ui/controllers/screen1_controller.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

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
      body: Obx(
        () => Column(
          children: [
            Container(
              height: 0.4 * height,
              width: double.infinity,
              color: Colors.white,
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
            Expanded(
              child: ListView.builder(
                itemCount: controller.movieData.length,
                itemBuilder: (context, index) {
                  //final movie = controller.movieData.length;
                  return ListTile(
                    title: Text(
                      controller.movieData[index].title.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),
            )
          ],
        ),
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
