import 'package:flutter/material.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {

  int _buttonIndex = 0;

  final _savedWidgets = [
    // Daftar widget yang akan ditampilkan pada tab yang berbeda bisa ditambahkan disini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,  // Menghilangkan ikon back
        title: Text(
          "Saved item",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemCount: 8, // jumlah item yang ingin ditampilkan
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.grey[300],
                  child: const Icon(Icons.image, size: 50),
                );
              },
              padding: const EdgeInsets.all(9.0),
            ),
          ),
        ],
      ),
    );
  }
}
