import 'package:lawsuit_app/models/plaintiff.dart';

import 'defendant.dart';

class Involved {
  Plaintiff? plaintiff;
  Defendant? defendant;

  Involved({this.plaintiff, this.defendant});
}
