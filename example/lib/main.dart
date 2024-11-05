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
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SmartRefreshIndicator(
            onRefresh: () async {
              await Future.delayed(const Duration(seconds: 2));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg_image.png"),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      for (int i = 0; i <= 50; i++)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0,
                                      offset: Offset(2, 2))
                                ]),
                            child: ListTile(
                              leading: const CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child:
                                      Icon(Icons.person, color: Colors.white)),
                              title: const Text("Fazil",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      color: Colors.white)),
                              subtitle: Text("Software Developer",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey[600])),
                              trailing: Icon(Icons.arrow_forward_ios,
                                  color: Colors.grey[600]),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
