import 'package:flutter/material.dart';
import 'package:taskmanager/detail_task.dart';
import 'package:taskmanager/title_page.dart';
import 'package:taskmanager/utils/BorderIcon.dart';

void main() {
  runApp( const
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager App',
      home: TitlePage(),
    ),
  );
}