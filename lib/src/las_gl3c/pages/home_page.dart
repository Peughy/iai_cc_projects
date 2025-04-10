import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iai_cc_projects/src/las_gl3c/models/posts_model.dart';
import 'package:iai_cc_projects/src/las_gl3c/pages/card_post_widget.dart';
import 'package:iai_cc_projects/src/las_gl3c/pages/profil_page.dart';

enum _SelectedTab { home, search, add, notif, person }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final mainColor = Color.fromARGB(255, 36, 36, 36);

  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  List<String> images = [
    "assets/profil/profil4.png",
    "assets/profil/profil1.png",
    "assets/profil/profil2.png",
    "assets/profil/profil3.png",
    "assets/profil/profil4.png",
  ];

  List<PostsModel> postsModel = [
    PostsModel(
      profil: "assets/profil/profil1.png",
      nom: "Mayan Eleva",
      username: "@mayanEleva",
      image: "assets/imgs/setup1.jpeg",
      nbrLike: 500,
      nbrMag: 32,
      date: "25 min",
      message: "Voici le nouveau setup que j'ai achete!",
    ),
    PostsModel(
      profil: "assets/profil/profil2.png",
      nom: "Moussa Brayan",
      username: "@moussaBrayan",
      image: "assets/imgs/setup2.jpeg",
      nbrLike: 362,
      nbrMag: 32,
      date: "37 min",
      message: "Voici le nouveau setup que j'ai achete!",
    ),
    PostsModel(
      profil: "assets/profil/profil3.png",
      nom: "Steve Almer",
      username: "@steveBalmer",
      image: "assets/imgs/setup4.jpg",
      nbrLike: 120,
      nbrMag: 32,
      date: "2 heures",
      message: "Voici le nouveau setup que j'ai achete!",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body:
          [
            HomeWidget(images: images, postsModel: postsModel),
            null,
            null,
            null,
            ProfilPage(),
          ][_SelectedTab.values.indexOf(_selectedTab)],

      appBar:
          _SelectedTab.values.indexOf(_selectedTab) != 4
              ? AppBar(
                backgroundColor: Colors.white,
                title: Icon(
                  Icons.auto_awesome_mosaic_rounded,
                  size: 32,
                  color: mainColor,
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, right: 16.0),
                    child: Stack(
                      children: [
                        Icon(Icons.message, size: 32, color: mainColor),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              "10",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
              : null,
      bottomNavigationBar: CrystalNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        height: 10,
        unselectedItemColor: Colors.white70,
        borderWidth: 2,
        outlineBorderColor: Colors.white,
        backgroundColor: mainColor,
        items: [
          CrystalNavigationBarItem(
            icon: FontAwesomeIcons.house,
            selectedColor: Colors.pink,
          ),

          CrystalNavigationBarItem(
            icon: FontAwesomeIcons.magnifyingGlass,
            selectedColor: Colors.pink,
          ),

          CrystalNavigationBarItem(
            icon: FontAwesomeIcons.solidSquarePlus,
            selectedColor: Colors.pink,
          ),

          CrystalNavigationBarItem(
            icon: Icons.notifications,
            selectedColor: Colors.pink,
          ),

          CrystalNavigationBarItem(
            icon: Icons.person_2_sharp,
            selectedColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key, required this.images, required this.postsModel});

  final List<String> images;
  final List<PostsModel> postsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink, width: 2),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.pinkAccent,
                        radius: 50,
                        backgroundImage: AssetImage(images[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 24),
            CardPostWidget(postsModel: postsModel),
          ],
        ),
      ),
    );
  }
}
