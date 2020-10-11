import 'package:flutter/material.dart';

class CardGame extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CardGameState();
  }
}

class CardGameState extends State<CardGame> {
  List<Widget> cardList = new List();

  void removeCards(index) {
    setState(() {
      cardList.removeAt(index);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cardList = _generateCards();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Text('CARD GAME',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  fontFamily: 'sans-serif-light',
                  color: Colors.black)),
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
        ),
        backgroundColor: Color.fromRGBO(48, 48, 48, 1),
        body: Stack(alignment: Alignment.center, children: cardList));
  }

  List<Widget> _generateCards() {
    List<ObjectCard> objectCard = new List();
    objectCard.add(
      ObjectCard("Syringe",
          "https://www.valleyvet.com/swatches/42021_L_vvs_000.jpg", 70.0),
    );
    objectCard.add(
      ObjectCard(
          "Bed ",
          "https://cdn.linak.com/-/media/images/applications/main/hospital-beds-application.ashx?bc=white&as=0&h=750&w=750&quality=75&hash=56C9855E54EF6302EEB54ACB0220265FD6E62EC1",
          80.0),
    );
    objectCard.add(ObjectCard(
        "Wheelchair",
        "https://images-na.ssl-images-amazon.com/images/I/51vqwx-cU8L._SX466_.jpg",
        90.0));
    objectCard.add(ObjectCard(
        "Mask",
        "https://www.bhphotovideo.com/images/images2500x2500/gerimedix_13_188_disposable_3_ply_isolation_facemasks_1559533.jpg",
        100.0));
    objectCard.add(
      ObjectCard(
          "Medication",
          "https://firstaidforlife.org.uk/wp-content/uploads/2018/03/poisoning-pill-bottle.jpg",
          110.0),
    );
    List<Widget> cardList = new List();

    for (int x = 0; x < 5; x++) {
      cardList.add(
        Positioned(
          top: objectCard[x].topMargin - 50,
          child: Draggable(
              axis: Axis.horizontal,
              onDragEnd: (drag) {
                removeCards(x);
              },
              childWhenDragging: Container(),
              feedback: GestureDetector(
                onTap: () {
                  print("Hello All");
                },
                child: Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  // color: Color.fromARGB(250, 112, 19, 179),
                  child: Column(
                    children: <Widget>[
                      Hero(
                          tag: "imageTag",
                          child: Image.network(
                            objectCard[x].cardImage,
                            width: 320.0,
                            height: 440.0,
                            fit: BoxFit.fill,
                          )),
                      Container(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Text(
                          objectCard[x].cardTitle,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromRGBO(48, 48, 48, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return CardDetails(objectCard[x].cardImage, x);
                    }));
                  },
                  child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      // color: Color.fromARGB(250, 112, 19, 179),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0)),
                              image: DecorationImage(
                                  image: NetworkImage(objectCard[x].cardImage),
                                  fit: BoxFit.fill),
                            ),
                            height: 480.0,
                            width: 320.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Text(
                              objectCard[x].cardTitle,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color.fromRGBO(48, 48, 48, 1),
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              )),
        ),
      );
    }
    return cardList;
  }
}

class ObjectCard {
  String cardTitle;
  String cardImage;
  double topMargin;

  ObjectCard(String title, String imagePath, double marginTop) {
    cardTitle = title;
    cardImage = imagePath;
    topMargin = marginTop;
  }
}

class CardDetails extends StatefulWidget {
  int index;
  String imageAddress;
  String placeDetails;

  CardDetails(this.imageAddress, this.index);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CardDetailsState(imageAddress, index);
  }
}

class CardDetailsState extends State<CardDetails> {
  int index;
  String imageAddress;
  String placeDetails;

  CardDetailsState(this.imageAddress, this.index);
  String title;
  void initState() {
    super.initState();
    setState(() {
      getData(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var data = index.toString();
    print(index);
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 800.0,
                  width: double.infinity,
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 500.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(imageAddress),
                        fit: BoxFit.fill,
                      )),
                ),
                Positioned(
                  top: 420.0,
                  left: 10.0,
                  right: 10.0,
                  child: Material(
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: 380.0,
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(20.0)
                          ),
                      padding: EdgeInsets.only(
                        left: 20.0,
                        right: 10.0,
                        top: 20.0,
                      ),
                      child: Column(
                        children: [
                          Text(
                            placeDetails,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20.0, fontStyle: FontStyle.italic),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(100.0),
                              child: FlatButton(
                                color: Colors.blue,
                                textColor: Colors.white,
                                disabledColor: Colors.grey,
                                disabledTextColor: Colors.black,
                                padding: EdgeInsets.all(8.0),
                                splashColor: Colors.blueAccent,
                                onPressed: () {
                                  /*...*/
                                },
                                child: Column(
                                  children: [
                                    Icon(Icons.volume_up_rounded),
                                    Text("Listen")
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  getData(value) {
    switch (value) {
      case 0:
        placeDetails = 'A syringe is a medical tool.';
        break;

      case 1:
        placeDetails = 'A bed allows people to sleep.';
        break;

      case 2:
        placeDetails = 'A wheelchair helps people move.';
        break;

      case 3:
        placeDetails = 'A mask protects other people.';
        break;

      case 4:
        placeDetails = 'Medication helps people feel better.';
        break;
    }
  }
}
