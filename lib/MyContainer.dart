import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Test"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.network(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.bluecross.org.uk%2Fsites%2Fdefault%2Ffiles%2Fassets%2Fimages%2F124530.jpg&f=1&nofb=1")
                  .image,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          // decoration: BoxDecoration(
          //   color: Colors.blue[100],
          //   // shape: BoxShape.circle,
          //   border: Border.all(),
          // ),
          // alignment: Alignment.center,
          // // width: 300,
          // // height: 300,
          // // padding: const EdgeInsets.all(40),
          // margin: const EdgeInsets.all(40),
          // child: Text(
          //   "container text",
          //   style: TextStyle(fontSize: 30),
          // ),
        ),
      ),
    );
  }
}
