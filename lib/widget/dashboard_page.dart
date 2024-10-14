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
      body: SingleChildScrollView(
        child: Stack(children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.only(top: 16.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 96.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Little Butterfly",
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                                const ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: Text("Product Design"),
                                  subtitle: Text("Kathmandu"),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                  child: Column(
                                children: [Text("285"), Text("Likes")],
                              )),
                              Expanded(
                                  child: Column(
                                children: [Text("3025"), Text("Comments")],
                              )),
                              Expanded(
                                  child: Column(
                                children: [Text("650"), Text("Favourites")],
                              ))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
