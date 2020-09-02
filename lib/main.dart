import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: HomeScreen(),
  ));
}

class GlobalDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

/// This Widget is the main application widget.
class HomeScreen extends StatelessWidget {
  final appTitle = 'Drawer Demo';
  static const String _title = 'Medical App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-1.0, 0.0),
                end: Alignment(1.0, 0.0),
                colors: [
                  const Color(0xFF6aa6f8),
                  const Color(0xFF1a60be)
                ], // whitish to gray
              ),
            ),
          ),
          // title: Text('Title'),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: MyStatelessWidget(),
        drawer: GlobalDrawer(),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class ProfileRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.0, 0.0),
              end: Alignment(1.0, 0.0),
              colors: [
                const Color(0xFF6aa6f8),
                const Color(0xFF1a60be)
              ], // whitish to gray
            ),
          ),
        ),
        // title: Text('Title'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.0, 0.0),
              end: Alignment(1.0, 0.0),
              colors: [
                const Color(0xFF6aa6f8),
                const Color(0xFF1a60be)
              ], // whitish to gray
            ),
          ),
          alignment: Alignment.center, // where to position the child
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 75.0,
                ),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20.0,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      transform: Matrix4.translationValues(0.0, -75.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              MaterialButton(
                                splashColor: Colors.white,
                                onPressed: () {},
                                color: Color(0xFF4894e9),
                                textColor: Colors.white,
                                child: Icon(
                                  Icons.phone,
                                  size: 30,
                                ),
                                padding: EdgeInsets.all(16),
                                shape: CircleBorder(),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 10.0,
                                ),
                                child: Text(
                                  'Consultation',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xFF6f6f6f),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 70,
                                backgroundImage:
                                    AssetImage("assets/doctors/doctor-3.jpg"),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 10.0,
                                ),
                                child: Text(
                                  'Doctor Lookup',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xFF6f6f6f),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                color: Color(0xFF4894e9),
                                highlightColor: Color(0xFFFFFFFF),
                                textColor: Colors.white,
                                child: Icon(
                                  Icons.toc,
                                  size: 30,
                                ),
                                padding: EdgeInsets.all(16),
                                shape: CircleBorder(),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 10.0,
                                ),
                                child: Text(
                                  'Resources',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xFF6f6f6f),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Material topDoctors(String doctorName, String doctorPractice,
    String doctorReviewScore, String doctorProfileImagePath, context) {
  return Material(
    color: const Color(0xFFFFFFFF),
    child: Container(
      margin: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        bottom: 10.0,
      ),
      child: Card(
        elevation: 3.0,
        child: new InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileRoute()),
            );
          },
          child: Container(
            child: Align(
              alignment: FractionalOffset.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    new Container(
                      margin: EdgeInsets.only(
                        right: 20.0,
                      ),
                      width: 70.0,
                      height: 70.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage(
                            doctorProfileImagePath,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: FractionalOffset.centerLeft,
                            child: Text(
                              doctorName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xFF6f6f6f),
                              ),
                            ),
                          ),
                          Align(
                            alignment: FractionalOffset.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 5.0,
                              ),
                              child: Text(
                                doctorPractice,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF9f9f9f),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: FractionalOffset.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 5.0,
                              ),
                              child: Text(
                                '⭐  ' + doctorReviewScore,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Color(0xFF6f6f6f),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ), // other widget
        ),
      ),
    ),
  );
}

