/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
 */
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SettingsPage1 extends StatefulWidget {
  static const routeName = '/SettingsPage1';
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    /// ----------------------------------------------------------
    /// Build main content with help of Scaffold widget
    /// ----------------------------------------------------------
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[


          /// ----------------------------------------------------------
          /// Build  scrollable  content with help of SingleChildScrollView widget
          /// ----------------------------------------------------------
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                /// ----------------------------------------------------------
                /// Card widget header
                /// ----------------------------------------------------------
                Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.amber,
                  child: ListTile(
                    onTap: () {
                      //open edit profile
                    },
                    title: Text(
                      "John Doe",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/02.png'),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),

                /// ----------------------------------------------------------
                /// Card widget header  localization settings
                /// ----------------------------------------------------------
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[

                      /// ----------------------------------------------------------
                      /// Change Password ListTile widget
                      /// ----------------------------------------------------------
                      ListTile(
                        leading: Icon(
                          Icons.lock_outline,
                          color: Colors.amber,
                        ),
                        title: Text("Change Password"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change password
                        },
                      ),
                      _buildDivider(),

                      /// ----------------------------------------------------------
                      /// Change Language ListTile widget
                      /// ----------------------------------------------------------
                      ListTile(
                        leading: Icon(
                          MaterialCommunityIcons.earth,
                          color: Colors.amber,
                        ),
                        title: Text("Change Language"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change language
                        },
                      ),
                      _buildDivider(),


                      /// ----------------------------------------------------------
                      /// Change Location ListTile widget
                      /// ----------------------------------------------------------
                      ListTile(
                        leading: Icon(
                          Icons.location_on,
                          color: Colors.amber,
                        ),
                        title: Text("Change Location"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change location
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  "Notification Settings",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),

                /// ----------------------------------------------------------
                /// Change Received notification SwitchListTile widget
                /// ----------------------------------------------------------
                SwitchListTile(
                  activeColor: Colors.amber,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Received notification"),
                  onChanged: (val) {},
                ),

                /// ----------------------------------------------------------
                /// Change Received newsletter SwitchListTile widget
                /// ----------------------------------------------------------
                SwitchListTile(
                  activeColor: Colors.amber,
                  contentPadding: const EdgeInsets.all(0),
                  value: false,
                  title: Text("Received newsletter"),
                  onChanged: null,
                ),

                /// ----------------------------------------------------------
                /// Change Received Offer Notification SwitchListTile widget
                /// ----------------------------------------------------------
                SwitchListTile(
                  activeColor: Colors.amber,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Received Offer Notification"),
                  onChanged: (val) {},
                ),

                /// ----------------------------------------------------------
                /// Change Received App Updates SwitchListTile widget
                /// ----------------------------------------------------------
                SwitchListTile(
                  activeColor: Colors.amber,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Received App Updates"),
                  onChanged: null,
                ),
                const SizedBox(height: 60.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// ----------------------------------------------------------
  /// _buildDivider helper method for build divider widget
  /// ----------------------------------------------------------
  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}
