import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDrawerOpen = false;
  double xOffset = 0;
  double yOffset = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(isDrawerOpen ? 0.85 : 1.00)
        ..rotateZ(isDrawerOpen ? -50 : 0),
      duration: const Duration(milliseconds: 300),
     
      decoration: BoxDecoration(
         color: Color.fromARGB(255, 181, 124, 143),
        borderRadius: isDrawerOpen? BorderRadius.circular(30): BorderRadius.circular(0),
      ),
      child: SingleChildScrollView(
        child: Column(
          
          children: [
            
           Column(
           children: [
            SizedBox(height: 20,),
              Row(
                children: [
                  isDrawerOpen
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                
                              isDrawerOpen = false;
                            });
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.black,
                          ),
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              xOffset = 210;
                              yOffset = 80;
                
                              isDrawerOpen = true;
                            });
                          },
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                        ),
                  const Text(
                    'Animate Drawer 1',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
           const SizedBox(
             height: 10,
           ),
           const Column(
             children: [
               RowImages(
                 image1: 'assets/bird.png',
                 text1: 'Bird',
                 image2: 'assets/cat.png',
                 text2: 'Cat',
               ),
               SizedBox(
                 height: 20,
               ),
               RowImages(
                 image1: 'assets/dog.png',
                 text1: 'Dog',
                 image2: 'assets/fish.png',
                 text2: 'Fish',
               ),
               SizedBox(
                 height: 20,
               ),
               RowImages(
                 image1: 'assets/fox.png',
                 text1: 'Fox',
                 image2: 'assets/monkey.png',
                 text2: 'Monkey',
               ),
               SizedBox(
                 height: 20,
               ),
               RowImages(
                 image1: 'assets/owl.png',
                 text1: 'Owl',
                 image2: 'assets/bird.png',
                 text2: 'Bird',
               ),
               SizedBox(
                 height: 20,
               ),
               RowImages(
                 image1: 'assets/fish.png',
                 text1: 'Fish',
                 image2: 'assets/dog.png',
                 text2: 'Dog',
               ),
               SizedBox(
                 height: 20,
               )
             ],
           ),
           ],
                      )
          ],
        ),
      ),
    );
  }
}

class RowImages extends StatelessWidget {
  final String image1, image2, text1, text2;

  const RowImages({
    super.key,
    required this.image1,
    required this.image2,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 181, 124, 143),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(5, 5),
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                height: 100,
                width: 100,
                image: AssetImage(image1),
              ),
              Text(
                text1,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 181, 124, 143),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color:
                      Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(5, 5),
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                height: 100,
                width: 100,
                image: AssetImage(image2),
              ),
              Text(
                text2,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        )
      ],
    );
  }
}
