import 'dart:convert';
import 'package:http/http.dart';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;

  WorldTime({
    required this.location,
    required this.flag,
    required this.url,
    this.time = '',
  });

  Future<void> getTime() async {
    Response response =
        await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    String dateTime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offset)));

    time = now.toString();
  }
}
