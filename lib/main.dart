import 'package:flutter/material.dart';
import 'package:test_project/stamp_card_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List<bool> likedStates = List.generate(4, (index) => false);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: SafeArea(
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 33.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F7F7),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(width: 8.0),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.filter_1_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 33.0,
              color: Color.fromARGB(255, 230, 205, 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '2022年 5月 26日（木）',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            ...List.generate(4, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetailsScreen()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    width: 388.0,
                    height: 388.0,
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 186.0,
                            child: Image.network(
                              'https://images.unsplash.com/photo-1588529726892-93b3649b15c3?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ListTile(
                              title: Text(
                                '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                                style: TextStyle(fontSize: 13),
                              ),
                              subtitle: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 25.0,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            color: Colors.yellow.shade50,
                                          ),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Text(
                                                  '介護付き有料老人ホーム',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 10.0,
                                                      color: Colors
                                                          .yellow.shade700),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '5月 31日（水）08 : 00 ~ 17 : 00',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 15, 15, 15),
                                            fontSize: 12),
                                      ),
                                      Text(
                                        '北海道札幌市東雲町3丁目916番地17号',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 34, 34, 34),
                                            fontSize: 12),
                                      ),
                                      Text(
                                        '交通費 300円',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 32, 32, 32),
                                            fontSize: 12),
                                      ),
                                      Text(
                                        '住宅型有料老人ホームひまわり倶楽部',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 156, 155, 155),
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '\¥6,000',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            likedStates[index] =
                                                !likedStates[index];
                                          });
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            likedStates[index]
                                                ? Icons.favorite
                                                : Icons.favorite_border,
                                            color: likedStates[index]
                                                ? Colors.yellow
                                                : Colors.grey,
                                            size: 30.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildBottomNavItem(Icons.search, 0),
            buildBottomNavItem(Icons.business_center_outlined, 1),
            buildBottomNavItem(Icons.chat, 2),
            buildBottomNavItem(Icons.person_outline, 3),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => StampCardDetails()));
        },
        child: Icon(Icons.document_scanner),
        backgroundColor: Colors.yellow,
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }

  Widget buildBottomNavItem(IconData icon, int index) {
    return IconButton(
      icon: Icon(
        icon,
        size: _selectedIndex == index ? 30.0 : 24.0,
        color: _selectedIndex == index ? Colors.yellow : Colors.black,
      ),
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      body: Center(
        child: Text('Details Page Content'),
      ),
    );
  }
}
