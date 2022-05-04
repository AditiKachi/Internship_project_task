import "package:flutter/material.dart";
import 'package:socialmedia_automation/navigation_drawer.dart';

class Dashbaord extends StatefulWidget {
  const Dashbaord({Key? key}) : super(key: key);

  @override
  State<Dashbaord> createState() => _DashbaordState();
}

class _DashbaordState extends State<Dashbaord> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        key: _scaffoldKey,
        drawer: const NavigationDrawer(),
        body: Column(
          children: [
            Container(
                height: size.height / 5,
                width: size.width,
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      color: Colors.white,
                    ),
                    const SizedBox(width: 55.0),
                    const Text("DASHBOARD",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Times new roman",
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.green, Colors.blue],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3, 1]))),
            SizedBox(height: size.height / 17),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      SizedBox(height: 55.0),
                      Text("Total\nPosts",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text("Todays\nPosts",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Text(" Pending\n Posts",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold))
                    ],
                  ),
                  DataTable(columns: const [
                    DataColumn(
                        label: Text("LinkedIn",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text("Instagram",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text("Facebook",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold)))
                  ], rows: const [
                    DataRow(cells: [
                      DataCell(Text("50")),
                      DataCell(Text("45")),
                      DataCell(Text("30"))
                    ]),
                    DataRow(cells: [
                      DataCell(Text("12")),
                      DataCell(Text("10")),
                      DataCell(Text("11")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("6")),
                      DataCell(Text("9")),
                      DataCell(Text("10")),
                    ])
                  ])
                ],
              ),
            ),
            SizedBox(height: size.height / 10),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(columns: const [
                  DataColumn(label: Text("Total\nUsers")),
                  DataColumn(label: Text("Action\nPending")),
                  DataColumn(label: Text("Action\nDone"))
                ], rows: const [
                  DataRow(cells: [
                    DataCell(Text("50")),
                    DataCell(Text("10")),
                    DataCell(Text("40"))
                  ]),
                ])),
            SizedBox(height: size.height / 10),
            RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70.0)),
              padding: const EdgeInsets.all(0.0),
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.green, Colors.blue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1]),
                  borderRadius: BorderRadius.all(Radius.circular(70.0)),
                ),
                child: Container(
                  height: size.height / 15,
                  width: size.width / 3,
                  alignment: Alignment.center,
                  child: const Text(
                    'NOTIFY ALL',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
