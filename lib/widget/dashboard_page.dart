import 'package:flutter/material.dart';
import 'package:learncode/utils/constant.dart'; // Assuming your constant colors are here

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            height: MediaQuery.sizeOf(context).height / 3.2,
            decoration: BoxDecoration(
              color: color7, // Assuming this is defined in constant.dart
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            top: 20, // Adjust the positioning as needed
            left: MediaQuery.sizeOf(context).width / 3,
            child: InkWell(
              onTap: () {
                // Define your action here
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://images.pexels.com/photos/1485548/pexels-photo-1485548.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  height: 100, // This keeps the image small
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
