extension FlatMap on Map {
  List<T> flatMap<T>() => List<T>.from(values.expand((e) => e));
}
