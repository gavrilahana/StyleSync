import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  bool _isCollapsed = true; // Set default ke collapsed

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: _isCollapsed ? 80 : 250, // Lebar sidebar saat collapsed dan expanded
      child: Column(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Sidebar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.home),
                  title: _isCollapsed ? null : Text('Home'),
                  onTap: () {
                    // Action untuk menu Home
                  },
                ),
                ListTile(
                  leading: Icon(Icons.search),
                  title: _isCollapsed ? null : Text('Cari'),
                  onTap: () {
                    // Action untuk menu Cari
                  },
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: _isCollapsed ? null : Text('Pesan'),
                  onTap: () {
                    // Action untuk menu Pesan
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: _isCollapsed ? null : Text('Pengaturan'),
                  onTap: () {
                    // Action untuk menu Pengaturan
                  },
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isCollapsed = !_isCollapsed;
              });
            },
            child: Container(
              height: 50,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    _isCollapsed ? Icons.arrow_forward : Icons.arrow_back,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
