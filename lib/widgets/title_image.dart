import 'package:flutter/material.dart';

class Title_Image extends StatelessWidget {
  final String image, title;
   

  Title_Image({
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            height: 50,
            width: 50,
            color: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(width: 10),
         Text(
           title,
         style: TextStyle(
           fontSize: 18,
           fontWeight: FontWeight.bold,
           color: Theme.of(context).primaryColor,
         )
         ),
      ],
    );
  }
}
