class Contact {
  final int id;
  final String name;
  final int accountNumber;

  Contact(this.id, this.name, this.accountNumber);

  @override
  String toString() {
    return 'Contact: $id, $name, $accountNumber';
  }

  Map<String, dynamic> toJson() => {
        // 'id': id,
        'name': name,
        'accountNumber': accountNumber,
      };

  Contact.fromJson(Map<String, dynamic> json)
      : id = 0,
        name = json['name'],
        accountNumber = json['accountNumber'];
}
