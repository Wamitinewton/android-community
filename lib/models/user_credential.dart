class UserModel {
  UserModel({this.id, this.email, this.password, this.name});
  String? id;
  String? email;
  String? password;
  String? name;

  UserModel.fromJson(dynamic json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['email'] = email;
    map['password'] = password;
    map['name'] = name;

    return map;
  }
  @override
  String toString(){
    return 'User{id: $id, email: $email, password: $password, name: $name}';
  }
}
