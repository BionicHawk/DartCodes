void main() {
  final mySquare = Square(side: -10.0);
  mySquare.side = -5.0;
  print('Square area is ${mySquare.calculateArea()} units');
}

class Square {
  double _side; //side  * side

  Square({required side})
      : assert(side >= 0, 'side must be greater or equal to 0'),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('Setting now value $value');
    if (value >= 0) {
      _side = value;
    } else {
      throw 'Value must be greater than 0';
    }
  }

  double calculateArea() {
    return _side * _side;
  }
}
