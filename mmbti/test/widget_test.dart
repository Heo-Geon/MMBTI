import 'package:flutter_test/flutter_test.dart';

import 'package:mmbti/data/models/question.dart';
import 'package:mmbti/features/result/result_notifier.dart';

void main() {
  group('mbtiTypeFromScores', () {
    test('양수는 첫 극, 음수는 둘째 극으로 판정한다', () {
      final type = mbtiTypeFromScores({
        MbtiAxis.ei: 4,
        MbtiAxis.sn: -2,
        MbtiAxis.tf: 6,
        MbtiAxis.jp: -6,
      });
      expect(type, 'ENTP');
    });

    test('0점은 첫 극으로 tie-break 한다', () {
      final type = mbtiTypeFromScores({
        MbtiAxis.ei: 0,
        MbtiAxis.sn: 0,
        MbtiAxis.tf: 0,
        MbtiAxis.jp: 0,
      });
      expect(type, 'ESTJ');
    });
  });
}
