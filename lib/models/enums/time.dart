
import '../enumvlaues.dart';

enum Time {
  EMPTY,
  THE_0900,
  THE_1200,
  THE_1300,
  THE_2000,
  THE_2030,
  THE_2100,
  THE_2130,
  THE_2200,
  THE_2230,
  THE_2300,
  THE_2330
}

final timeValues = EnumValues({
  "": Time.EMPTY,
  "09:00": Time.THE_0900,
  "12:00": Time.THE_1200,
  "13:00": Time.THE_1300,
  "20:00": Time.THE_2000,
  "20:30": Time.THE_2030,
  "21:00": Time.THE_2100,
  "21:30": Time.THE_2130,
  "22:00": Time.THE_2200,
  "22:30": Time.THE_2230,
  "23:00": Time.THE_2300,
  "23:30": Time.THE_2330
});
