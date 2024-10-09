import 'package:flutter/material.dart';
import 'package:learncode/service/post_api_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> posts = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    fetchsPost();
  }

  Future<void> fetchsPost() async {
    PostApi api = PostApi();
    List<dynamic> fetchedData = await api.postApi();
    setState(() {
      posts = fetchedData;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Post"),
          centerTitle: true,
        ),
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final post = posts[index];
                  return Dismissible(
                    key:
                        Key(post['id'].toString()), // unique key for each items
                    onDismissed: (direction) {
                      setState(() {
                        posts.removeAt(index);
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Itmes dismessed")));
                    },
                    background: Container(
                      color: Colors.red,
                      child: const Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 20),
                    ),
                    child: ListTile(
                      title: Text(post["title"]),
                    ),
                  );
                }));
  }
}
