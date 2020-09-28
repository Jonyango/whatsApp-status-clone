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
        body: Container(
            child: Stack(
          children: [
            Expanded(child: _buildListTile()),
            Positioned(
              bottom: 100,
              right: 10,
              child: FloatingActionButton(
                backgroundColor: Color(0xffEDF6F7),
                onPressed: null,
                child: Icon(
                  Icons.edit,
                  color: Colors.grey,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 10,
              child: FloatingActionButton(
                backgroundColor: Color(0xff04CA3E),
                onPressed: null,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )));
  }

  Widget buildCardTile(String views, String time) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30.0,
        backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
      ),
      title: Text(views),
      subtitle: Text(time),
      trailing: Icon(Icons.more_vert),
    );
  }

  Widget _buildListTile() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return buildCardTile(
            statusData.getViews(index), statusData.getTimePosted(index));
      },
      separatorBuilder: (BuildContext context, int index) => Divider(),
      itemCount: statusData.sizeOfStatusBank(),
    );
  }
}
