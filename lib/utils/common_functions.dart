import 'package:url_launcher/url_launcher.dart';

Future<void> openUrl(String url) async {
  final lanuchUrl = Uri.parse(url);
  final canlaunch = await canLaunchUrl(lanuchUrl);
  if (canlaunch) {
    try {
      await launchUrl(lanuchUrl, mode: LaunchMode.inAppBrowserView);
    } catch (e) {
      //add popup saying can not launch
      throw Exception('Could not launch $url');
    }
  } else {
    throw Exception('Could not launch $url');
  }
}
