import 'package:flutter/foundation.dart';

@immutable
class Strings {
  static const appName = 'MemeVerse!';
  static const welcomeToAppName = 'Welcome to ${Strings.appName}';
  static const youHaveNoPosts =
      'You have not posted a Meme yet. Press either the video-upload or the photo-upload buttons to the top of the screen in order to upload your first Meme!';
  static const noPostsAvailable =
      "Nobody seems to have posted any Memes yet. Why don't you take the first step and upload your first Meme?!";
  static const enterYourSearchTerm =
      'Enter your search term in order to get started. You can search in the description of all Memes available in the Memeverse';
  static const facebook = 'Facebook';
  static const facebookSignupUrl = 'https://www.facebook.com/signup';
  static const google = 'Google';
  static const googleSignupUrl = 'https://accounts.google.com/signup';
  static const logIntoYourAccount =
      'Log into your account using one of the options below.';
  static const comments = 'Comments';
  static const writeYourCommentHere = 'Write your comment here...';
  static const checkOutThisPost = 'Check out this Meme!';
  static const postDetails = 'Meme Details';
  static const post = 'Meme';

  static const createNewPost = 'Create New Meme';
  static const pleaseWriteYourMessageHere = 'Please write your message here';

  static const noCommentsYet =
      'Nobody has commented on this Meme yet. You can change that though, and be the first person who comments!';

  static const enterYourSearchTermHere = 'search for Memes ';

  // login view rich text at bottom
  static const dontHaveAnAccount = "Don't have an account?\n";
  static const signUpOn = 'Sign up on ';
  static const orCreateAnAccountOn = ' or create an account on ';
  const Strings._();
}
