import 'package:flutter/material.dart';
import 'status_data.dart';

StatusData statusData = StatusData();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: StatusPage(),
      ),
    );
  }
}

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My status'),
        backgroundColor: Color(0xff075E55),
        leading: Icon(Icons.arrow_back),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return buildCardTile(
              statusData.getViews(index), statusData.getTimePosted(index));
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: statusData.sizeOfStatusBank(),
      ),
    );
  }

  Widget _buildListTileView() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return buildCardTile(
            statusData.getViews(index), statusData.getTimePosted(index));
      },
      separatorBuilder: (BuildContext context, int index) => Divider(),
      itemCount: statusData.sizeOfStatusBank(),
    );
  }

  Widget buildCardTile(String views, String time) {
    return ListTile(
      title: Text(views),
      subtitle: Text(time),
      trailing: Icon(Icons.more_vert),
    );
  }

  List buildProfileImage() {
    List images = [];
    for (int statusIndex = 0;
        statusIndex < statusData.sizeOfStatusBank();
        statusIndex++) {
      images.add(CircleAvatar(
        child: Image.network(statusData.getImgUrl(statusIndex)),
      ));
    }
    return images;
  }
}
