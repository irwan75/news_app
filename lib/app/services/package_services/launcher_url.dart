import 'package:url_launcher/url_launcher.dart';

class LauncherURL {
  Future<bool> launchURL(String _url) async =>
      await canLaunch(_url) ? await launch(_url) : false;
}
