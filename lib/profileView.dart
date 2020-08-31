import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  static const routeName = '/profileview';
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List wid() {
    List<Widget> listWid = [];
    listWid.add(body());
    return listWid;
  }

  Widget body() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: 80,
            width: 350,
            child: Card(
              borderOnForeground: true,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  side: BorderSide(width: 3, color: Colors.blue)),
              child: ListTile(
                  contentPadding: EdgeInsets.only(top: 8, left: 15, bottom: 8),
                  leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images.png')),
                  title: Text(
                    "View Profile Privately",
                    style: TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  trailing: Transform.scale(
                    scale: 0.6,
                    child: CupertinoSwitch(
                      activeColor: Colors.blue[800],
                      value: true,
                      onChanged: (val) {},
                    ),
                  )),
            ),
          ),
        ),
        ExpansionTile(
          // initiallyExpanded: true,
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/avatar.png"),
            radius: 30,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shubham Shaw",
                    style:
                        TextStyle(fontSize: 18.5, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "+91-1237856941",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  radius: 20,
                ),
              ),
            ],
          ),

          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => userList(),
              itemCount: 1,
            )
          ],
        ),
        ExpansionTile(
          // initiallyExpanded: true,
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/avatar.png"),
            radius: 30,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shubham Shaw",
                    style:
                        TextStyle(fontSize: 17.5, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "+91-1237856941",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  radius: 20,
                ),
              ),
            ],
          ),

          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => userList(),
              itemCount: 1,
            )
          ],
        ),
      ],
    );
  }

  Widget userList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 50,
          width: 180,
          child: Card(
              borderOnForeground: true,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  side: BorderSide(width: 2, color: Colors.blue)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text("Give Review",
                      style: TextStyle(
                          fontSize: 15.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                ],
              )),
        ),
        Container(
          height: 50,
          width: 180,
          child: Card(
              borderOnForeground: true,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  side: BorderSide(width: 2, color: Colors.blue)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text("Request Review",
                      style: TextStyle(
                          fontSize: 15.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                ],
              )),
        ),
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
            onTap: () => Navigator.of(context).pop(),
            child: Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Who Viewed Your Profile",
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
