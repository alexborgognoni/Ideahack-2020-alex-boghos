import 'dart:core';
import 'package:flutter/material.dart';

class Environment extends StatefulWidget {
  // ------------------------ Environment class variables ---------------------------//
  List<String> titles;
  List<String> infos;
  List<String> images;
  String envName;

  // ------------------------ Environment constructor ---------------------------//
  Environment(this.titles, this.infos, this.images, this.envName);

  // ------------------------ State function ---------------------------//
  @override
  _EnvironmentState createState() =>
      _EnvironmentState(titles, infos, images, envName);
}

class _EnvironmentState extends State<Environment> {
  // ------------------------ class variables ---------------------------//
  List<Widget> cards = [];
  List<String> titles;
  List<String> infos;
  List<String> images;
  String envName;

  // ------------------------ Environment constructor ---------------------------//
  _EnvironmentState(this.titles, this.infos, this.images, this.envName) {
    _EnvCardGenerator(titles, infos, images);
  }

  // ------------------------ EnvCard generator ---------------------------//

  List<Widget> _EnvCardGenerator(
      List<String> titles, List<String> infos, List<String> images) {
    for (int i = 0; i < titles.length; i++) {
      var envCard = EnvCard(titles[i], infos[i], images[i]);
      cards.add(envCard.build(context));
    }
    return cards;
  }

  // ------------------------ Environment Widget builder ---------------------------//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Text('$envName',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  fontFamily: 'sans-serif-light',
                  color: Colors.black)),
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
        ),
        body: PageView(
          //controller: PageController(),
          children: cards,
        ));
  }
}

class EnvCard extends StatelessWidget {
  // ------------------------ class variables ---------------------------//
  String title;
  String info;
  String image;

  // ------------------------ constructor ---------------------------//
  EnvCard(this.title, this.image, this.info);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Image.network(
        '$image',
        width: 400,
        height: 300,
      ),
      Text("$title",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          )),
      Center(
        child: Container(
          margin: EdgeInsets.all(8.0),
          width: 550,
          height: 110,
          //color: Colors.grey,
          decoration: new BoxDecoration(
              color: Colors.grey, //new Color.fromRGBO(255, 0, 0, 0.0),
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(10.0),
                topRight: const Radius.circular(10.0),
                bottomRight: const Radius.circular(10.0),
                bottomLeft: const Radius.circular(10.0),
              )),
          child: Center(child: Text(info)),
        ),
      ),
      Padding(
          padding: EdgeInsets.all(20.0),
          child: FlatButton(
            color: Color.fromRGBO(48, 48, 48, 1),
            textColor: Colors.white,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.grey,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: Colors.grey)),
            onPressed: () {
              /*...*/
            },
            child: Column(
              children: [Icon(Icons.volume_up_rounded), Text("Listen")],
            ),
          ))
    ]));
  }
}
