import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 170,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Align(alignment: AlignmentGeometry.bottomCenter,child: const Text("365-pic")),
              background: Image.network(
                "https://picsum.photos/800/500",
                fit: BoxFit.cover,
                ),

            ),

          )
        ],

      ),
    
    );
  }
}