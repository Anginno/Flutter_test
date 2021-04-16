import 'theme/themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Home extends StatelessWidget {
  final Animation<double> transitionAnimation;

  //CTRL + . To create constructor instantly
  const Home({Key key, this.transitionAnimation}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header = Container(
      //Applies padding inside the title section container
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onBackground,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      //Row starts here
      child: Row(
        children: [
          //First child of row
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Title image
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.network(
                    'https://cdn.britannica.com/87/162987-050-BF64E426/Camelot-Joseph-OBrien-French-Fifteen-charges-Two-1970.jpg',
                  ),
                ),
                //Title text
                Container(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Welcome back, Punter!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    )
                  ),
                ),
              ],
            )
          )
        ],
      )
    );

    //Next Five Item
    Widget nextFiveItem = Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: //Race Item
          Container(
            width: 190,
            margin: const EdgeInsets.only(right: 8.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onBackground,
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.15),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return RacePage(
                        transitionAnimation: animation,
                      );
                    },
                    transitionDuration: const Duration(milliseconds: 300),
                  ),
                );
                },
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.ac_unit,
                            color: Theme.of(context).colorScheme.secondary,
                            size: 24.0,
                            semanticLabel: 'Snow Sports',
                          ),
                          Icon(
                            Icons.favorite,
                            color: Theme.of(context).colorScheme.primary,
                            size: 24.0,
                            semanticLabel: 'heart',
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        padding: const EdgeInsets.all(4.0),
                        width: 70.53,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryVariant,
                          borderRadius: BorderRadius.all(Radius.circular(3.0)),
                        ),
                        child: Text(
                          '01h 25m',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Theme.of(context).colorScheme.onBackground,
                          )
                        ),
                      ),
                      ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          'Canberra',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Theme.of(context).colorScheme.primaryVariant,
                          )
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          'Race 5',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Theme.of(context).colorScheme.secondary,
                          )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );

    //Next Five section
    Widget nextFiveSection = Container(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16),
            child: nextFiveItem,
          ),
          nextFiveItem,
          nextFiveItem,
          nextFiveItem,
          nextFiveItem,
          nextFiveItem,
        ],
      )
    );

    Widget home = ThemeLayout(child: ListView(
          children: [
            header,
            Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text("Next 5",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              )),
            ),
            nextFiveSection,
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Horses",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "SEE ALL",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Theme.of(context).colorScheme.primaryVariant,
                      )
                    ),
                  ),
                ],
              ),
            ),
            nextFiveSection,
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Greyhound",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "SEE ALL",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Theme.of(context).colorScheme.primaryVariant,
                      )
                    ),
                  ),
                ],
              ),
            ),
            nextFiveSection,
          ]
        ), title: 'Home');
        return Container(
          child: home,
        );
  }
}

class RacePage extends StatelessWidget {
  final Animation<double> transitionAnimation;

  const RacePage({Key key, this.transitionAnimation}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget horseItem = Container(
      padding: EdgeInsets.all(16.00),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary.withOpacity(0.3)),
        color: Theme.of(context).colorScheme.onBackground,
      ),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.add_box_rounded,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 8.00),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('2. Moree Dreaming',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Theme.of(context).colorScheme.primaryVariant,
                    fontWeight: FontWeight.bold,
                  )),
                  Text('(9)',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Theme.of(context).colorScheme.secondary,
                  )),
                ],
              ),
              Row(
                children: [
                  Text('J: Ben Thompson',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Theme.of(context).colorScheme.secondary,
                  )),
                  Text('(59.5kg)',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Theme.of(context).colorScheme.secondary,
                  )),
                ],
              ),
              Row(
                children: [
                  Text('T: R L Heathcote',
                  style: TextStyle(
                    fontSize: 12.0,
                      color: Theme.of(context).colorScheme.secondary,
                  )),
                ],
              ),
            ],
          ),
          ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary.withOpacity(0.65)),
                        foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onSurface),
                      ),
                      child: Text('20.00'),
                      onPressed: () {},
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary.withOpacity(0.65)),
                        foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onSurface),
                      ),
                      child: Text('20.00'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
    return AnimatedBuilder(
          animation: transitionAnimation,
          builder: (context, child) {
            return SlideTransition(
            position: Tween<Offset>(
              begin: Offset(1, 0),
              end: Offset(0,0),
            ).animate(transitionAnimation), 
            child: child,
            );
          },
          child: ThemeLayout(
            child: ListView(
            children: [
              TextButton(
                child: Text('Back'),
                onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return Home(
                        transitionAnimation: animation,
                      );
                    },
                    transitionDuration: const Duration(milliseconds: 300),
                  ),
                );
                },
              ),
              Container(
                padding: EdgeInsets.fromLTRB(16, 0, 0, 8),
                child: Text('Runners',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Theme.of(context).colorScheme.primaryVariant,
                )
              ),
              ),
              horseItem,
              horseItem,
              horseItem,
              horseItem,
              horseItem,
            ],
          ), 
          title: 'Canberra (R9)'
    ),
    );
  }
}

class ThemeLayout extends StatelessWidget {
  final Widget child;
  final String title;
  const ThemeLayout({@required this.child, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(this.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Light Mode'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Dark Mode'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: child,
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlueBet',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: Home(),
    );
  }
}

