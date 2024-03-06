import 'dart:ui';

import 'package:flutter/material.dart';

import '../main.dart';

const url =
    'https://miro.medium.com/v2/resize:fit:700/1*OVzL5R-414Dr5sS6Oeayjw.jpeg';
const description =
    '''We offer exclusive Group/Corporate/Official/Family tour packages depend on your budget & flexible time. We are always set the highest standards for safety, accuracy of information, timeliness and customer service. We don’t just offer tour and travel services but also provide reliable and hassle free travel planning facilities. Our motto is to fulfill all the traveling requirements of the clients and make their trip, a lifetime experience. If you are planning to explore THE BANGLADESH, then we are here to Keep SURPRISING YOU!!. We always make your trip comfortable & hassle free''';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.blueAccent,
        ),*/
        body: SingleChildScrollView(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          imageSection(),
          //headerSection(),
          alternativeHeaderSection(),
          navSection(context),
          bodySection(),
        ],
      ),
    ));
  }

  Padding bodySection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        description,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget navSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 7),
                blurRadius: 10,
                spreadRadius: 2),
          ],
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.blue.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.8, 0.2])
          //border: Border.all(color: Colors.grey, width: 2.0)
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(
                Icons.call,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'CALL',
                style: TextStyle(fontSize: 16, color: Colors.white),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.near_me,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'ROUTE',
                style: TextStyle(fontSize: 16, color: Colors.white),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'SHARE',
                style: TextStyle(fontSize: 16, color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget alternativeHeaderSection() {
    return ListTile(
      title: Text(
        'Sajek Valley',
      ),
      subtitle: Text(
        'Khagrachori, Bangladesh',
        style: TextStyle(fontSize: 15, color: Colors.grey),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.red,
            size: 25,
          ),
          Text(
            '55',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Image imageSection() {
    return Image.network(
      url,
      width: double.infinity,
      height: 250,
      fit: BoxFit.cover,
    );
  }
}
