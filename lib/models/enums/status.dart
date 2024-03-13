

import '../enumvlaues.dart';

enum Status {
  ENDED,
  RUNNING,
  TO_BE_DETERMINED
}

final statusValues = EnumValues({
  "Ended": Status.ENDED,
  "Running": Status.RUNNING,
  "To Be Determined": Status.TO_BE_DETERMINED
});
