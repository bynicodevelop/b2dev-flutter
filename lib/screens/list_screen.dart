import "package:flutter/material.dart";

class ListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> users;

  const ListScreen({
    Key? key,
    required this.users,
  }) : super(key: key);

  void _modal(BuildContext context, Map<String, dynamic> user) =>
      showModalBottomSheet(
        context: context,
        builder: (context) => SizedBox(
          height: 200,
          child: Center(
            child: Column(
              children:
                  user.entries.map((e) => Text(e.value.toString())).toList(),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ma super liste"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Dismissible(
            direction: DismissDirection.endToStart,
            key: Key(index.toString()),
            background: Container(
              color: Colors.red,
            ),
            child: Card(
              child: ListTile(
                onTap: () => _modal(
                  context,
                  users[index],
                ),
                title: Text(users[index]["name"]),
                subtitle: Text(users[index]["status"]),
              ),
            ),
          );
        },
      ),
    );
  }
}
