import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_3/pages/Youtube%20search/Model/itemdata.dart';

import 'Model/youtubesearch_model.dart';

class YoutubeSearchpage extends StatefulWidget {
  @override
  _YoutubeSearchpageState createState() => _YoutubeSearchpageState();
}

class _YoutubeSearchpageState extends State<YoutubeSearchpage> {
  bool _issearch = false;
  // ignore: non_constant_identifier_names
  bool _isloading = true;
  int Navindex = 0;
  List<ItemData> items = [];
  @override
  void initState() {
    super.initState();
    _loadMockDataFromAssets();
  }

  Future<void> _loadMockDataFromAssets() async {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _isloading = false;
      });
    });
    final assetData = await rootBundle.loadString("assets/youtubesearch.json");
    final responce = YoutubeSearchmodel.fromJson(json.decode(assetData));
    items = responce.items;
    print(responce.items[0].snippet.thumbnails.high.url);
  }

  Widget _Searchfield() {
    return Row(
      children: [
        InkWell(
            onTap: () {
              setState(() {
                _issearch = false;
              });
            },
            child: Icon(Icons.arrow_back)),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 45,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(.2),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: "Youtube Search"),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(.1), shape: BoxShape.circle),
            child: Icon(Icons.mic))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _issearch == true
            ? _Searchfield()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 30,
                      child: Image.asset("assets/youtube_logo.png")),
                  Row(
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.notifications_none_outlined),
                      SizedBox(
                        width: 8,
                      ),
                      InkWell(
                          onTap: () {
                            if (_issearch == false) {
                              setState(() {
                                _issearch = true;
                              });
                            }
                          },
                          child: Icon(Icons.search)),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(28)),
                            child: Image.asset("assets/ibad.jpeg")),
                      )
                    ],
                  )
                ],
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: Navindex,
        onTap: (index) {
          setState(() {
            Navindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Create"),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), label: "Subscription"),
          BottomNavigationBarItem(icon: Icon(Icons.wysiwyg), label: "Library"),
        ],
      ),
      body: _isloading == true
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/playVideo",
                        arguments: items[index]);
                  },
                  child: Container(
                    height: 280,
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 200,
                              width: double.infinity,
                              color: Colors.grey,
                              child: Image.network(
                                items[index].snippet.thumbnails.medium.url,
                                fit: BoxFit.cover,
                              )),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "${(items[index].snippet.title)}",
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "${(items[index].snippet.channelTitle)}",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
    );
  }
}
