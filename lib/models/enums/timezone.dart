
import '../enumvlaues.dart';

enum Timezone {
  AMERICA_HALIFAX,
  AMERICA_NEW_YORK,
  ASIA_TOKYO,
  EUROPE_BUSINGEN,
  EUROPE_LONDON,
  EUROPE_PARIS
}

final timezoneValues = EnumValues({
  "America/Halifax": Timezone.AMERICA_HALIFAX,
  "America/New_York": Timezone.AMERICA_NEW_YORK,
  "Asia/Tokyo": Timezone.ASIA_TOKYO,
  "Europe/Busingen": Timezone.EUROPE_BUSINGEN,
  "Europe/London": Timezone.EUROPE_LONDON,
  "Europe/Paris": Timezone.EUROPE_PARIS
});
