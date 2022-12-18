import 'package:url_launcher/url_launcher.dart';

launchCaller() async {
  var url = Uri.parse("tel:+263 0772 472 250");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

fb() async {
  var url = Uri.parse("https://www.facebook.com/clarityzim");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

insta() async {
  var url =
      Uri.parse("https://instagram.com/digitalclarity_zw?igshid=YmMyMTA2M2Y=");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

sendingMails() async {
  var url = Uri.parse("mailto:isaaczackumbula@gmail.com");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
