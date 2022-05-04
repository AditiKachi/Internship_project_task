import "package:flutter/material.dart";

class PostUserAction extends StatefulWidget {
  const PostUserAction({Key? key}) : super(key: key);

  @override
  State<PostUserAction> createState() => _PostUserActionState();
}

class _PostUserActionState extends State<PostUserAction> {
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
          "POST USER LIST",
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
              DataColumn(label: Text("Post")),
              DataColumn(label: Text("User")),
              DataColumn(label: Text("Date")),
              DataColumn(label: Text("Action"))
            ], rows: [
              DataRow(cells: [
                DataCell(Center(child: Text("Meditation"))),
                DataCell(Center(child: Text("Amol"))),
                DataCell(Center(child: Text("26/03/2022"))),
                DataCell(Row(
                  children: <Widget>[
                    CustomActionButton(true, "Comment"),
                    SizedBox(width: 5),
                    CustomActionButton(true, "Like"),
                    SizedBox(width: 5),
                    CustomActionButton(false, "Share")
                  ],
                )),
              ]),
              DataRow(cells: [
                DataCell(Center(child: Text("Mind Control"))),
                DataCell(Center(child: Text("Vikas"))),
                DataCell(Center(child: Text("27/02/2022"))),
                DataCell(Row(
                  children: <Widget>[
                    CustomActionButton(false, "Comment"),
                    SizedBox(width: 5),
                    CustomActionButton(false, "Like"),
                    SizedBox(width: 5),
                    CustomActionButton(false, "Share")
                  ],
                )),
              ]),
              DataRow(cells: [
                DataCell(Center(child: Text("Mind Control"))),
                DataCell(Center(child: Text("Aditi"))),
                DataCell(Center(child: Text("30/03/2022"))),
                DataCell(Row(
                  children: <Widget>[
                    CustomActionButton(true, "Comment"),
                    SizedBox(width: 5),
                    CustomActionButton(true, "Like"),
                    SizedBox(width: 5),
                    CustomActionButton(true, "Share")
                  ],
                )),
              ]),
              DataRow(cells: [
                DataCell(Center(child: Text("Mediation"))),
                DataCell(Center(child: Text("Priti"))),
                DataCell(Center(child: Text("25/02/2022"))),
                DataCell(Row(
                  children: <Widget>[
                    CustomActionButton(false, "Comment"),
                    SizedBox(width: 5),
                    CustomActionButton(true, "Like"),
                    SizedBox(width: 5),
                    CustomActionButton(false, "Share")
                  ],
                )),
              ]),
              DataRow(cells: [
                DataCell(Center(child: Text("Mediation"))),
                DataCell(Center(child: Text("Saba"))),
                DataCell(Center(child: Text("26/03/2022"))),
                DataCell(Row(
                  children: <Widget>[
                    CustomActionButton(true, "Comment"),
                    SizedBox(width: 5),
                    CustomActionButton(true, "Like"),
                    SizedBox(width: 5),
                    CustomActionButton(false, "Share")
                  ],
                )),
              ]),
              DataRow(cells: [
                DataCell(Center(child: Text("Mind Control"))),
                DataCell(Center(child: Text("Chaitrali"))),
                DataCell(Center(child: Text("29/02/2022"))),
                DataCell(Row(
                  children: <Widget>[
                    CustomActionButton(true, "Comment"),
                    SizedBox(width: 5),
                    CustomActionButton(false, "Like"),
                    SizedBox(width: 5),
                    CustomActionButton(false, "Share")
                  ],
                )),
              ]),
            ]),
          ))
    ])));
  }
}

Widget CustomActionButton(bool action, String text) {
  return RaisedButton(
    color: action ? Colors.red : Colors.green,
    onPressed: () {},
    child: Text(text,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            fontFamily: "Times new roman")),
  );
}
