import 'top_album.dart';
import 'lagu_page.dart';
import 'package:flutter/material.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spoti - Pay"),
      ),
      body: GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          final TopAlbum album = topAlbumList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LaguPage(
                    name: album.albumName,
                    singer: album.singer,
                    releaseDate: album.releaseDate,
                    firstEntryDate: album.firstEntryDate,
                    firstEntryPosition: album.firstEntryPosition,
                    source: album.source,
                    imageUrls: album.imageUrls,
                    albumurl: album.albumurl,
                    //final List<String> songs
                );
              }));
            },
            child: Card(
              child: Row(
                children: [
                  Image.network(album.imageUrls),
                  //Text(album.albumName),
                  //Text(album.singer)
                ],
              ),
            ),
          );
        },
        itemCount: topAlbumList.length,),
    );
  }
}
