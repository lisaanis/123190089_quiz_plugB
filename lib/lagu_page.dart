import 'package:flutter/material.dart';

class LaguPage extends StatefulWidget {
  final String name;
  final String singer;
  final String releaseDate;
  final String firstEntryDate;
  final String firstEntryPosition;
  final String source;
  final String imageUrls;
  final String albumurl;
  //final List<String> songs;

  const LaguPage({Key? key, required this.name, required this.singer, required this.releaseDate, required this.firstEntryDate,
    required this.firstEntryPosition, required this.source, required this.imageUrls, required this.albumurl   }) : super(key: key);

  @override
  _LaguPageState createState() => _LaguPageState();
}

class _LaguPageState extends State<LaguPage> {
  String _namaLengkap = "";
  String _email = "";
  String _noHP = "";
  String _alamatRumah = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.name}"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                "${widget.name}\n",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 24,),
              Text("Lengkapi Biodata"),
              SizedBox(height: 12,),
              //_buildForm(),
              SizedBox(height: 24,),
              //_buildButtonSubmit()
            ],
          ),
        ),
      ),
    );
  }
}
