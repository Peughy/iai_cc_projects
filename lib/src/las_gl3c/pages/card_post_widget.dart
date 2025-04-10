import 'package:flutter/material.dart';
import 'package:iai_cc_projects/src/las_gl3c/models/posts_model.dart';

class CardPostWidget extends StatelessWidget {
  final List<PostsModel> postsModel;
  const CardPostWidget({super.key, required this.postsModel});

  @override
  Widget build(BuildContext context) {
    final mainColor = Color.fromARGB(255, 36, 36, 36);
    return CustomScrollView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(childCount: postsModel.length, (
            context,
            index,
          ) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          spacing: 8,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(2.5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 1.5,
                                  color: Colors.pinkAccent,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                  postsModel[index].profil,
                                ),
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  postsModel[index].nom,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  postsModel[index].username,
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.more_horiz, size: 28, color: mainColor),
                      ],
                    ),

                    SizedBox(height: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        postsModel[index].image,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 16,
                      children: [
                        Row(
                          spacing: 12,
                          children: [
                            Row(
                              spacing: 8,
                              children: [
                                Icon(
                                  Icons.favorite_border_outlined,
                                  size: 24,
                                  color: mainColor,
                                ),
                                Text(
                                  "${postsModel[index].nbrLike}",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            Row(
                              spacing: 8,
                              children: [
                                Icon(
                                  Icons.message_rounded,
                                  size: 24,
                                  color: mainColor,
                                ),
                                Text(
                                  "${postsModel[index].nbrMag}",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            Icon(Icons.send, size: 24, color: mainColor),
                          ],
                        ),
                        Text(
                          "Il y a ${postsModel[index].date}",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Text(
                      postsModel[index].message,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
