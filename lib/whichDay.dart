import 'package:darttest2/myConsts.dart';

String whichDayIsToday() {
  String todayInString;
  DateTime today = DateTime.now();
  var todayis = today.weekday;
  //var myEnum = WeekDays.Sunday;

  num temonum = 454;
  assert(temonum == 454);

  switch (todayis) {
    case 1:
      todayInString = WeekDays.Monday.toString();
      break;
    case 2:
      todayInString = WeekDays.Tuesday.toString();
      break;
    case 3:
      todayInString = WeekDays.Wednesday.toString();
      break;
    case 4:
      todayInString = WeekDays.Thursday.toString();
      break;
    case 5:
      todayInString = WeekDays.Friday.toString();
      break;
    case 6:
      todayInString = WeekDays.Saturday.toString();
      break;
    case 7:
      todayInString = WeekDays.Sunday.toString();
      break;
    default:
      todayInString = 'Sacmasapanbirsayigeldi';
  }

  return todayInString.substring(9);
}
