import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: const <Widget>[
          // DrawerHeader(
          //   child: Text("Menu Drawer"),
          //   decoration: BoxDecoration(color: Colors.orange),
          // ),
          // for more design use this
          UserAccountsDrawerHeader(
            accountName: Text("Abhay Singh"),
            accountEmail: Text("abhaybsingh19w33@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1562040506-a9b32cb51b94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"),
            ),

            // normal image displayed
            // currentAccountPicture: Image(
            //     image: NetworkImage(
            //         "https://images.unsplash.com/photo-1562040506-a9b32cb51b94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80")),

            // this haas some const error
            // currentAccountPicture: Image.network(
            //     "https://images.unsplash.com/photo-1562040506-a9b32cb51b94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Abhay Singh"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
            // for ripple effect on tap like a button
            // onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("abhaybsingh19w33@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
