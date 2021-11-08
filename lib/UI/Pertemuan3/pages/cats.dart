import 'package:flutter/material.dart';
import '../model/data.dart';

class CatPage extends StatefulWidget {
  @override
  _CatPageState createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  List value = data;

  var images = [
    'assets/image/cat1.jpg',
    'assets/image/cat2.jpg',
    'assets/image/cat4.jpg',
    'assets/image/cat5.jpg',
  ];

  var index;

  final theText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.purple.shade500,
        centerTitle: true,
        title: Text('Cats Section'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              GridView.builder(
                primary: false,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 1.5,
                ),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
                itemCount: images.length,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Text Button',
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        return Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(
                        Icons.radio_button_checked,
                        color: Colors.purple.shade900,
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text('Outlined Button'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: theText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text('Text tampil disini: ${theText.text}'),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    theText.text = theText.text;
                    value.add(theText.text);
                  });
                },
                child: Text('Show Text'),
              ),
              SizedBox(
                height: 20.0,
              ),
              DropdownButton(
                items: [
                  DropdownMenuItem(
                    value: 1,
                    child: Text('Text 1'),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text('Text 2'),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text('Text 3'),
                  ),
                ],
                value: index,
                hint: Text('Enter'),
                onChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
