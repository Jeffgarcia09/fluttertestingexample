import "package:flutter_test/flutter_test.dart";
import "package:fluttertestexample/counter.dart";

main() {
  group('Counter Class:', () {
    late Counter counter;
    setUp(() => counter = Counter());
    test('Given counter class when intantiated, then count = 0', () {
      //Arrange

      //Act
      counter = Counter();
      int count = counter.count;
      //Assert
      expect(count, 0);
    });

    test(
        'Given a Counter class  is instantiated, when incrementCount is called, then count = 1',
        () {
      //Arrange

      //Act
      counter.incrementCount();
      //Assert
      expect(counter.count, 1);
    });
    test(
        'Given a Counter class  is instantiated, when decrementCount is called, then count = -1',
        () {
      //Arrange

      //Act
      counter.decrementCount();
      //Assert
      expect(counter.count, -1);
    });
  });
}
