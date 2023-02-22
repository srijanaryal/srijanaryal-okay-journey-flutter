import 'package:flutter/material.dart';
import 'user.dart';
import 'user_item.dart';

class UserList extends StatelessWidget {
  final List<User> users;
  final String searchTerm;

  UserList({required this.users, required this.searchTerm});

  @override
  Widget build(BuildContext context) {
    final filteredUsers = searchTerm.isEmpty
        ? users
        : users
            .where((user) => user.firstName
                .toLowerCase()
                .startsWith(searchTerm.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: filteredUsers.length,
      itemBuilder: (context, index) {
        final user = filteredUsers[index];
        return UserItem(user: user);
      },
    );
  }
}
