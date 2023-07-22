import 'package:flutter/material.dart';

class MenuItem {
  String tittle;
  IconData icon;

  MenuItem({required this.tittle, required this.icon});
}

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = <MenuItem>[
      MenuItem(tittle: "Profile", icon: Icons.person),
      MenuItem(tittle: "My Cart", icon: Icons.person),
      MenuItem(tittle: "Favorite", icon: Icons.person),
      MenuItem(tittle: "Order", icon: Icons.person)
    ];
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Spacer(),
          Expanded(
            child: ListView.builder(
              itemCount: data.length, 
              itemBuilder: (context, index) {
                final item = data[index];
                return ListTile(
                  minLeadingWidth: 20,
                  leading: Icon(item.icon),
                  title:Text(item.tittle)
                );
              },
            )),
          Spacer(flex: 2)
        ],
      )),
    );

   
  }
  
    
}
