import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  BuildContext ctx;

  List wid() {
    List<Widget> listWid = [];
    listWid.add(body());
    return listWid;
  }

  Widget body() {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Card(
                elevation: 22,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images.png',
                      height: 100,
                      width: 170,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      "Profile View",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15))
                  ],
                ),
              ),
              onTap: ()=>Navigator.of(ctx).pushNamed('/profileview'),
            ),
            InkWell(
              onTap: ()=>Navigator.of(ctx).pushNamed('/profileinsights'),
              child: Card(
                elevation: 22,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/index.png',
                      height: 100,
                      fit: BoxFit.contain,
                      width: 170,
                    ),
                    Text(
                      "Profile Insight",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15))
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 15)),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 90,
            child: InkWell(
              onTap: ()=>Navigator.of(ctx).pushNamed('/accountactivity'),
              child: Card(
                elevation: 22,
                child: ListTile(
                  contentPadding: EdgeInsets.only(top: 8, left: 15),
                  leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/setting.png')),
                  title: Text(
                    "Account Activity",
                    style:
                        TextStyle(fontSize: 20.5, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 45,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.blue[800],
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          leading: Icon(
            Icons.arrow_back_ios,
            size: 30,
          ),
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Dashboard",
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
