import "package:flutter/material.dart";

class UsersList extends StatefulWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
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
          "USERS LIST",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Times new roman",
              fontWeight: FontWeight.bold,
              fontSize: 30.0),
        ),
      ),
      SizedBox(height: size.height / 19),
      SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: DataTable(columns: const [
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Total Pending")),
              DataColumn(label: Text("Todays Pending")),
              DataColumn(label: Text("Action"))
            ], rows: [
              DataRow(cells: [
                DataCell(Center(child: Text("Amol"))),
                DataCell(Center(child: Text("100"))),
                DataCell(Center(child: Text("5"))),
                DataCell(RaisedButton(
                    onPressed: () {}, child: CustomNotifyButton(size))),
              ]),
              const DataRow(cells: [
                DataCell(Center(child: Text("Vikas"))),
                DataCell(Center(child: Text("200"))),
                DataCell(Center(child: Text("2"))),
                DataCell(Text("")),
              ]),
              DataRow(cells: [
                DataCell(Center(child: Text("Kumar"))),
                DataCell(Center(child: Text("0"))),
                DataCell(Center(child: Text("0"))),
                DataCell(RaisedButton(
                    onPressed: () {}, child: CustomNotifyButton(size))),
              ]),
              DataRow(cells: [
                DataCell(Center(child: Text("Amol"))),
                DataCell(Center(child: Text("100"))),
                DataCell(Center(child: Text("5"))),
                DataCell(RaisedButton(
                    onPressed: () {}, child: CustomNotifyButton(size))),
              ]),
              DataRow(cells: [
                DataCell(Center(child: Text("Amol"))),
                DataCell(Center(child: Text("100"))),
                DataCell(Center(child: Text("5"))),
                DataCell(RaisedButton(
                    onPressed: () {}, child: CustomNotifyButton(size))),
              ]),
              DataRow(cells: [
                DataCell(Center(child: Text("Kumar"))),
                DataCell(Center(child: Text("0"))),
                DataCell(Center(child: Text("0"))),
                DataCell(RaisedButton(
                    onPressed: () {}, child: CustomNotifyButton(size))),
              ]),
            ]),
          ))
    ])));
  }
}

Widget CustomNotifyButton(Size size) {
  return const Text(
    "NOTIFY",
    style: TextStyle(
        fontFamily: "Times new roman",
        fontSize: 15.0,
        fontWeight: FontWeight.w500),
  );
}

void MoveToLastScreen(BuildContext context) {
  Navigator.pop(context);
}
