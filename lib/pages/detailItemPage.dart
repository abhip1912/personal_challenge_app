import 'package:flutter/material.dart';

class DetailItemPage extends StatelessWidget {
  const DetailItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Text(product.title),
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 500,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("MERATHON RUNNING APP"),
              background: Hero(
                tag: 'merathon',
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/runner.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New group starts",
                          style: TextStyle(
                            color: Colors.deepPurple,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "01.02.2021",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Days",
                          style: TextStyle(
                            color: Colors.deepPurple,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "28",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Participents",
                          style: TextStyle(
                            color: Colors.deepPurple,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "15",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 800,
              decoration: BoxDecoration(
                  color: Colors.deepPurple[600],
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(90))),
            ),
          ])),
        ],
      ),
    );
  }
}
