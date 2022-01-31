
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

}


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: Text('This is my Home Screen'),
      ),
    );
  }
}
