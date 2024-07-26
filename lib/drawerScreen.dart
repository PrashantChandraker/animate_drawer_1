import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink.shade100,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, bottom: 70),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/Group.jpg'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Prashant Chandraker',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: const Column(
                children: <Widget>[
                  NewRow(
                    text: 'Settings',
                    icon: Icons.error_outline,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  NewRow(
                    text: 'Profile',
                    icon: Icons.person_outline,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  NewRow(
                    text: 'Messages',
                    icon: Icons.chat_bubble_outline,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  NewRow(
                    text: 'Saved',
                    icon: Icons.bookmark_border,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  NewRow(
                    text: 'Favorites',
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  NewRow(
                    text: 'Hint',
                    icon: Icons.lightbulb_outline,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.cancel,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Log out',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const NewRow({
   
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.black,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}