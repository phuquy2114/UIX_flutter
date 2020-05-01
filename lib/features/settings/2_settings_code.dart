import 'package:flutter/material.dart';

/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
 */

class SettingsPage2 extends StatelessWidget {
  static const routeName = '/SettingsPage2';
  final TextStyle whiteText = TextStyle(
    color: Colors.white,
  );
  final TextStyle greyTExt = TextStyle(
    color: Colors.grey.shade400,
  );
  final whiteBoldText =
  TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {


    /// ----------------------------------------------------------
    /// Build main content with help of Scaffold widget
    /// ----------------------------------------------------------
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Theme(
        data: Theme.of(context).copyWith(
          brightness: Brightness.dark,
          primaryColor: Colors.purple,
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
          ),

          /// ----------------------------------------------------------
          /// Build  scrollable  content with help of SingleChildScrollView widget
          /// ----------------------------------------------------------
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Container(
                      width: 120,
                      height: 120,

                      /// ----------------------------------------------------------
                      /// DecorationImage  header
                      /// ----------------------------------------------------------
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/01.png'),
                          fit: BoxFit.fill,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Jane Doe",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            "Nepal",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),

                /// ----------------------------------------------------------
                /// Change Language ListTile widget
                /// ----------------------------------------------------------
                ListTile(
                  title: Text(
                    "Languages",
                    style: whiteBoldText,
                  ),
                  subtitle: Text(
                    "English US",
                    style: greyTExt,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),

                /// ----------------------------------------------------------
                /// Change Profile Settings ListTile widget
                /// ----------------------------------------------------------
                ListTile(
                  title: Text(
                    "Profile Settings",
                    style: whiteBoldText,
                  ),
                  subtitle: Text(
                    "Jane Doe",
                    style: greyTExt,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),

                /// ----------------------------------------------------------
                /// Change Email Notifications SwitchListTile widget
                /// ----------------------------------------------------------
                SwitchListTile(
                  title: Text(
                    "Email Notifications",
                    style: whiteBoldText,
                  ),
                  subtitle: Text(
                    "On",
                    style: greyTExt,
                  ),
                  value: true,
                  onChanged: (val) {},
                ),

                /// ----------------------------------------------------------
                /// Change Push Notifications SwitchListTile widget
                /// ----------------------------------------------------------
                SwitchListTile(
                  title: Text(
                    "Push Notifications",
                    style: whiteBoldText,
                  ),
                  subtitle: Text(
                    "Off",
                    style: greyTExt,
                  ),
                  value: false,
                  onChanged: (val) {},
                ),
                /// ----------------------------------------------------------
                /// Logout SwitchListTile widget
                /// ----------------------------------------------------------
                ListTile(
                  title: Text(
                    "Logout",
                    style: whiteBoldText,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
