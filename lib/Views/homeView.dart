import 'package:flutter/material.dart';
import 'package:piano_app/Views/flutterTuneView.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const id = "HomeView";
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[700],
        title: const Text(
          "Piano App",
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wallpaperflare.com_wallpaper.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SizedBox(
            height: 70,
            width: 150,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, FlutterTune.id);
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange[700],
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
              ),
              child: const Text(
                "Play",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
