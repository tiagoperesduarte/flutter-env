import 'package:flutter/material.dart';
import 'package:flutterenv/app/pages/home_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Provider.of<HomeController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder<String>(
            future: homeController.getApiUrl(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return CircularProgressIndicator();
              }

              return Text('API URL: ${snapshot.data}');
            },
          ),
        ),
      ),
    );
  }
}
