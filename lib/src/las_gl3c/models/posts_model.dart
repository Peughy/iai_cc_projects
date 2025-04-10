class PostsModel {

  final String profil;
  final String nom;
  final String username;
  final String image;
  final int nbrLike;
  final int nbrMag;
  final String date;
  final String message;

  const PostsModel({
    required this.profil,
    required this.nom,
    required this.username,
    required this.image,
    required this.nbrLike,
    required this.nbrMag,
    required this.date,
    required this.message
  });

}