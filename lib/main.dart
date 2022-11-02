import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid View',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 74),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: GridView.builder(
        itemCount: 15,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          return GridTile(
            header: const GridTileBar(
              backgroundColor: Colors.black45,
              leading: Icon(Icons.person),
              title: Text('Title'),
              trailing: Icon(Icons.menu),
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black45,
              trailing: IconButton(
                onPressed: () {},
                splashRadius: 16,
                icon: const Icon(Icons.favorite),
              ),
            ),
            child: Image.network('https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png'),
          );
        },
      ),
    );
  }
}
