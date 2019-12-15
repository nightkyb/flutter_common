/// Created by nightkyb at 2019/12/15 0:12
extension on List {
  /// Returns true if this list is null or empty.
  bool get isNullOrEmpty => this == null || this.isEmpty;
}

extension on Map {
  /// Returns true if this map is null or empty.
  bool get isNullOrEmpty => this == null || this.isEmpty;
}
