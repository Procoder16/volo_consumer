import 'package:flutter/material.dart';
import 'package:volo/screens/authScreen.dart';
import 'package:volo/models/alertDialogs.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);

    double drawerWidth = _mediaQueryData.size.width;
    double drawerHeight = _mediaQueryData.size.height;

    return Drawer(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(drawerWidth * 0.02),
            child: DrawerHeader(
              child: Center(
                child: CircleAvatar(
                  radius: drawerHeight * 0.1,
                  child: Icon(
                    Icons.account_circle,
                    size: drawerHeight * 0.17,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffFF879B),
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: drawerWidth * 0.04,
                ),
                Icon(
                  Icons.brightness_6,
                ),
                SizedBox(
                  width: drawerWidth * 0.077,
                ),
                Text('Dark Mode'),
                SizedBox(
                  width: drawerWidth * 0.25,
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.thumb_up_alt_sharp),
            title: Text('Liked Deals'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Contact Us'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () async {
              final action = await AlertDialogs.yesCancelDialog(
                context,
                'Logout',
                'Are you sure you want to log out?',
                AuthScreen(),
                'Logged out successfully',
              );
            },
          ),
        ],
      ),
    );
  }
}
