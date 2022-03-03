import 'package:flutter/material.dart';

import '../widgets/info_item.dart';
import '../widgets/profile_picture.dart';
import '../widgets/story_item.dart';
import '../widgets/tab_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              const Icon(Icons.lock_outline_rounded, color: Colors.black),
              const SizedBox(width: 5),
              const Text(
                "jay_ganteng",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.keyboard_arrow_down, color: Colors.black)
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_box_outlined, color: Colors.black),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu, color: Colors.black))
          ]),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("23", "Posts"),
                      InfoItem("23.3M", "Followers"),
                      InfoItem("8", "Following"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("Jay",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: const TextSpan(
                  text:
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: " #enhypen", style: TextStyle(color: Colors.blue))
                  ]),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "link.com",
              style: TextStyle(color: Colors.blue[800]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
                onPressed: () {},
                child: const Text("Edit profile",
                    style: TextStyle(color: Colors.black))),
          ),
          const SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StoryItem(":["),
                StoryItem("Views"),
                StoryItem("Highlights"),
                StoryItem("Song"),
                StoryItem(":)"),
                StoryItem("<3"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 3, top: 20),
            child: Row(
              children: [
                TabItem(true, Icons.grid_on_outlined),
                TabItem(false, Icons.person_pin_rounded),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 23,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 3, crossAxisSpacing: 3),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/${index + 50}/202",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 4,
          showSelectedLabels: false,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: "Home"),
          ]),
    );
  }
}
