// import 'package:flutter/material.dart';

// import 'counter.dart';

// class MyHomePage extends StatefulWidget {
//   final String title;
//   const MyHomePage({super.key, required this.title});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final Counter counter = Counter();

//   void _incrementCounter() {
//     setState(() {
//       counter.incrementCounter();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'You have pushed the button this many times:',
//               ),
//               Text(
//                 '${counter.count}',
//                 style: Theme.of(context).textTheme.headlineMedium,
//                 key: const Key('counter'),
//               ),
//               FloatingActionButton(
//                 onPressed: () {},
//                 tooltip: 'Increment',
//                 child: const Icon(Icons.add),
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           key: const Key('increment_counter'),
//           onPressed: _incrementCounter,
//           tooltip: 'Increment',
//           child: const Icon(Icons.add),
//         ));
//   }
// }
