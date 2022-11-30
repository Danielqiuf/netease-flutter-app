class MathUtil {
  static const double MILLION = 10000.0;
  static const double MILLIONS = 1000000.0;
  static const double BILLION = 1000000000.0;
  static const String MILLOIN_UNIT = '万';
  static const String BILLOIN_UNIT = '亿';

  static String getPlayNumberStr(int amount) {
    String result = amount.toString();

    if (amount > MILLION * 10 && amount <= MILLIONS) {
      result = '${(amount / MILLIONS).toStringAsFixed(1)}$MILLOIN_UNIT';
    } else if (amount > MILLIONS && amount <= BILLION) {
      if (amount == BILLION) {
        result = '${amount ~/ BILLION}$BILLOIN_UNIT';
      } else {
        result = '${amount ~/ MILLION}$MILLOIN_UNIT';
      }
    } else if (amount > BILLION) {
      result = '${amount ~/ BILLION}$BILLOIN_UNIT';
    } else {
      result = amount.toString();
    }

    return result;
  }
}
