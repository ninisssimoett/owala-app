import 'package:flutter/material.dart';
import 'package:owala_app/utils/consts.dart';

class CatalogAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CatalogAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back,",
              style: TextStyle(
                color: textColor,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Nisrina",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,

              ),

            )
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_outlined, color: Colors.black,),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none, color: Colors.black,),
        ),
      ],
    );
  }

// default sintax apabila ingin mengambil ukuran dr sebuah widget yg mengimplemen PreferredSize widget.
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}