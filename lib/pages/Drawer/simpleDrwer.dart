import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleDrawer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                accountName: Text("Humdam"), accountEmail: Text("Humdamkhan@hotmail.com"),
            currentAccountPicture: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
            )
            ),
            _drawerItem(
              title: "Activity",
              iconData: Icons.shopping_basket_outlined  
            ),
             _drawerItem(
              title: "Activity",
              iconData: Icons.shopping_basket_outlined  
            ),
             _drawerItem(
              title: "Activity",
              iconData: Icons.shopping_basket_outlined  
            ),
             _drawerItem(
              title: "Activity",
              iconData: Icons.shopping_basket_outlined  
            ),
             _drawerItem(
              title: "Activity",
              iconData: Icons.shopping_basket_outlined  
            ),

          ],),
        ),
      ),
      body:Column(
        children: [
          _header()
        ],
      ),
    );
  }

  _header() {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu,size: 40,),
                Text("Menu",style: TextStyle(fontSize: 25,color: Colors.white),),
                Icon(Icons.notifications_none_outlined,size: 40,)
              ],
            ),
          )
        ],
      ),
    );

  }
  Widget _drawerItem({String title,IconData iconData}){
    return ListTile(
      title: Text(title,style: TextStyle(fontSize: 16,color: Colors.grey),),
      leading: Icon(iconData),
    );
  }
}