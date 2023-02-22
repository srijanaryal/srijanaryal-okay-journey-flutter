import 'package:flutter/material.dart';
import 'user.dart';
import 'api.dart';
import 'user_item.dart';
import 'search_bar.dart';
import 'user_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<User> _users;
  late Api _api;
  late String _searchTerm;

  @override
  void initState() {
    super.initState();
    _users = [];
    _api = Api();
    _searchTerm = '';
    _fetchUsers();
  }

  void _fetchUsers() async {
    final users = await _api.getUsers();
    setState(() {
      _users = users;
    });
  }

  void _search(String searchTerm) async {
    final users = await _api.searchUsers(searchTerm);
    setState(() {
      _users = users;
      _searchTerm = searchTerm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Center(
          child: Text(
            'Random User Api Call ',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
      body: Column(
        children: [
          SearchBar(onSearch: _search),
          Expanded(
            child: UserList(users: _users, searchTerm: _searchTerm),
          ),
        ],
      ),
    );
  }
}
