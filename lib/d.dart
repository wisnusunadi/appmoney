// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           appBar: AppBar(
//             title: const Text("Minggu ke 2"),
//             bottom: const TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.directions_car)),
//                 Tab(icon: Icon(Icons.directions_transit)),
//                 Tab(icon: Icon(Icons.directions_bike)),
//                 Tab(icon: Icon(Icons.directions_boat)),
//               ],
//             ),
//           ),
//           body: const TabBarView(
//             children: [
//               GridViewContent(title: "title"),
//               ListViewContent(title: "title"),
//               GridViewBuilderContent(title: "title"),
//               ListViewBuilderContent(title: "title")
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class GridViewContent extends StatefulWidget {
//   const GridViewContent({super.key, required this.title});

//   final String title;

//   @override
//   State<GridViewContent> createState() => _GridViewContentState();
// }

// class _GridViewContentState extends State<GridViewContent> {
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 4),
//           padding: const EdgeInsets.all(16.0),
//           children: const [
//             Card(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Center(child: Text("Grid View")),
//               ),
//             ),
//             Card(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Center(child: Text("Grid View")),
//               ),
//             ),
//             Card(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Center(child: Text("Grid View")),
//               ),
//             ),
//             Card(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Center(child: Text("Grid View")),
//               ),
//             ),
//             Card(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Center(child: Text("Grid View")),
//               ),
//             ),
//             Card(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Center(child: Text("Grid View")),
//               ),
//             ),
//             Card(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Center(child: Text("Grid View")),
//               ),
//             ),
//             Card(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Center(child: Text("Grid View")),
//               ),
//             ),
//           ]),
//     );
//   }
// }

// class ListViewContent extends StatefulWidget {
//   const ListViewContent({super.key, required this.title});

//   final String title;

//   @override
//   State<ListViewContent> createState() => _ListViewContentState();
// }

// class _ListViewContentState extends State<ListViewContent> {
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         child: ListView(
//           children: const [
//             Card(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Center(child: Text("List View")),
//               ),
//             ),
//             Card(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Center(child: Text("List View")),
//               ),
//             ),
//             Card(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Center(child: Text("List View")),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class GridViewBuilderContent extends StatefulWidget {
//   const GridViewBuilderContent({super.key, required this.title});

//   final String title;

//   @override
//   State<GridViewBuilderContent> createState() => _GridViewBuilderContentState();
// }

// class _GridViewBuilderContentState extends State<GridViewBuilderContent> {
//   // create _formkey
//   final _formKey = GlobalKey<FormState>();
//   // tab controlle
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // create grid view builder with dummy data
//       body: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           childAspectRatio: 1.5,
//         ),
//         itemCount: 20,
//         itemBuilder: (context, index) {
//           return const Card(
//             child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Center(child: Text("Hello World"))),
//           );
//         },
//       ),
//     );
//   }
// }

// class ListViewBuilderContent extends StatefulWidget {
//   const ListViewBuilderContent({super.key, required this.title});

//   final String title;

//   @override
//   State<ListViewBuilderContent> createState() => _ListViewBuilderContentState();
// }

// class _ListViewBuilderContentState extends State<ListViewBuilderContent> {
//   final _formKey = GlobalKey<FormState>();
//   // tab controlle
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: 5,
//         itemBuilder: (context, index) {
//           return const SizedBox(
//             height: 100,
//             child: Card(
//               child: Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Center(child: Text("Hello World"))),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
