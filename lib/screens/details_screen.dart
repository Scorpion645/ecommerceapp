import 'package:ecommerceapp/data/data.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class DetailsScreen extends StatefulWidget {
  final Plant plant;

  DetailsScreen({super.key, required this.plant});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppBarGreen,
        title: Text('Details Screen'),
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
                  '13',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              widget.plant.imageUrl,
              height: 350,
              width: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              '\$ ${widget.plant.price}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink[200],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              'New',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 26,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 26,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 26,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 26,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 26,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 32,
                        color: BTNGreen,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Flower shop',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 12),
                  child: Text('Details:',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'asdf asdf asdf sadf as dfas dfas dfasdf asdfasdf dfh rg we ehrt b avsdf sdfvs dfvsdfvafdasdf asdfasf wfet rt rtytrjjtyhr erthcfbfb fgdhdfh dfhdfghdfghfdgh dfghdfghdfghdfg asdfsadf asdf asfdadf sf sdf asdf asd fasdf asdf asdf asdf asdfasf dasdfasdfasdfasdf asdfasdfas asdfasdf asdfasdfasdf qwerqw erqwer qwerq werqwererty rtyr rtyr tyrtyrty.',
                style: TextStyle(fontSize: 16),
                maxLines: isShowMore ? 3 : null,
                overflow: TextOverflow.fade,
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isShowMore = !isShowMore;
                  });
                },
                child: Text(isShowMore ? 'Show more' : 'Show less'))
          ],
        ),
      ),
    );
  }
}
