import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zomato/src/widget/bottomSheetWidget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: followButton(),
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              color: Colors.black.withOpacity(0.8),
            ),
            clipper: GetClipper(),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: MediaQuery.of(context).size.height / 6.0,
            // left: 76.0,
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/profile.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(80.0),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5.0,
                            color: Colors.black,
                            offset: Offset(5.0, 6.0),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 20.0,
                      right: 20.0,
                      child: InkWell(
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 28.0,
                        ),
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: ((builder) => BottomShhetWidget()));
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 50.0,
                    ),
                    Text(
                      "Mc Calvo do Rodo",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                      child: Icon(
                        Icons.create,
                        size: 18.0,
                        color: Colors.blue,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 50.0,
                    ),
                    Text(
                      "MUsico, Compositor, diretor, Programador, Presidente do Bostil",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                      child: Icon(
                        Icons.create,
                        size: 18.0,
                        color: Colors.blue,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Divider(
                  height: 30.0,
                  color: Colors.black,
                ),
                Container(
                  width: 350.0,
                  height: 60.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "100000000000000",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            "Seguidores",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        width: 70.0,
                        color: Colors.black,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "Só Deus",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            "Seguindo",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        width: 70.0,
                        color: Colors.black,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "30",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            "Post",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 20.0,
                  color: Colors.black,
                ),
                Container(
                  color: Colors.lightGreen,
                  width: MediaQuery.of(context).size.width,
                  height: 130.0,
                  child: Card(
                    // color: Colors.amber,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Sobre",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue,
                            ),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "enviado por Deus para salva o Bananil dos corruptos e malfeitores.",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height / 2.2);
    path.lineTo(size.width + 125.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
