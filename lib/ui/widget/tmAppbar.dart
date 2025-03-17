import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TMAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return AppBar(
      backgroundColor: Colors.green,
      title: Row(
        children: [
          CircleAvatar(
            radius: 18,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name',style: textTheme.bodyLarge?.copyWith(
                    color: Colors.white,fontWeight: FontWeight.w600
                ),),
                Text('email@gmail.com',style: textTheme.bodySmall?.copyWith(
                    color: Colors.white
                ),),
              ],
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.logout,color: Colors.white,))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}