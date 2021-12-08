import 'package:flutter/material.dart ';

import '../drawer.dart';
import '../name_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// here state is dynamic it can be stateful or stateless
class _HomePageState extends State<HomePage> {
  var myText = "Change my name";
  final TextEditingController _nameController = TextEditingController();

  // first initstate will be called then screen widgets will be created
  // @override
  // void initState() {
  //   super.initState();
  // }

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
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child:
              NameCardWidget(myText: myText, nameController: _nameController),
        ),
      )),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myText = _nameController.text;
          });
        },
        child: const Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
