import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth <= 600) {
                return Center(
                  child: Container(
                    width: constraints.maxWidth * 0.80,
                    height: constraints.maxHeight * 0.80,
                    color: Colors.red,
                    child: const Center(
                      child: Text('portrait',
                          style: TextStyle(color: Colors.white, fontSize: 24)),
                    ),
                  ),
                );
              } else {
                return Center(
                  child: Container(
                    width: constraints.maxWidth * 0.60,
                    height: constraints.maxHeight * 0.60,
                    color: Colors.blue,
                    child: const Center(
                      child: Text('landscape',
                          style: TextStyle(color: Colors.white, fontSize: 40)),
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
