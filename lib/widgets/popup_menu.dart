import 'package:flutter/material.dart';

class PopupIcon extends StatelessWidget {
  const PopupIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)),
      elevation: 8,
      icon: const Icon(
        Icons.more_vert,
      
      ),
      itemBuilder: (context) => const [
        PopupMenuItem(
          child: Text(''),
          value: 1,
        ),
    
      ],
    );
  }
}