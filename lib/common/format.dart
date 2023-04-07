import 'package:tinkoff_helper/network/generated/common.pb.dart';

extension StringExtension on String {
  String get toMoneyFormat {
    final lenAfterDot = split('.').last.length;

    if (length == lenAfterDot + 5) {
      return '${substring(0, 1)} ${substring(1)} ₽';
    }
    if (length == lenAfterDot + 6) {
      return '${substring(0, 2)} ${substring(2)} ₽';
    }
    if (length == lenAfterDot + 7) {
      return '${substring(0, 3)} ${substring(3)} ₽';
    }
    if (length == lenAfterDot + 8) {
      return '${substring(0, 1)} ${substring(1, 4)} ${substring(4)} ₽';
    }
    return ('$this ₽');
  }
}

extension MoneyValueExtension on MoneyValue {
  double get toDouble {
    final str = '${units.toString()}.${nano.toString()}';
    return double.parse(str);
  }
}

extension QuotationExtension on Quotation {
  double get toDouble {
    final str = '${units.toString()}.${nano.toString()}';
    return double.parse(str);
  }
}

String intToOrderStepName(int i) {
  switch (i) {
    case 0:
      return 'Первая';
    case 1:
      return 'Вторая';
    case 2:
      return 'Третья';
    case 3:
      return 'Четвертая';
    case 4:
      return 'Пятая';
    case 5:
      return 'Шестая';
    case 6:
      return 'Седьмая';
    case 7:
      return 'Восьмая';
    case 8:
      return 'Девятая';
    case 9:
      return 'Десятая';
    default:
      return '$i-ая';
  }
}

double _nanoToUnit(int nano) {
  return nano / 1000000;
}

double unitNanoToDouble(dynamic unit, int nano) {
  return unit.toInt() + _nanoToUnit(nano);
}
