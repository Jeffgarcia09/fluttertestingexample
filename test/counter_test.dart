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
        'Given a Counter class  is instantiated, when incrementCount is called 4 times, then count is incremented into 1, 3, 6, 10',
        () {
      //Arrange

      //Act
      counter.incrementCount();
      expect(counter.count, 1);

      counter.incrementCount();
      expect(counter.count, 3);

      counter.incrementCount();
      expect(counter.count, 6);

      counter.incrementCount();
      expect(counter.count, 10);
    });
    test(
        'Given a Counter class  is instantiated, when decrementCount is called, then count = 0',
        () {
      //Arrange

      //Act
      counter.decrementCount();
      //Assert
      expect(counter.count, 0);
    });
    test(
        'Given a Counter class  is instantiated, when incrementCount is called twice and decrementCount is called, then becomes 1, 3, 2',
        () {
      counter.incrementCount();
      expect(counter.count, 1);

      counter.incrementCount();
      expect(counter.count, 3);

      counter.decrementCount();
      expect(counter.count, 2);
    });
    test(
        'Given a Counter class is instantiated, when incrementCount is called and reset is called, then the count = 0',
        () {
      //arrange

      //act
      counter.incrementCount();
      counter.resetCount();
      //Assert
      expect(counter.count, 0);
    });
  });
}
