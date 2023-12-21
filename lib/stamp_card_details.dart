import 'package:flutter/material.dart';
import 'package:test_project/main.dart';

void main() {
  runApp(StampCardDetails());
}

class StampCardDetails extends StatelessWidget {
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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA8B1FF),
      appBar: AppBar(
        backgroundColor: Color(0xFFA8B1FF),
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF707DF1),
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
        ),
        actions: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              'スタンプカード詳細',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: 60,
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
            ),
            child: IconButton(
              icon: Icon(
                Icons.remove,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                children: [
                  Text(
                    'Mer キッチン',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    '現在の獲得数',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '30',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '個',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          3,
                          (index) => CardWidget(),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'スタンプ獲得履歴',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          buildListTile('スタンプを獲得しました。', '2021 / 11 / 18'),
                          buildListTile('スタンプを獲得しました。', '2021 / 11 / 17'),
                          buildListTile('スタンプを獲得しました。', '2021 / 11 / 16'),
                          buildListTile('スタンプを獲得しました。', '2021 / 11 / 13'),
                          buildListTile('スタンプを獲得しました。', '2021 / 11 / 12'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(String heading, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: Colors.grey,
          height: 29,
        ),
        Text(
          description,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            heading,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317,
      margin: EdgeInsets.only(
          right: 20), // Adjusted margin for spacing between cards
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 8.0,
        child: Container(
          width: 317,
          height: 199,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
          ),
          child: Column(
            children: List.generate(
              3,
              (rowIndex) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: List.generate(
                      5,
                      (colIndex) => Expanded(
                        child: Icon(
                          Icons.verified,
                          color: Color.fromARGB(255, 231, 168, 72),
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
