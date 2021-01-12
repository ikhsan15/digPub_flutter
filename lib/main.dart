import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Digital Publishing',
        theme: ThemeData(
            // primarySwatch: Colors.blue,
            primaryColor: Color(0xFF6b9531)),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Gema Insani Digital';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              centerTitle: true,
              background: Image.asset(
                "assets/images/gi_digital2.png",
                width: 30,
                height: 30,
                // fit: BoxFit.fill,
              ),
            ),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
            ],
          ),
          SliverFillRemaining(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            color: Colors.red,
                            child: Column(
                              children: [
                                Text(
                                  "GEMA INSANI DIGITAL",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "Islamic Digital Book Publisher",
                                  style: TextStyle(fontSize: 10),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        "assets/images/Google-Play.png",
                                        width: 80,
                                        height: 40,
                                      ),
                                    ),
                                    Container(
                                      child: Image.asset(
                                        "assets/images/Google-Play-Books.png",
                                        width: 80,
                                        height: 40,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            color: Colors.purple,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "assets/images/mockup-mobile.png",
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                Flexible(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.amber,
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.blue,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
