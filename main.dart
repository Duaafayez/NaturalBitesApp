import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Natural Bites',
    theme: ThemeData(fontFamily: 'Cabin'),
    home: NaturalBites(),
  ));
}

class NaturalBites extends StatelessWidget {
  const NaturalBites({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://i.postimg.cc/Wznq2yFb/Splash-screen.png"), // TEMPORARY BACKGROUND, CHANGE TO ADOBE XD BG
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            SizedBox(
              height: 400,
              child: Center(
                child: AnimatedOpacity(
                  opacity: 1.0,
                  duration: const Duration(milliseconds: 1500),
                  // child: RichText(
                  //   text: TextSpan(
                  //       text: 'NATURAL',
                  //       style: TextStyle(
                  //           color: Colors.lightGreenAccent,
                  //           fontSize: 40,
                  //           fontWeight: FontWeight.bold),
                  //       children: [
                  //         TextSpan(
                  //           text: ' BITES',
                  //           style: TextStyle(color: Colors.black54, fontSize: 40),
                  //         ),
                  //         TextSpan(
                  //           text: '\n                           Healthy & Fresh',
                  //           style: TextStyle(color: Colors.black54, fontSize: 15),
                  //         )
                  //       ])
                  // ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(90.0),
              child: Container(
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NaturalBitesMenu()),
                    );
                  },
                  child: Text('Proceed',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Cabin',
                        color: Colors.black54,
                      )),
                  backgroundColor: Colors.white70,
                ),
                width: 250,
                height: 100,
              ),
            )
          ])),
    );
  }
}

class NaturalBitesMenu extends StatelessWidget {
  const NaturalBitesMenu({Key? key}) : super(key: key);

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // here the desired height
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey,
          ),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 65, 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Center(
                    child: Text(
                      '      Menu',
                      style: TextStyle(
                        fontFamily: 'cabin',
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.home),
          backgroundColor: Colors.grey,
        ),
        width: 75,
        height: 100,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 55,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 30,
          color: Colors.white,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: IconButton(
                    color: Colors.lightGreenAccent,
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(250, 0, 0, 0),
                  child: IconButton(
                    color: Colors.grey,
                    tooltip: 'Account',
                    icon: const Icon(Icons.account_circle_rounded),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NaturalBitesProfile()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: 500,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i.postimg.cc/Xqp6JGXG/01.png"), // TEMPORARY BACKGROUND, CHANGE TO ADOBE XD BG
            fit: BoxFit.cover,
          ),
        ),
        // this is temporary, place adobe xd background here <---
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      height: 40,
                      child: Icon(Icons.search),
                    ),
                  ),
                  SizedBox(
                    width: 275,
                    height: 30,
                    child: FloatingActionButton(
                      child: Text('Search..', style: TextStyle(color: Colors.black54,),),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        onPressed: () {

                        },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(150.0),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image(
                            image: NetworkImage(
                                'https://images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg'),
                            width: 120,
                            height: 100,
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            text: '   Food',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: '\n      10 Items',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 13),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                width: 300,
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(150.0),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image(
                            image: NetworkImage(
                                'https://static.onecms.io/wp-content/uploads/sites/19/2018/11/06/MR_Thanksgiving_004-2000.jpg'),
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            text: '   Soups',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: '\n      N Items',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 13),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                width: 300,
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(150.0),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image(
                            image: NetworkImage(
                                'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/dessert-main-image-molten-cake-0fbd4f2.jpg?quality=90&resize=500,454'),
                            width: 88,
                            height: 76,
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            text: '   Desserts',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: '\n      10 Items',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 13),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                width: 300,
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(150.0),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image(
                            image: NetworkImage(
                                'https://www.seekpng.com/png/small/339-3395108_logo-promotion-png-promotion-stamp-transparent-logo.png'),
                            width: 90,
                            height: 80,
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            text: '   Promotions',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: '\n      10 Items',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 13),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                width: 300,
                height: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NaturalBitesProfile extends StatelessWidget {
  const NaturalBitesProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // here the desired height
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey,
          ),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 65, 0),
            child: Center(
              child: Text(
                'Profile',
                style: TextStyle(
                  fontFamily: 'cabin',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.home),
          backgroundColor: Colors.grey,
        ),
        width: 75,
        height: 100,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 55,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 30,
          color: Colors.white,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: IconButton(
                    color: Colors.grey,
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NaturalBitesMenu()),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(250, 0, 0, 0),
                  child: IconButton(
                    color: Colors.lightGreenAccent,
                    tooltip: 'Favorite',
                    icon: const Icon(Icons.account_circle_rounded),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NaturalBitesProfile()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i.postimg.cc/Xqp6JGXG/01.png"), // TEMPORARY BACKGROUND, CHANGE TO ADOBE XD BG
            fit: BoxFit.cover,
          ),
        ),
        width: 1000,
        height: 600,
        child: Column(
          children: [
            SizedBox(
              width: 1000,
              height: 50,
            ),
            Center(
              child: Image.network(
                'https://media.giphy.com/media/zkckH1NdA42eS3ciMV/giphy.gif',
                width: 85,
                height: 85,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Change name',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Change address',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Edit cart',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
