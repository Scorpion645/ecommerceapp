// ignore_for_file: prefer_const_constructors

import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/data/data.dart';
import 'package:ecommerceapp/screens/details_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      foregroundImage: AssetImage('assets/me1.PNG'),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/download2.jpg',
                            ),
                            fit: BoxFit.cover)),
                    accountName: Text(
                      'Mohamed Abdelnaby MD.',
                      style: TextStyle(
                          color: AppBarGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    accountEmail: Text('Scorpion645@Gmail.com',
                        style: TextStyle(
                            color: AppBarGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 14))),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('My products'),
                ),
                ListTile(
                  leading: Icon(Icons.question_mark),
                  title: Text('About'),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Log out'),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Divider(
                      color: BTNGreen,
                      thickness: 1,
                    )),
              ],
            ),
            Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text('Developed by Mohamed Abdelnaby © 2022'))
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppBarGreen,
        title: Text('Home'),
        actions: [
          Row(
            children: [
              Stack(children: [
                Positioned(
                  bottom: 25,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '8',
                        style: TextStyle(
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    width: 15,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber),
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.add_shopping_cart))
              ]),
              Padding(
                padding: const EdgeInsets.only(right: 11.0),
                child: Text(
                  '\$ 13',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: GridView.builder(
            itemCount: plants.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 33,
            ),
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(plant: plants[index])));
                },
                child: GridTile(
                  footer: GridTileBar(
                    leading: Text(
                      '  ${plants[index].price}',
                      style: TextStyle(
                        color: AppBarGreen,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: Text(""),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: AppBarGreen,
                        )),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(plants[index].imageUrl,
                          fit: BoxFit.cover)),
                ),
              );
            })),
      ),
    );
  }
}
