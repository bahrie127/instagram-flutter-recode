import 'package:flutter/material.dart';
import 'package:instagram_flutter_recode/screens/feed_screen.dart';
import 'package:instagram_flutter_recode/screens/add_post_screen.dart';
import 'package:instagram_flutter_recode/screens/search_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  SearchScreen(),
  AddPostScreen(),
  Center(
    child: Text('notif'),
  ),
  Center(
    child: Text('profile'),
  ),
];
