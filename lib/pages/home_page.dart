import 'package:app/utils/constants.dart';
import 'package:app/widgets/oe_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app),
              onPressed: (){
                Constants.prefs.setBool("loggedIn", false);
                Navigator.pushReplacementNamed(context, "/Login");
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(),
        ),
      ),
      drawer: MyDrawer(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          if (_nameController.text.isNotEmpty){
            myText = _nameController.text;
            setState(() {});
            // _nameController.text = "";
            _nameController.clear();
          }
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
