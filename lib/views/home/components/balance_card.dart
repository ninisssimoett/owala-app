import 'package:flutter/material.dart';
import 'package:owala_app/utils/consts.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: secondaryColor), 
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search here...",
                border: InputBorder.none,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // action search
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor, 
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              "Go",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}