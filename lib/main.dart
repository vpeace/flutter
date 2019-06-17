import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
const _headerAuthorization = "Authorization";
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Image from the net';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: FadeInImage(
            placeholder: AssetImage('assets/tenor.gif'),
            image : NetworkImage(
                'http://via70.uplltd.com/CitizenConnectApp/api/department/downloadDepartmentFileForUser?departmentId=135',
                headers: {_headerAuthorization: "Bearer eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiI3ODMyM2RmMy0zZjhhLTQxZmMtYWQ3Yi1jOWIxYzk5Njk2MzQiLCJzdWIiOiJjYy1qd3QiLCJ1c2VyaWQiOjIwNCwiaWF0IjoxNTQ4MDU3NjYxLCJleHAiOjE1NjUzMzc2NjF9.QEwZO8jokPMQGtYNTTi033W1rfp5sWaPEP7kWQbVBHeAZW9jiKlMUtsn33eOD4HGPJcGg5u0o_1-Ye6P4Jlz3Q"
                }),
// errorWidget: new Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
