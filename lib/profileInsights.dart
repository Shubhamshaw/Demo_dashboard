import 'package:DB/chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class ProfileInsights extends StatelessWidget {
  static const routeName = '/profileinsights';
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
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Overview",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                height: 30,
                width: 100,
                child: Card(
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    color: Colors.blue,
                    child: Center(
                        child: Text(
                      "Filter By",
                      style: TextStyle(
                          fontSize: 15.5, fontWeight: FontWeight.bold),
                    ))),
              )
            ],
          ),
        ),
        BarChartSample2(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    child: Card(
                      color: Colors.orange[300],
                    ),
                  ),
                ),
                Text(
                  "Review Given",
                  style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500]),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    child: Card(
                      color: Colors.blue[500],
                    ),
                  ),
                ),
                Text(
                  "Profile Reach",
                  style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500]),
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            "Profile Reach",
            style: TextStyle(fontSize: 19.5, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.6,
              footer: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "1000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22.0),
                    ),
                  ),
                  Text(
                    "Total Reach",
                    style: TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  )
                ],
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              progressColor: Colors.red[400],
            ),
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.45,
              footer: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "700",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22.0),
                    ),
                  ),
                  Text(
                    "Contact Reach",
                    style: TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  )
                ],
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              progressColor: Colors.blue[400],
            ),
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.20,
              footer: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "300",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22.0),
                    ),
                  ),
                  Text(
                    "Shared Reach",
                    style: TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  )
                ],
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              progressColor: Colors.green[400],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text("300" ,style: TextStyle(fontSize: 18.5, fontWeight: FontWeight.bold),),
            subtitle: Text("Referal reach", style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.chevron_right,size: 45 ,),
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text("1000" ,style: TextStyle(fontSize: 18.5, fontWeight: FontWeight.bold),),
            subtitle: Text("Total Followers", style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.chevron_right,size: 45 ,),
          ),
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
                      child: Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
            onTap: ()=>Navigator.of(context).pop(),
          ),
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Profile Insights",
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
