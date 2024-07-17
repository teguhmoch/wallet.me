  import 'package:url_launcher/url_launcher.dart';

Future<void> launchExternalURL(String url) async {
  Uri uri =Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri,mode: LaunchMode.externalApplication);
    } 
    // else {
    //   throw 'Could not launch $url';
    // }
  }
