import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [Colors.red, Colors.amber]),
              borderRadius: BorderRadius.circular(60)),
        ),
        Container(
          height: 104,
          width: 104,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1627289779/vjewskhf3tcgj6cbq5tb.jpg"),
                  fit: BoxFit.cover),
              color: Colors.black,
              borderRadius: BorderRadius.circular(60),
              border: Border.all(color: Colors.white, width: 3)),
        ),
      ],
    );
  }
}
