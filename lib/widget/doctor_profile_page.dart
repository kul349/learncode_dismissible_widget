import 'package:flutter/material.dart';
import 'package:learncode/utils/constant.dart';

class DoctorProfilePage extends StatefulWidget {
  const DoctorProfilePage({super.key});

  @override
  State<DoctorProfilePage> createState() => _DoctorProfilePageState();
}

class _DoctorProfilePageState extends State<DoctorProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DoctorProfile"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
                color: color7,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: const Column(children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/2280551/pexels-photo-2280551.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        "Qualification",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text("MBBS"),
                    ),
                  ),
                  Expanded(
                      child: ListTile(
                    title: Text("Address"),
                    subtitle: Text("Hadiya"),
                  )),
                  Expanded(
                      child: ListTile(
                    title: Text("Phone"),
                    subtitle: Text("9824715684"),
                  ))
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
