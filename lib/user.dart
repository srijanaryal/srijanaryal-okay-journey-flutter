class User {
  final String firstName;
  final String lastName;
  final String email;
  final String imageUrl;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.imageUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as Map<String, dynamic>;
    final picture = json['picture'] as Map<String, dynamic>;
    return User(
      firstName: name['first'] as String,
      lastName: name['last'] as String,
      email: json['email'] as String,
      imageUrl: picture['large'] as String,
    );
  }
}
