import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/home%20_controller.dart';

class UI extends StatelessWidget {
  UI({Key? key}) : super(key: key);
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          " Getx",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.teal,
                  child: MaterialButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: Text(
                      " add",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
               SizedBox(width:20 ,),
                Container(
                  color: Colors.teal,
                  child: MaterialButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    child: Text(
                      " sub",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Obx(() => Text(
              controller.count.toString(),
              style: TextStyle(color: Colors.black, fontSize: 30),
            )),
          ],
        ),
      ),
    );
  }
}
