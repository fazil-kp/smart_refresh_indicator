import 'package:flutter/material.dart';
import 'package:smart_refresh_indicator/smart_refresh_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SmartRefreshIndicator(
            onRefresh: () async {
              await Future.delayed(const Duration(seconds: 2));
            },
            child: ListView.builder(
              physics:
                  const AlwaysScrollableScrollPhysics(), // Always include this line; without it, the refresh indicator will not work.
              itemCount: 30,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                  leading: const CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.person, color: Colors.white)),
                  subtitle: const Text('Software Developer'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
