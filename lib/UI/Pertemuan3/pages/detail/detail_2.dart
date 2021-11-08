import 'package:flutter/material.dart';

class SecondDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Responsive Test'),
        ),
        body: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraint) {
              if (constraint.maxWidth < 600) {
                return Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Current ',
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Max ',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Width',
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' = ',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '${constraint.maxWidth}',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ListView(
                        primary: false,
                        shrinkWrap: true,
                        children: imageGenerator(),
                      ),
                    )
                  ],
                );
              }
              if (constraint.maxWidth < 900) {
                return Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Current Max Width = ${constraint.maxWidth}',
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      child: GridView.count(
                        primary: false,
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        children: imageGenerator(),
                      ),
                    )
                  ],
                );
              }
              if (constraint.maxWidth < 1200) {
                return Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Current Max Width = ${constraint.maxWidth}',
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      child: GridView.count(
                        primary: false,
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        children: imageGenerator(),
                      ),
                    )
                  ],
                );
              }
              if (constraint.maxWidth < 1500) {
                return Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Current Max Width = ${constraint.maxWidth}',
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      child: GridView.count(
                        primary: false,
                        shrinkWrap: true,
                        crossAxisCount: 4,
                        children: imageGenerator(),
                      ),
                    )
                  ],
                );
              }
              if (constraint.maxWidth < 1800) {
                return Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Current Max Width = ${constraint.maxWidth}',
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      child: GridView.count(
                        primary: false,
                        shrinkWrap: true,
                        crossAxisCount: 6,
                        children: imageGenerator(),
                      ),
                    )
                  ],
                );
              } else {
                return Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Current Max Width = ${constraint.maxWidth}',
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      child: GridView.count(
                        primary: false,
                        shrinkWrap: true,
                        crossAxisCount: 8,
                        children: imageGenerator(),
                      ),
                    )
                  ],
                );
              }
            },
          ),
        ));
  }
}

List<Widget> imageGenerator() {
  var images = [
    'assets/image/leaves1.jpg',
    'assets/image/leaves2.jpg',
    'assets/image/leaves3.jpg',
    'assets/image/leaves4.jpg',
    'assets/image/leaves5.jpg',
    'assets/image/leaves1.jpg',
    'assets/image/leaves2.jpg',
    'assets/image/leaves3.jpg',
  ];

  return List<Widget>.generate(
    images.length,
    (index) {
      return Container(
        margin: EdgeInsets.all(20.0),
        height: 200.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(images[index]),
            fit: BoxFit.cover,
          ),
        ),
      );
    },
  );
}
