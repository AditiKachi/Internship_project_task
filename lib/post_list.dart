import 'package:flutter/material.dart';
import 'package:socialmedia_automation/users_list.dart';

class PostLists extends StatefulWidget {
  const PostLists({Key? key}) : super(key: key);

  @override
  State<PostLists> createState() => _PostListsState();
}

class _PostListsState extends State<PostLists> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: size.height / 5,
              width: size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.green, Colors.blue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1])),
              child: const Text(
                "POST LIST",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Times new roman",
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
            ),
            SizedBox(height: size.height / 19),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DataTable(columns: const [
                    DataColumn(label: Text("Title")),
                    DataColumn(label: Text("Pending")),
                    DataColumn(label: Text("Action")),
                    DataColumn(label: Text("Social Media"))
                  ], rows: [
                    DataRow(cells: [
                      const DataCell(Text("Meditation")),
                      const DataCell(Center(child: Text("5"))),
                      DataCell(
                        RaisedButton(
                            onPressed: () {}, child: CustomNotifyButton(size)),
                      ),
                      const DataCell(Center(child: Text("LinkedIn"))),
                    ]),
                    DataRow(cells: [
                      const DataCell(Text("Meditation")),
                      const DataCell(Center(child: Text("4"))),
                      DataCell(
                        RaisedButton(
                            onPressed: () {}, child: CustomNotifyButton(size)),
                      ),
                      const DataCell(Center(child: Text("Instagram"))),
                    ]),
                    const DataRow(cells: [
                      DataCell(Text("Mind Control")),
                      DataCell(Center(child: Text("0"))),
                      DataCell(Text("")),
                      const DataCell(Center(child: Text("Facebook"))),
                    ]),
                    DataRow(cells: [
                      const DataCell(Text("Meditation")),
                      const DataCell(Center(child: Text("5"))),
                      DataCell(
                        RaisedButton(
                            onPressed: () {}, child: CustomNotifyButton(size)),
                      ),
                      const DataCell(Center(child: Text("LinkedIn"))),
                    ]),
                    DataRow(cells: [
                      const DataCell(Text("Meditation")),
                      const DataCell(Center(child: Text("4"))),
                      DataCell(
                        RaisedButton(
                            onPressed: () {}, child: CustomNotifyButton(size)),
                      ),
                      const DataCell(Center(child: Text("Instagram"))),
                    ]),
                    const DataRow(cells: [
                      DataCell(Text("Mind Control")),
                      DataCell(Center(child: Text("0"))),
                      DataCell(Text("")),
                      const DataCell(Center(child: Text("Facebook"))),
                    ]),
                    DataRow(cells: [
                      const DataCell(Text("Meditation")),
                      const DataCell(Center(child: Text("5"))),
                      DataCell(
                        RaisedButton(
                            onPressed: () {}, child: CustomNotifyButton(size)),
                      ),
                      const DataCell(Center(child: Text("LinkedIn"))),
                    ]),
                    DataRow(cells: [
                      const DataCell(Text("Meditation")),
                      const DataCell(Center(child: Text("4"))),
                      DataCell(
                        RaisedButton(
                            onPressed: () {}, child: CustomNotifyButton(size)),
                      ),
                      const DataCell(Center(child: Text("Instagram"))),
                    ]),
                    const DataRow(cells: [
                      DataCell(Text("Mind Control")),
                      DataCell(Center(child: Text("0"))),
                      DataCell(Text("")),
                      const DataCell(Center(child: Text("Facebook"))),
                    ]),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
