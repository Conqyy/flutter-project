import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors%20copy.dart';
import 'package:flutter_project/data/data.dart';
import 'package:flutter_project/data/global_data.dart';
import 'package:flutter_project/extensions/screensize.dart';
import 'package:flutter_project/models/cities_model.dart';

class QassimScreen extends StatelessWidget {
  const QassimScreen({super.key});
  @override
  Widget build(BuildContext context) {
    for (var element in qassimData) {
      qassimList.add(City.fromjson(element));
    }

    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text(
          "معالم القصيم",
          style: TextStyle(
            color: QassimColors.textColor,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: QassimColors.appBarColor,
      ),
      backgroundColor: QassimColors.scaffoldColor,
      //Body
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                //Size and view
                padding: const EdgeInsets.symmetric(horizontal: 8),
                margin: const EdgeInsets.only(top: 30),
                width: context.screenWidth,
                height: context.screenHeight * 0.17,
                decoration: BoxDecoration(
                  color: QassimColors.containerColor,
                  border: Border.all(color: QassimColors.borderColor, width: 7),
                  borderRadius: BorderRadius.circular(40),
                ),
                //Contains
                child: Column(
                  children: [
                    Text(
                      "${qassimList[index].name}",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: QassimColors.textColor,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //image
                        Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: QassimColors.borderColor,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                              image: AssetImage(qassimList[index].image!),
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        //discerption
                        Container(
                          width: 200,
                          height: 200,
                          child: Text(
                            "${qassimList[index].description}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: QassimColors.textColor,
                            ),
                          ),
                        ),
                        //button
                        ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder:
                            //   ),
                            // );
                          },
                          child: Text("الموقع"),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
