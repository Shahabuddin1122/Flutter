import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Layout()));
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Flutter Layout Demo'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(
              'https://images.unsplash.com/photo-1713184355726-d3a31d822fcc?q=80&w=2671&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Oeschien lake CampGround",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Kanderstan,SWitzerland",
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 40,
                    ),
                    Text(
                      "54",
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Icon(Icons.call), Text("CALL")],
                ),
                Column(
                  children: [Icon(Icons.route), Text("ROUTE")],
                ),
                Column(
                  children: [Icon(Icons.share), Text("SHARE")],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              "To follow Flutter best practices, create one class, or Widget, to contain each part of your layout. When Flutter needs to re-render part of a UI, it updates the smallest part that changes. This is why Flutter makes  If only the text changes in a Text widget, Flutter redraws only that text. Flutter changes the least amount of the UI possible in response to user input.",
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
          )
        ],
      ),
    );
  }
}

//homePage
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.green[200],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/field.jpg'),
            Text(
              'Hello Everyone from Shahabuddin',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower',
                letterSpacing: 2,
                color: Colors.grey[600],
              ),
            ),
            Text("New Line"),
            Icon(
              Icons.add_a_photo,
              color: Colors.lightBlue,
              size: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              child: Text("Click me"),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  )),
              child: Text('Click me'),
            ),
            ElevatedButton.icon(
                onPressed: () {}, icon: Icon(Icons.mail), label: Text('Send'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("Clicked"),
        backgroundColor: Colors.green[200],
        child: const Icon(Icons.home),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => MyAppState(),
//       child: MaterialApp(
//         title: 'Namer App',
//         theme: ThemeData(
//           useMaterial3: true,
//           colorScheme: ColorScheme.fromSeed(
//               seedColor: const Color.fromARGB(255, 34, 218, 255)),
//         ),
//         home: MyHomePage(),
//       ),
//     );
//   }
// }

// class MyAppState extends ChangeNotifier {
//   var current = WordPair.random();
//   void getNext() {
//     current = WordPair.random();
//     notifyListeners();
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var appState = context.watch<MyAppState>();
//     var pair = appState.current;

//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('A random AWASOME idea:'),
//             BigCard(pair: pair),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 appState.getNext();
//               },
//               child: Text('Next'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class BigCard extends StatelessWidget {
//   const BigCard({
//     super.key,
//     required this.pair,
//   });

//   final WordPair pair;

//   @override
//   Widget build(BuildContext context) {
//     var theme = Theme.of(context);
//     final style = theme.textTheme.displayMedium!.copyWith(
//       color: theme.colorScheme.onPrimary,
//     );
//     return Card(
//       color: theme.colorScheme.secondary,
//       child: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Text(
//           pair.asLowerCase,
//           style: style,
//           semanticsLabel: pair.asPascalCase,
//         ),
//       ),
//     );
//   }
// }
