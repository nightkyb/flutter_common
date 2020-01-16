// Created by nightkyb at 2020/1/16 10:46

/// Represents a generic pair of two values.
///
/// There is no meaning attached to values in this class, it can be used for any purpose.
/// Pair exhibits value semantics, i.e. two pairs are equal if both components are equal.
class Pair<A, B> {
  Pair(
    this.first,
    this.second,
  );

  final A first;
  final B second;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pair &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second;

  @override
  int get hashCode => first.hashCode ^ second.hashCode;

  /// Returns string representation of the [Pair] including its [first] and [second] values.
  @override
  String toString() => '($first, $second)';
}

extension AExt<A, B> on A {
  /// Creates a tuple of type [Pair] from this and [that].
  Pair<A, B> pairWith(B that) => Pair(this, that);

// TODO: 2020/1/16 Dart不支持自定义操作符
// Pair<A, B> operator to(B that) => Pair(this, that);
}

extension PairExt<T> on Pair<T, T> {
  /// Converts this pair into a list.
  List<T> toList() => [this.first, this.second];
}

/// Represents a triad of values.
///
/// There is no meaning attached to values in this class, it can be used for any purpose.
/// Triple exhibits value semantics, i.e. two triples are equal if all three components are equal.
class Triple<A, B, C> {
  Triple(
    this.first,
    this.second,
    this.third,
  );

  final A first;
  final B second;
  final C third;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Triple &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second &&
          third == other.third;

  @override
  int get hashCode => first.hashCode ^ second.hashCode ^ third.hashCode;

  /// Returns string representation of the [Triple] including its [first], [second] and [third] values.
  @override
  String toString() => '($first, $second, $third)';
}

extension TripleExt<T> on Triple<T, T, T> {
  /// Converts this triple into a list.
  List<T> toList() => [this.first, this.second, this.third];
}
