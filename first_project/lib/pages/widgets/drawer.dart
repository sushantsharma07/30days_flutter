import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImageUrl =
        "https://scontent.fluh1-1.fna.fbcdn.net/v/t31.18172-8/1097239_1395185570707329_1641092653_o.jpg?_nc_cat=107&ccb=1-7&_nc_sid=de6eea&_nc_ohc=6Jl9llGum40AX9N3pUG&_nc_ht=scontent.fluh1-1.fna&oh=00_AT9b0ve-otts-S58AsMu48p64-YMd8QJKSZkVm4HuwrqXw&oe=62E0F07E";
    return Drawer(
      child: Container(
        color: Colors.deepPurpleAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Amit"),
                  accountEmail: Text("amitaery07@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(ImageUrl),
                  ),
                )),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
