import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iai_cc_projects/src/edima_gl3b/models/feature_model.dart';
import 'package:iai_cc_projects/src/edima_gl3b/models/history_model.dart';
import 'package:iai_cc_projects/src/edima_gl3b/models/icon_list_model.dart';

class HomeController {
  List<IconListModel> iconListModels1 = [
    IconListModel(
      icon: Icons.storage,
      text: "Pulsa & Data",
      color: Colors.pinkAccent,
    ),
    IconListModel(
      icon: Icons.crisis_alert_rounded,
      text: "Pulsa & Data",
      color: const Color.fromRGBO(233, 30, 99, 1),
    ),
    IconListModel(
      icon: Icons.shopping_bag_rounded,
      text: "Item Digital",
      color: Color.fromARGB(255, 0, 162, 255),
    ),
    IconListModel(
      icon: FontAwesomeIcons.moneyBill,
      text: "Tarik Tunai",
      color: Colors.pinkAccent,
    ),
  ];

  List<IconListModel> iconListModels2 = [
    IconListModel(
      icon: FontAwesomeIcons.ticket,
      text: "Data Deals",
      color: Colors.orangeAccent,
    ),
    IconListModel(
      icon: Icons.library_add_rounded,
      text: "Sald0 Digital",
      color: Colors.green,
    ),
    IconListModel(
      icon: FontAwesomeIcons.lightbulb,
      text: "Listrik",
      color: Colors.orangeAccent,
    ),
    IconListModel(
      icon: Icons.auto_awesome_mosaic_outlined,
      text: "View All",
      color: Colors.orangeAccent,
    ),
  ];

  List<HistoryModel> historyModels = [
    HistoryModel(
      image: "assets/imgs/setup1.jpeg",
      titre: "Kopi Pelakor",
      date: "07 Dec 2022 . 15:23",
      somme: 10000,
      isBenef: false,
    ),
    HistoryModel(
      image: "assets/imgs/setup2.jpeg",
      titre: "Top In",
      date: "17 Dec 2022 . 15:23",
      somme: 8900,
      isBenef: true,
    ),
    HistoryModel(
      image: "assets/imgs/setup1.jpeg",
      titre: "Elso Fad",
      date: "20 Dec 2022 . 15:23",
      somme: 35888,
      isBenef: true,
    ),
    HistoryModel(
      image: "assets/imgs/setup2.jpeg",
      titre: "Top In",
      date: "07 Dec 2022 . 15:23",
      somme: 10000,
      isBenef: true,
    ),
    HistoryModel(
      image: "assets/imgs/setup1.jpeg",
      titre: "Kopi Pelakor",
      date: "07 Dec 2022 . 15:23",
      somme: 10000,
      isBenef: false,
    ),
    HistoryModel(
      image: "assets/imgs/setup2.jpeg",
      titre: "Top In",
      date: "07 Dec 2022 . 15:23",
      somme: 10000,
      isBenef: true,
    ),
    HistoryModel(
      image: "assets/imgs/setup1.jpeg",
      titre: "Kopi Pelakor",
      date: "07 Dec 2022 . 15:23",
      somme: 10000,
      isBenef: false,
    ),
    HistoryModel(
      image: "assets/imgs/setup2.jpeg",
      titre: "Top In",
      date: "07 Dec 2022 . 15:23",
      somme: 10000,
      isBenef: true,
    ),
    HistoryModel(
      image: "assets/imgs/setup1.jpeg",
      titre: "Kopi Pelakor",
      date: "07 Dec 2022 . 15:23",
      somme: 10000,
      isBenef: false,
    ),
    HistoryModel(
      image: "assets/imgs/setup2.jpeg",
      titre: "Top In",
      date: "07 Dec 2022 . 15:23",
      somme: 10000,
      isBenef: true,
    ),
  ];

  List<FeatureModel> featureModels = [
    FeatureModel(
      icon: Icons.document_scanner_rounded,
      text: "My Bills",
      color: Colors.orange,
    ),
    FeatureModel(
      icon: Icons.person_2,
      text: "My Account",
      color: Color.fromARGB(255, 0, 162, 255),
    ),
    FeatureModel(
      icon: Icons.settings,
      text: "Settings",
      color: Color.fromARGB(255, 0, 162, 255),
    ),
    FeatureModel(icon: Icons.logout, text: "Logout", color: Colors.red),
  ];
}
