class UserModel {
  late String id;
  late String name;
  late String email;

  UserModel({required this.id, required this.name, required this.email});

  //Map  to object .
  UserModel.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    name = map["name"];
    email = map["email"];
  }

  //object to Map.
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "email": email,
    };
  }
}
