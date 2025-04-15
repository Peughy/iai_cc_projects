import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iai_cc_projects/src/edima_gl3b/controllers/home_controller.dart';

class HomePageEdima extends StatelessWidget {
  const HomePageEdima({super.key});

  @override
  Widget build(BuildContext context) {
    final mainColor = Color.fromARGB(255, 0, 162, 255);
    HomeController homeController = HomeController();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: mainColor,
                      ),
                      padding: EdgeInsets.all(4),
                      child: Icon(
                        Icons.airplane_ticket,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "DANA",
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 2,
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.email_rounded, size: 28, color: Colors.grey),
              ],
            ),
            SizedBox(height: 28),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(4),
                        child: Icon(
                          Icons.airplane_ticket,
                          size: 28,
                          color: mainColor,
                        ),
                      ),
                      Row(
                        spacing: 8,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "081397317832",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Icon(
                              FontAwesomeIcons.copy,
                              size: 20,
                              color: mainColor,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your Balance",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Rp 238.874",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ],
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.all(8),
                        ),
                        onPressed: () {},
                        label: Text(
                          "Top Up",
                          style: TextStyle(color: mainColor, fontSize: 18),
                        ),
                        icon: Icon(Icons.add, size: 20, color: mainColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 36,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      padding: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.send_rounded,
                      color: Colors.white,
                      size: 28,
                    ),
                    label: Text(
                      "Send",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 36,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.call_received_rounded,
                      color: Colors.black,
                      size: 28,
                    ),
                    label: Text(
                      "Request",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Column(
                children: [
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: mainColor,
                        backgroundImage: AssetImage(
                          "assets/profil/profil1.png",
                        ),
                        radius: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alipay+ Rewards",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Berhadiah 2,5 JIL",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.orangeAccent,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: mainColor,
                          padding: EdgeInsets.all(8),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Claim Now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Wrap(
                    spacing: 8,
                    alignment: WrapAlignment.spaceBetween,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: List.generate(
                      homeController.iconListModels1.length,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Column(
                            spacing: 6,
                            children: [
                              Icon(
                                homeController.iconListModels1[index].icon,
                                color:
                                    homeController
                                        .iconListModels1[index]
                                        .color,
                                size: 22,
                              ),
                              Text(
                                homeController.iconListModels1[index].text,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      homeController.iconListModels2.length,
                      (index) {
                        return Column(
                          spacing: 6,
                          children: [
                            Icon(
                              homeController.iconListModels2[index].icon,
                              color:
                                  homeController
                                      .iconListModels2[index]
                                      .color,
                              size: 22,
                            ),
                            Text(
                              homeController.iconListModels2[index].text,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "History",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(color: mainColor, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Column(
                      children: List.generate(
                        homeController.historyModels.length,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 24),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  spacing: 12,
                                  children: [
                                    Image.asset(
                                      homeController
                                          .historyModels[index]
                                          .image,
                                      width: 50,
                                      height: 50,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          homeController
                                              .historyModels[index]
                                              .titre,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          homeController
                                              .historyModels[index]
                                              .date,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  homeController.historyModels[index].isBenef
                                      ? "+ Rp ${homeController.historyModels[index].somme}"
                                      : "- Rp ${homeController.historyModels[index].somme}",
                                  style: TextStyle(
                                    color:
                                        homeController
                                                .historyModels[index]
                                                .isBenef
                                            ? Colors.green
                                            : Colors.red,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
