import 'package:flutter/material.dart';
import 'package:flutter_project/extensions/nav.dart';
import 'package:flutter_project/projectkh/home_screen.dart';
import 'package:flutter_project/service/database.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Database().getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return InkWell(
            child: GridView.builder(
              itemCount: snapshot.data!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                var city = snapshot.data![index];
                return Card(
                  child: Column(
                    children: [Image.network(city.photo!), Text(city.city!)],
                  ),
                );
              },
            ),
            onTap: () => context.push(HomeScreen()),
          );
        },
      ),
    );
  }
}
