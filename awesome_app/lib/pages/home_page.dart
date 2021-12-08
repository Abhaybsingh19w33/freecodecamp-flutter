import 'package:flutter/material.dart ';
import 'package:http/http.dart' as http;

import '../drawer.dart';
import 'dart:convert';
// import '../name_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// here state is dynamic it can be stateful or stateless
class _HomePageState extends State<HomePage> {
  // var myText = "Change my name";
  // final TextEditingController _nameController = TextEditingController();

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  // first initstate will be called then screen widgets will be created
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(url));
    print(res.body);
    data = jsonDecode(res.body);
    setState(() {});
  }

  // once the screen is destroyed this method will be called
  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      // body: const Text("Revision course restart"),
      // aligning the container in center
      body: Card(
        child: data != null
            ? ListView.builder(
                // context means tha place of the current widget inthe widget tree
                // index means the index of the item
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shadowColor: Colors.grey[800],
                      child: Column(children: <Widget>[
                        ListTile(
                          title: Text(data[index]["title"]),
                          subtitle: Text("ID: ${data[index]["id"]}"),
                          leading: Image.network(data[index]["url"]),
                        )
                      ]),
                    ),
                  );
                },
                itemCount: data.length,
              )
            // Container(
            //     color: Colors.blue,
            //   )
            : const Center(child: CircularProgressIndicator()),
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // myText = _nameController.text;
          });
        },
        child: const Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
