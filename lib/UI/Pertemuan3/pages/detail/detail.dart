import 'package:flutter/material.dart';
import 'package:materi/UI/Pertemuan3/pages/detail/detail_2.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Responsive Layout'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondDetailPage();
              }));
            },
            icon: Icon(
              Icons.forward,
            ),
          ),
        ],
      ),
      body: Container(
        child: Row(
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          '${screenSize.width.toStringAsFixed(2)}',
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '${constraints.maxWidth}',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          '${screenSize.width.toStringAsFixed(2)}',
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '${constraints.maxWidth}',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
