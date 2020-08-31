import 'package:flutter/material.dart';

import 'package:rating_bar/rating_bar.dart';

class AccountActivity extends StatelessWidget {
  static const routeName = '/accountactivity';
  List wid() {
    List<Widget> listWid = [];
    listWid.add(body());
    return listWid;
  }

  Widget body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
          child: Text(
            "Today",
            style: TextStyle(fontSize: 22.5, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, bottom: 10, right: 10),
          height: 130,
          width: double.infinity,
          child: Card(
              elevation: 3,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/avatar.png')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sahith Gave you a video review",
                            style: TextStyle(fontSize: 17.5),
                          ),
                          Row(
                            children: [
                              Text(
                                "4.0",
                                style: TextStyle(
                                    fontSize: 17.5,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: RatingBar.readOnly(
                                  filledColor: Colors.amber,
                                  initialRating: 4,
                                  size: 20,
                                  isHalfAllowed: true,
                                  halfFilledIcon: Icons.star_half,
                                  filledIcon: Icons.star,
                                  emptyIcon: Icons.star_border,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "19 mins ago",
                            style: TextStyle(color: Colors.grey[600]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: 130,
          width: double.infinity,
          child: Card(
              elevation: 3,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/avatar.png')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You gave a voice review to Shubham",
                            style: TextStyle(fontSize: 17.5),
                          ),
                          Row(
                            children: [
                              Text(
                                "3.0",
                                style: TextStyle(
                                    fontSize: 17.5,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: RatingBar.readOnly(
                                  filledColor: Colors.amber,
                                  initialRating: 3.0,
                                  size: 20,
                                  isHalfAllowed: true,
                                  halfFilledIcon: Icons.star_half,
                                  filledIcon: Icons.star,
                                  emptyIcon: Icons.star_border,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "19 mins ago",
                            style: TextStyle(color: Colors.grey[600]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.blue[800],
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          leading: InkWell(
            
              onTap: ()=>Navigator.of(context).pop(),
                      child: Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Account Activity",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18),
            ),
            titlePadding: EdgeInsets.only(top: 20, left: 25, bottom: 15),
          ),
          expandedHeight: 100,
          floating: true,
        ),
        SliverList(delegate: SliverChildListDelegate(wid()))
      ],
    ));
  }
}
