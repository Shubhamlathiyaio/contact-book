class Data {
  int? id;
  String? name, contact, user, city, password, image;

  Data(this.id, this.name, this.contact, this.user, this.city, this.password, this.image);

  factory Data.get(m) {
    return Data(m['id'], m['name'], m['contact'], m['user'], m['city'], m['password'], m['image']);
  }
}
