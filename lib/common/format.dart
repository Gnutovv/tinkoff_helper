extension StringExtension on String {
  String get toMoneyFormat {
    if (length == 7) {
      return '${substring(0, 1)} ${substring(1)} ₽';
    }
    if (length == 8) {
      return '${substring(0, 2)} ${substring(2)} ₽';
    }
    if (length == 9) {
      return '${substring(0, 3)} ${substring(3)} ₽';
    }
    if (length == 10) {
      return '${substring(0, 1)} ${substring(1, 3)} ${substring(3)} ₽';
    }
    return ('$this ₽');
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

double nanoToUnit(int nano) {
  return nano / 1000000;
}
