import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter_recode/screens/add_post_screen.dart';
import 'package:instagram_flutter_recode/screens/feed_screen.dart';
import 'package:instagram_flutter_recode/screens/search_screen.dart';

import '../screens/profile_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  FeedScreen(),
  SearchScreen(),
  AddPostScreen(),
  Center(
    child: Text('notif'),
  ),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
