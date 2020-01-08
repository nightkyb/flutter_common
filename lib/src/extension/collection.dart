/// Created by nightkyb at 2019/12/15 0:12
extension ListExt<T> on List<T> {
  /// Returns true if this list is null or empty.
  bool get isNullOrEmpty => this == null || this.isEmpty;
}

extension MapExt<K, V> on Map<K, V> {
  /// Returns true if this map is null or empty.
  bool get isNullOrEmpty => this == null || this.isEmpty;
}
