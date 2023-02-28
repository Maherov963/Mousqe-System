// import 'dart:io';
// import 'dart:math' as math;
// import 'shit.dart' as shit;

import 'dart:io';

void main() {
  List<String> data = [
    'Xiaomi 11 t pro',
    'samsung note 10 plus',
    'samsung s6 edge',
    'apple',
    'sam s6'
  ];
  List<String> appleKeyWord = ['apple', 'aple'];
  bool again = true;
  while (again) {
    print('Search...');
    var start = stdin.readLineSync()!.toLowerCase();

    search(data, start);
    print('Enter y/n to continue...');
    var end = stdin.readLineSync();
    if (end == 'n') {
      again = false;
    } else {
      print('\x1B[2J\x1B[0;0H');
    }
  }
}

search(data, req) {
  List<Map> res = [];
  for (var element in data) {
    var word = element.replaceAll("أ", 'ا');
    if (word.toLowerCase().contains(req)) {
      res.insert(0, {"res": element, "relate": 0});
    } else {
      var reqSplit = req.split(' ');
      var eleSplit = word.split(' ');
      int related = -1;
      for (var eleEle in eleSplit) {
        for (var reqEle in reqSplit) {
          if (eleEle.toLowerCase().contains(reqEle)) {
            if (related == -1) {
              related++;
            }
            related++;
          }
        }
      }
      if (related != -1) {
        res.add({"res": element, "relate": related});
      }
    }
  }
  res.sort(
    (a, b) {
      int first = a["relate"] as int;
      int second = b["relate"] as int;
      if (first == 0) {
        return -1;
      }
      return second.compareTo(first);
    },
  );
  print(res.map((e) => e["res"]));
}








// void getFactors(int number) {
//   for (int i = 1; i <= number ~/ 2; i++) {
//     if (number % i == 0) {
//       print('$i is a factor to $number');
//     }
//   }
//   print('$number is a factor to $number');
// }

// main() {
//   getFactors(111111);
//   int? s = 5;
//   h() {
//     print("hello");
//     g() {
//       print("maherov");
//     }
//     return g;
//   }

//   h()();
//   ClassName().get();
//   var p = Maher().pro(true);
//   print(shit.p);
//   print(Color.black.value);
//   print(Color.black.width);
//   //function("hello", "ahmed", 5);
//   print(p);
//   List<List> list = [
//     ["name", "r1", "r2"],
//     ["nthre", 50, 60],
//     ["3mle", 20, 15]
//   ];
//   //print(list);
//   for (var i = 0; i < list[0].length; i++) {
//     //  print("${list[0][i]} : ${list[1][i]} - ${list[2][i]}");
//   }

//   print("Enter your birth year please : ");
//   int year;
//   while (true) {
//     try {
//       year = int.parse(
//         stdin.readLineSync().toString(),
//       );
//       break;
//     } on Exception {
//       print("invalid number try again");
//     }
//   }
//   print("your age is ${DateTime.now().year - year}");
// }

// void function(text, [String name = "maher", int age = 20]) {
//   /*
//   author is Maherov
//    */
//   print("$text , $name , $age");
// }

// mixin s {
//   inf() {
//     print("object1");
//   }
// }

// mixin d {
//   inf() {
//     print("object2");
//   }
// }

// class Maher<T> with d, s {
//   @override
//   inf() {
//     print("hi");
//   }

//   T? pro(T l) {
//     T? x = l;
//     return x;
//   }

//   void setter(k) {
//     print("done");
//   }
// }

// enum Color {
//   red("red color is here", 50),
//   black("black color is here", 100);

//   const Color(this._value, this._width);
//   final String _value;
//   final int _width;
//   int get width => _width;
//   String get value => _value;
// }

// abstract class Me {
//   out() {
//     print("object");
//   }
// }

// class ClassName<T> extends Me with d, s {
//   get() {
//     return super.out();
//   }
// }
