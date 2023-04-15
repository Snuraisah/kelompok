class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Kelompok 5",
      username: "Aisyah",
      email: "2006073@itg.ac.id",
      profilePhoto:
          "https://static.vecteezy.com/system/resources/previews/005/424/886/original/default-avatar-profile-icon-social-media-user-free-vector.jpg",
      phoneNumber: "083862179730",
    );
  }
}
