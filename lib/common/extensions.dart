import 'package:fixnum/fixnum.dart';
import 'package:tinkoff_helper/network/generated/common.pb.dart';

extension IntExtension on int {
  String toStepName() {
    switch (this) {
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
        return '$this-ая';
    }
  }
}

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
  double get toDouble => _unitNanoToDouble(units.toInt(), nano);
}

extension QuotationExtension on Quotation {
  double get toDouble => _unitNanoToDouble(units.toInt(), nano);
}

extension DoubleExtension on double {
  Quotation get toQuotation => Quotation(units: Int64(floor()), nano: int.parse((toString().split('.')).last));
}

double _unitNanoToDouble(int? units, int? nano) {
  final minus = (units != null && units < 0) || (nano != null && nano < 0);
  final absU = units != null ? units.abs() : 0;
  final absN = nano != null ? nano.abs() : 0;
  double result = absU + (absN / 1000000000);
  if (minus) result *= -1;

  return result;
}
