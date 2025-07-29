

extension FlatMap on Map {
  List<T> flatMap<T>() {
    return List<T>.from(values.expand((e) => e));
  }
}