Material medicalCategories(String categoryName, String categoryDoctorCount,
    String categoryIconPath, context) {
  return Material(
    color: const Color(0xFFFFFFFF),
    child: Container(
      margin: const EdgeInsets.only(
        left: 20.0,
        right: 0.0,
      ),
      width: 130,
      child: Card(
        elevation: 3.0,
        child: new InkWell(
          onTap: () {},
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 5.0,
                          bottom: 12.5,
                        ),
                        child: Image.asset(
                          categoryIconPath,
                          height: 60,
                          width: 60,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    categoryName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF6f6f6f),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 3.0,
                    ),
                    child: Text(
                      categoryDoctorCount + ' Doctors',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xFF9f9f9f),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), // other widget
        ),
      ),
    ),
  );
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1.0, 0.0),
            end: Alignment(1.0, 0.0),
            colors: [
              const Color(0xFF6aa6f8),
              const Color(0xFF1a60be)
            ], // whitish to gray
          ),
        ),
        alignment: Alignment.center, // where to position the child
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 15.0,
                left: 20.0,
                right: 20.0,
                bottom: 20.0,
              ),
              child: Row(
                children: [
                  new Container(
                    margin: EdgeInsets.only(
                      right: 40.0,
                    ),
                    width: 70.0,
                    height: 70.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image:
                            new NetworkImage("https://i.imgur.com/iQkzaTO.jpg"),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: FractionalOffset.centerLeft,
                          child: Text(
                            'Welcome back, John!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Align(
                          alignment: FractionalOffset.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 5.0,
                            ),
                            child: Text(
                              'How can we help you today?',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 40.0,
              ),
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20.0,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              MaterialButton(
                                splashColor: Colors.white,
                                onPressed: () {},
                                color: Color(0xFF4894e9),
                                textColor: Colors.white,
                                child: Icon(
                                  Icons.phone,
                                  size: 30,
                                ),
                                padding: EdgeInsets.all(16),
                                shape: CircleBorder(),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 10.0,
                                ),
                                child: Text(
                                  'Consultation',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xFF6f6f6f),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                color: Color(0xFF4894e9),
                                highlightColor: Color(0xFFFFFFFF),
                                textColor: Colors.white,
                                child: Icon(
                                  Icons.people,
                                  size: 30,
                                ),
                                padding: EdgeInsets.all(16),
                                shape: CircleBorder(),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 10.0,
                                ),
                                child: Text(
                                  'Doctor Lookup',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xFF6f6f6f),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                color: Color(0xFF4894e9),
                                highlightColor: Color(0xFFFFFFFF),
                                textColor: Colors.white,
                                child: Icon(
                                  Icons.toc,
                                  size: 30,
                                ),
                                padding: EdgeInsets.all(16),
                                shape: CircleBorder(),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 10.0,
                                ),
                                child: Text(
                                  'Resources',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xFF6f6f6f),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10.0,
                      left: 20.0,
                      right: 15.0,
                      bottom: 15.0,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Categories',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color(0xFF6f6f6f),
                        ),
                      ),
                    ),
                  ), //Categories Title
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20.0,
                      right: 15.0,
                      bottom: 15.0,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.',
                        style: TextStyle(
                          color: Color(0xFF9f9f9f),
                        ),
                      ),
                    ),
                  ), //Categories Title Desc
                  Container(
                    color: const Color(0xFFFFFFFF),
                    height: 160,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        medicalCategories("Cardiology", "41",
                            "assets/icons/electrocardiogram.png", context),
                        medicalCategories("Surgery", "45",
                            "assets/icons/medical-record.png", context),
                        medicalCategories("Dental", "29",
                            "assets/icons/caduceus-symbol.png", context),
                        medicalCategories(
                            "Vision", "35", "assets/icons/male.png", context),
                        medicalCategories(
                            "Other", "50+", "assets/icons/file.png", context),
                      ],
                    ),
                  ), //Categories Widget
                  Container(
                    margin: const EdgeInsets.only(
                      top: 30.0,
                      left: 20.0,
                      right: 15.0,
                      bottom: 15.0,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Top Doctors',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color(0xFF6f6f6f),
                        ),
                      ),
                    ),
                  ), // Top Doctors
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20.0,
                      right: 15.0,
                      bottom: 15.0,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.',
                        style: TextStyle(
                          color: Color(0xFF9f9f9f),
                        ),
                      ),
                    ),
                  ), // Top Doctors Description
                  Container(
                    color: const Color(0xFFFFFFFF),
                    child: Column(
                      children: <Widget>[
                        topDoctors("Dr. Reed Richards", "Cardiology", "4.8",
                            "assets/doctors/doctor-1.jpg", context),
                        topDoctors("Dr. Reed Richards", "Cardiology", "5.0",
                            "assets/doctors/doctor-2.jpg", context),
                        topDoctors("Prof. Charles Xavier", "Dental Surgery",
                            "4.9", "assets/doctors/doctor-3.jpg", context),
                        topDoctors("Dr. Otto Octavius", "General Surgery",
                            "4.2", "assets/doctors/doctor-4.jpg", context),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20.0,
                            right: 20.0,
                            bottom: 20.0,
                          ),
                          child: new OutlineButton(
                            color: Colors.transparent,
                            splashColor: Color(0xFF4894e9),
                            padding: EdgeInsets.all(10),
                            onPressed: () {
                              print('View All Doctors Clicked');
                            },
                            textColor: Color(0xFF4894e9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'View All Doctors',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //Categories Widget
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}