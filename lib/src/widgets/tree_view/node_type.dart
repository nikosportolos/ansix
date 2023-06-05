/// **TreeNodeType**
///
/// Enumeration of the possible data types for each element of the tree.
enum TreeNodeType {
  primary,
  map,
  iterable,
  object;

  static TreeNodeType getType(final dynamic object) {
    if (object == null || //
        object is String ||
        object is bool ||
        object is num ||
        object is double ||
        object is int) {
      return TreeNodeType.primary;
    }

    if (object is Map) {
      return TreeNodeType.map;
    }

    if (object is Iterable) {
      return TreeNodeType.iterable;
    }

    return TreeNodeType.object;
  }
}
