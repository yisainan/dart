class Spacecraft {
  String name;
  DateTime launchDate;

  // 构造函数，使用语法糖设置成员变量。
  Spacecraft(this.name, this.launchDate) {
    // 这里编写初始化代码。
  }

  // 命名构造函数，最终调用默认构造函数。
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear => launchDate?.year; // read-only non-final 属性

  // 方法。
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}
