import 'package:flutter/material.dart';
import 'package:socialmedia_automation/post_list.dart';
import 'package:socialmedia_automation/post_user_action.dart';
import 'package:socialmedia_automation/users_list.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: size.height / 5,
            width: size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.green, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1])),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 45,
                  child: Text(
                    "A",
                    style: TextStyle(color: Colors.blue, fontSize: 35.0),
                  ),
                  backgroundColor: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Text("Aditi Kachi",
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Times new roman")),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Text("aditi@gmail.com",
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Times new roman")),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text("Users List"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => const UsersList())),
          ),
          ListTile(
            leading: const Icon(Icons.post_add),
            title: const Text("Posts List"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => const PostLists())),
          ),
          ListTile(
            leading: const Icon(Icons.pending_actions_outlined),
            title: const Text("Post User Action"),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const PostUserAction())),
          ),
        ],
      ),
    );
  }
}
