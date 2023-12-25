import 'package:uuid/uuid.dart';

class Pharmacie {
  String id; // Mappé à recordid
  String nom; // Mappé à pharmacie
  String quartier; // Mappé à quartier
  double latitude;
  double longitude;

  Pharmacie({
    String? id,
    required this.nom,
    required this.quartier,
    required this.latitude,
    required this.longitude,
  }) : id = id ?? const Uuid().v4();

  //Ajouter ce qu'il faut pour les conversions JSON: Pharmacie.fromJson et toJsonstatic Pharmacie fromJson(dynamic json){
    var id = json['id'];
    var nom = json['fields']['pharmacie'];
    var quartier = json['fields']['quartier'];
    var latitude = double.parse(json['fields']['latitude']);
    var longitude = double.parse(json['fields']['longitude']);
    return Pharmacie(id : id, nom: nom, quartier: quartier, latitude: latitude, longitude: longitude);
  }
}
