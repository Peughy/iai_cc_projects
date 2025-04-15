import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfilPageLas extends StatelessWidget {
  const ProfilPageLas({super.key});

  @override
  Widget build(BuildContext context) {
    final mainColor = Color.fromARGB(255, 36, 36, 36);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "My Profile",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.settings, size: 32, color: mainColor),
              ],
            ),
            SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/profil/profil3.png"),
                    radius: 60,
                    backgroundColor: Colors.pinkAccent,
                  ),
                  Text(
                    "Kang Phutu",
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("@kang_phutu", style: TextStyle(fontSize: 18)),

                  SizedBox(height: 32),
                  Row(
                    spacing: 12,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("Photos", style: TextStyle(color: Colors.grey)),
                          Text(
                            "123",
                            style: TextStyle(
                              fontSize: 20,
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Fallowers",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "22.5k",
                            style: TextStyle(
                              fontSize: 20,
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Following",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "128",
                            style: TextStyle(
                              fontSize: 20,
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Row(
                        spacing: 12,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text(
                              "Photos",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text(
                              "Videos",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text(
                              "Tagged",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.more_horiz, size: 32, color: mainColor),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24,),
            StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              children:  [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(image: AssetImage("assets/imgs/setup1.jpeg"), fit: BoxFit.cover,)),
                  
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(image: AssetImage("assets/imgs/setup2.jpeg"), fit: BoxFit.cover,)),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(image: AssetImage("assets/imgs/setup4.jpg"), fit: BoxFit.cover,)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
