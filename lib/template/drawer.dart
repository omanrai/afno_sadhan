import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(color: primaryColor),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 4,
                    left: 220,
                  ),
                  child: IconButton(
                    onPressed: (() {
                      _scaffoldKey.currentState?.closeDrawer();
                    }),
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
                DrawerHeader(
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: primaryColor,
                    ),
                    currentAccountPicture: IconButton(
                      onPressed: (() {
                        // Get.to(() => UserProfilePage(),
                        //     transition: Transition.rightToLeft,
                        //     duration: Duration(milliseconds: 800));
                      }),
                      icon: Image.network(
                        'https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-default-avatar-profile-icon-vector-social-media-user-image-vector-illustration-227787227.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    accountName: Text(
                      'Leo Messi',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    accountEmail: Text(
                      'leo2022messi@gmail.com',
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    // onDetailsPressed: () {
                    //   Get.to(() => UserProfilePage(),
                    //       transition: Transition.leftToRight,
                    //       duration: Duration(milliseconds: 800));
                    // },
                  ),
                ),
              ],
            ),
          ),
          // Divider(
          //   thickness: 2,
          //   color: Colors.white,
          // ),

          // DrawerListTileMenu(Icons.account_circle, 'My Profile',
          //     UserProfilePage(), _scaffoldKey),
          // DrawerListTileMenu(Icons.picture_as_pdf_outlined, 'E-Book',
          //     EBookPage(), _scaffoldKey),

          // DrawerListTileMenu(
          //     Icons.sync_alt, 'Referals', ReferalsPage(), _scaffoldKey),
          // DrawerListTileMenu(
          //     Icons.loyalty, 'Membership', MembershipPage(), _scaffoldKey),

          // DrawerListTileMenu(Icons.info, 'About Developers',
          //     AboutDeveloperPage(), _scaffoldKey),

          // // DrawerListTileMenu(Icons.help, 'Help', HelpPage(), _scaffoldKey),
          // ListTile(
          //   horizontalTitleGap: -5,
          //   leading: Icon(
          //     Icons.logout,
          //     color: primaryColor,
          //   ),
          //   title: Text(
          //     'Logout',
          //     style: TextStyle(
          //       color: primaryColor,
          //     ),
          //   ),
          //   onTap: () {
          //     // logoutBtnMethod();
          //   },
          // ),

          // Spacer(
          //   flex: 3,
          // ),
          // Center(
          //   child: Text(
          //     "v 1.0.0",
          //     style: TextStyle(
          //       color: Colors.white,
          //     ),
          //   ),
          // ),

          // Divide(),
        ],
      ),
    );
  }
}

class DrawerListTileMenu extends StatelessWidget {
  final IconData drawerIcon;
  final String drawerText;
  final Widget drawerCall;
  final GlobalKey<ScaffoldState> _scaffoldKey;

  DrawerListTileMenu(
      this.drawerIcon, this.drawerText, this.drawerCall, this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: ListTile(
        horizontalTitleGap: -5,
        leading: Icon(drawerIcon, color: primaryColor),
        title: Text(
          drawerText,
          style: TextStyle(color: primaryColor),
        ),
        onTap: () {
          Get.to(() => drawerCall);
          _scaffoldKey.currentState?.closeDrawer();
        },
      ),
    );
  }
}
