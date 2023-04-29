class LoginModel {
  late String name;
  late String mail;
  late String password;
  late bool keep0n;

  LoginModel(
      {required this.name,
      required this.mail,
      required this.password,
      required this.keep0n});

  LoginModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mail = json['mail'];
    password = json['password'];
    keep0n = json['keep0n'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['mail'] = mail;
    data['password'] = password;
    data['keep0n'] = keep0n;
    return data;
  }

  @override
  String toString() {
    // ignore: unnecessary_this
    return "Name: ${this.name}\nE-mail: ${this.mail}\nPassword: ${this.password}";
  }
}
