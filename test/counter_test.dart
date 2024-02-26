import "package:flutter_test/flutter_test.dart";
import "package:fluttertestexample/counter.dart";

main() {
  test('Given counter class when intantiated, then count = 0', () {
    //Arrange
    Counter counter;
    //Act
    counter = Counter();
    int count = counter.count;
    //Assert
    expect(count, 0);
  });

  test(
      'Given a Counter class  is instantiated, when incrementCount is called, then count = 1',
      () => () {
            //Arrange
            Counter counter = Counter();
            //Act
            counter.incrementCount();
            //Assert
            expect(counter.count, 1);
          });
}
